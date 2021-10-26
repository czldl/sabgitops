mkdir target
cd source
javac addressbook/*.java -d ../target/
cd ..
cd target
jar cfe ../sabgitops.jar addressbook.AddressBookApplication addressbook/*.class
cd ..
keytool -genkey -alias mykey -keystore mykeystore.store -keypass mykeypass -storepass mystorepass  -validity 365  -dname "CN=liudongliang, OU=chzu, L=xxxy, S=chuzhou, O=anhui, C=CH"
keytool -export -keystore mykeystore.store -alias mykey -validity 365 -file mykeystore.cert -storepass mystorepass
jarsigner -keystore myKeystore.store sabgitops.jar mykey -storepass mystorepass -keypass mykeypass
echo keystore "file:myKeystore.store","JKS"; grant signedBy "mykey" { permission java.io.FilePermission"<<ALL FILES>>","read";};>myKeystore.policy
rd /S/Q target
java -jar sabgitops.jar
echo ok
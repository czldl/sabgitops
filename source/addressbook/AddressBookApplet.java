/*
 * AddressBookApplet.java
 *
 * Applet version of address book application
 *
 * Copyright (c) 2001, 2003, 2005, 2011 - Russell C. Bjork
 *
 */

package addressbook;

import javax.swing.JApplet;

/** Applet version of address book application
 */
public class AddressBookApplet extends JApplet
{
    /** Initialization for the applet
     */    
    public void init()
    {
        FileSystem fileSystem = new FileSystem();
        AddressBookController controller = new AddressBookController(fileSystem);
    }
}
// <applet code=addressbook.AddressBookApplet.class width=100 height=200></applet>
    

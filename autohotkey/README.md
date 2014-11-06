Distance for Windows AutoHotkey Scripts
=======================================

[AutoHotkey](http://www.autohotkey.com) is an open source scripting tool for automating Windows 
applications. For an introduction see the AutoHotkey [tutorial](http://www.autohotkey.com/docs/Tutorial.htm).

The scripts in this directory were executed using AutoHotkey 1.1.16.05.

To run:

* Check the path in the script points to your Distance.exe.
* If testing Distance.exe in a Distance for Windows installation (and not one built directly by Distance.vbp) 
then comment out the `Send {Enter}` in the lines:

    ; Accept Warning - comment this out if using a Distance installation
    Send {Enter}

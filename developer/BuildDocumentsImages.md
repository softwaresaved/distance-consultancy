How to build documents and images
=================================

Find out tool versions
----------------------

Axialis IconWorkshop:

* Select Help => About Axialis IconWorkshop
* Version 6.70

ComponentOne Doc-To-Help:

* Select Help => About ComponentOne Doc-To-Help...
* ComponentOne Doc-To-Help Enterprise 2006.3
* Version 2006.3.0.313

Microsoft Word

* Select Help => About Microsoft Office Word
* 2003 SP3

Microsoft PowerPoint

* Select Help => About Microsoft Office Powerpoint
* 2003 SP3

Microsoft PhotoDraw:

* Select Help => About Microsoft PhotoDraw...
* Version 1.0

Edit text files
---------------

Text files used in Distance include:

* %BASE%\Interface\Help - rtf files for built-in help, information and text
  - This includes Authors.rtf and Sponsors.rtf
* %BASE%Extras\External Documentation\ReadMe\
  - This includes the ReadMe.rtf for each release

Edit text files with WordPad, not Microsoft Word - Word adds extra characters that can mess up the formatting of the files.

To edit a file in WordPad:

* Right-click file name
* Select Open With => WordPad

Edit Distance icon
------------------

* Open icon, ico, file in Axialis IconWorkshop:
  - Double-click %BASE%Extras\Graphics\Icons\DistanceProject2.ico
* Create new file:
  - Select File => Save As...
  - Browse to %BASE%Extras\Graphics\Icons\
  - Enter file name e.g. DISTANCE_ICON_FILE.ico

Copy Distance icon for use in Visual Basic and release
------------------------------------------------------

Copy %BASE%Extras\Graphics\Icons\DISTANCE_ICON_FILE.ico (for example %BASE%Extras\Graphics\Icons\DistanceProject2.ico) to %BASE%\Interface\Main\Graphics - Misc and General\DistanceProject.ico

Create splash screen for new version
------------------------------------

* Open Microsoft Image Composer, mix, file, in Microsoft PhotoDraw:
  - Double-click %BASE%Extras\Graphics\Splash\D62release.mix
* Create new file:
  - Select File => Save As...
  - Browse to %BASE%Extras\Graphics\Splash\
  - For release, enter file name: DMNreleaseR.mix
  - For beta, enter file name: DMNbetaR.mix
  - M is the major version number, N is the minor version number, R an (optional) release number.
  - Click Save
* Update version number:
  - Click 'version 6.2' in image
  - Edit text in box on right-hand side e.g. 'version M.N'
* Update release number:
  - Click 'release 1' in image
  - Edit text in box on right-hand side e.g. 'release R' or 'BETA R'
* Save mix file:
  - Select File => Save
* Save mix file as a jpg:
  - Select File => Save As...
  - Select Save as type: JPEG File Interchange Format
  - Browse to %BASE%Extras\Graphics\Splash\
  - Click Save to save image with name as mix file but with jpg extension

Copy splash screen for use in Visual Basic and release
------------------------------------------------------

Copy %BASE%Extras\Graphics\Splash\DMNbetaR.jpg or %BASE%Extras\Graphics\Splash\DMNreleaseR.jpg to %BASE%\Interface\Help\DistanceLogo.jpg, where M is the major version number, N is the minor version number, R an (optional) release number.

Update user guide version number
--------------------------------

* Open Doc-To-Help, d2h, file, in ComponentOne Doc-To-Help:
  - Double-click %BASE%Extras\External Documentation\Documents\distance.d2h
* Update Distance version number:
  - In properties on left-hand side, click Help Targets
  - Click Name: distance Manual
  - For release, select Property: Title and update Value: Distance M.N Release R
  - For beta, select Property: Title and update Value: Distance M.N Beta R
  - M is the major version number, N is the minor version number, R an (optional) release number.

Build HTML Help
---------------

* Open Doc-To-Help, d2h, file, in ComponentOne Doc-To-Help:
  - Double-click %BASE%Extras\External Documentation\Documents\distance.d2h
* Build HTML Help:
  - In menu-bar drop-down build targets list, select distance HTML Help
  - Select Build => Make Target OR Press F5
  - To rebuild everything, select Build => Rebuild Target
* Check:
  - Double-click %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.chm

Copy HTML Help for use in Visual Basic and release
--------------------------------------------------

* Copy compiled HTML help:
  - Copy %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.chm to %BASE%\Utilities\Help\
* Copy Visual Basic macro file for use in Visual Basic components:
  - This contains a list of constants giving shortcuts to the help pages and is used to provide context-sensitive help.
  - Copy %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.bas to %BASE%\Utilities\Help\

Build HTML Help from command prompt
-----------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into HTML Help directory:

<p/>

    chdir %BASE%Extras\External Documentation\Documents

* Build HTML Help:

<p/>

    "C:\Program Files\ComponentOne\DocToHelp\C1D2HBatch.exe" -build distance.d2h "distance HTML Help"

* Check:
  - Double-click %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.chm

Update title slide with splash screen
-------------------------------------

* Start Microsoft PowerPoint:
  - Double-click %BASE%Extras\External Documentation\Images\TitlePage\TitlePage.ppt
* Insert splash screen:
  - Select Insert => Picture => From File...
  - Double-click %BASE%Extras\Graphics\Splash\DMNreleaseR.jpg or %BASE%Extras\Graphics\Splash\DMNbetaR, where M is the major version number, N is the minor version number, R an (optional) release number.
  - Replace current splash screen image in slide with newly-inserted one
* Save title slide:
  - Click CTRL-S

Build title page image
----------------------

* Start Microsoft PowerPoint:
  - Double-click %BASE%Extras\External Documentation\Images\TitlePage\TitlePage.ppt
* Save as Windows Metafile, wmf:
  - Select File => Save As...
  - Select Save as type: Windows Metafile (*.wmf)
  - Browse to %BASE%Extras\External Documentation\Images\TitlePage\
  - Click Save
  - If asked 'Do you want to export every slide in the presentation or only the current slide?' click Current Slide Only

Build user guide
----------------

* Open Doc-To-Help, d2h, file, in ComponentOne Doc-To-Help:
  - Double-click %BASE%Extras\External Documentation\Documents\distance.d2h
* Build Microsoft Word document:
  - In menu-bar drop-down build targets list, select distance Manual
  - Select Build => Make Target OR Press F5
  - To rebuild everything, select Build => Rebuild Target
* Check:
  - Double-click %BASE%Extras\External Documentation\Documents\Manual\distance-master.doc

Build user guide from command prompt
------------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into HTML Help directory:

<p/>

    chdir %BASE%Extras\External Documentation\Documents

* Build HTML help:

<p/>

    "C:\Program Files\ComponentOne\DocToHelp\C1D2HBatch.exe" -build distance.d2h "distance Manual"

* Check:
  - Double-click %BASE%Extras\External Documentation\Documents\Manual\distance-master.doc

Add title page image to user guide
----------------------------------

* Start Microsoft Word:
  - Double-click %BASE%Extras\External Documentation\Documents\Manual\distance-master.doc
* Insert title page image:
  - Select Insert => Picture => From File...
  - Double-click %BASE%Extras\External Documentation\Images\TitlePage\TitlePage.wmf
* Resize image so it is the same width as the black-bordered place-holder on the front-page
* Select the image and press CTRL-X (cut)
* Select the place-holder and press CTRL-V (paste)
* Save the document
  - Click CTRL-S

Build user guide PDF
--------------------

* Start Microsoft Word:
  - Double-click %BASE%Extras\External Documentation\Documents\Manual\distance-master.doc
* Check conversion settings:
  - Select Adobe PDF => Change Conversion Settings
  - Check Conversion Settings: Standard
  - Click OK
* Create PDF:
  - Select Adobe PDF => Convert to PDF
  - Browse to %BASE%Extras\External Documentation\Documents\Manual\
  - Click Save
  - If asked 'Do you want PDFMaker to turn off tagging for this document?',
click No
  - This can take a long time!
* Check:
  - Double-click %BASE%Extras\External Documentation\Documents\Manual\document-master.pdf
  - If the images do not look OK then try again with a higher-quality conversion setting

Build user guide PDF from command prompt
----------------------------------------

**Note that using this approach results in non-hyperlinked cross-references.**

This assumes that:

* Adobe PDF is the default printer
* Adobe PDF will not prompt for a file name or display the PDF. To configure this:
  - Select Start => Printers and Faxes
  - Right-click Adobe PDF => Preferences
  - Click  Printing Preferences...
  - Select Adobe PDF Output Folder: My Documents\*.pdf
  - Uncheck View Adobe PDF results
  - Click OK

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into Manual directory:

<p/>

    chdir %BASE%Extras\External Documentation\Documents\Manual\

* Run:

<p/>

    start /WAIT "" "C:\Program Files (x86)\Microsoft Office\Office11\winword.exe" distance-master.doc /q /n /mFilePrintDefault /mFileSave /mFileExit 

* Copy file:

<p/>

    copy "%userprofile%\My Documents" %BASE%Extras\External Documentation\Documents\Manual\distance-master.pdf

* Check:
  - Double-click %BASE%Extras\External Documentation\Documents\Manual\distance-master.pdf

Copy user guide PDF for use in Visual Basic and release
-------------------------------------------------------

Copy %BASE%Extras\External Documentation\Documents\Manual\distance-master.pdf to %BASE%\Utilities\Help\distance.pdf

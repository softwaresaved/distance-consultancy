Building Distance Components
============================

How to find out versions of tools
=================================

Microsoft Visual Basic:

* Help => About Microsoft Visual Basic...
* Microsoft Visual Basic 6.0 (SP6) For 32-bit Windows Development

Compaq Visual Fortran:

* Compaq Visual Fortran runs alongside Microsoft Visual C++ under Microsoft Developer Studio
* Select Help => About Developer Studio
* Visual C++ 6.0
* Compaq Visual Fortran Professional Edition 6.6.c

R:

* Run:

<p/>

    R --version

* R version 3.1.0 (2014-04-10) -- "Spring Dance"

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

Axialis IconWorkshop:

* Select Help => About Axialis IconWorkshop
* Version 6.70

FORTRAN components
==================

How to build MCDS analysis engine
---------------------------------

* Open MCDS project in Compaq Visual Fortran:
  - Browse to %BASE%\Analysis Engines\CDS\Engine\Engine\
  - Double-click MCDS.DSW
  - Compaq Visual Fortran runs alongside Microsoft Visual C++ under Microsoft Developer Studio.
* Build MCDS.exe:
  - Select Build => Build MCDS.exe OR Press F7
  - To rebuild everything, select Build => Rebuild All

Where to copy MCDS.exe for use by other Distance components
-----------------------------------------------------------

* Copy exe file:

<p/>

    copy %BASE%\Analysis Engines\CDS\Engine\DEBUG\MCDS.exe %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\

How to create a MCDS analysis engine NMake file
-----------------------------------------------

* Open MCDS project in Compaq Visual Fortran:
  - Browse to %BASE%\Analysis Engines\CDS\Engine\Engine\
  - Double-click MCDS.DSW
* Export NMake file
  - Select Project => Export Makefile

How to build MCDS analysis engine using NMake file from the command prompt
--------------------------------------------------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into MCDS analysis engine directory:

<p/>

    chdir %BASE%\Analysis Engines\CDS\Engine\Engine\

* Set Visual Fortran environment variables:

<p/>

    "C:\Program Files\Microsoft Visual Studio\DF98\BIN\DFVARS.BAT"

* Build MCDS.exe using NMake:

<p/>

    nmake /f MCDS.MAK cfg="MCDS - Win32 Debug"

R components
============

How to build R DSM and MRDS analysis engines
--------------------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into R package directory:

<p/>

    chdir %BASE%\Analysis Engines\DSM\Engine\
    chdir %BASE%\Analysis Engines\MRDS\Engine\mrds\

* Check package:

<p/>
    R CMD check dsm
    R CMD check mrds

* Check package for CRAN compliance:

<p/>

    R CMD check --as-cran dsm
    R CMD check --as-cran mrds

* EITHER install source package and build zip (--build) from source:

<p/>

    R CMD INSTALL --build dsm
    R CMD INSTALL --build mrds

* OR, via tar.gz:
  - Build package tar.gz:

<p/>

    R CMD build dsm
    R CMD build mrds

   - Install source package and build zip (--build) from package:

<p/>

    R CMD INSTALL --build dsm_X.Y.Z.tar.gz
    R CMD INSTALL --build mrds_X.Y.Z.tar.gz

Where to copy R packages for use by other Distance components
-------------------------------------------------------------

Copy zip files:

<p/>

    copy %BASE%\Analysis Engines\DSM\Engine\dsm_X.Y.Z.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\
    copy %BASE%\Analysis Engines\MRDS\Engine\mrds\mrds_X.Y.Z.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\

TODO
----

* How to resolve?

<p/>

    R CMD check dsm

      checking package dependencies ... ERROR
    Packages suggested but not available: 'maptools' 'Distance'

* Should --compile-both be used, to compile for both 32- and 64-bit?
* Is Rcmd.exe still needed?
  - http://stackoverflow.com/questions/3412911/r-exe-rcmd-exe-rscript-exe-and-rterm-exe-whats-the-difference
  - Rcmd.exe is a historical left-over as back in the day, you could not do R CMD something on Windows but needed the special executable Rcmd.exe something. That is no longer the case, yet it is provided for backwards compatibility.
  - R CMD BATCH is a clutch that was needed in the days before littler and Rscript.exe, and similarly lingering from old docs and habits..
* When running INSTALL the output includes:

<p/>

    installing to library 'C:/Program Files/R/R-3.1.0/library'
    installing *source* package 'dsm' ...

  - Is there a way to avoid this? 
* Is the copy needed for release only or for day-to-day development of the associated VB components?
* What about 'how to download and make the R package.txt' which differs a lot?
* Can build be done via a batch script, including the copy of .zip? Yes

Documents and images
====================

How to edit text files
----------------------

Text files used in Distance include:

* %BASE%\Interface\Help - rtf files for built-in help, information and text
  - This includes Authors.rtf and Sponsors.rtf
* %BASE%Extras\External Documentation\ReadMe
  - This includes the ReadMe for each release

Edit text files with WordPad, not Microsoft Word - Word adds extra characters that can mess up the formatting of the files.

To edit a file in WordPad:

* Right-click file name
* Select Open With => WordPad

How to edit icons
-----------------

* Open icon, ico, file in Axialis IconWorkshop:
  - Browse to %BASE%Extras\Graphics\Icons\
  - Double-click .ico file

How to edit splash screen
-------------------------

* Open Microsoft Image Composer, mix, file, in Microsoft PhotoDraw:
  - Browse to %BASE%Extras\Graphics\Splash\
  - Double-click D62release.mix
* Create new file:
  - Select File => Save As...
  - Browse to %BASE%Extras\Graphics\Splash\
  - Enter file name: DXYZ.mix where X is the major release number, Y the minor release number and Z is either release or beta
  - Click Save
* Update version number:
  - Click 'version 6.2' in image
  - Edit text in box on right-hand side e.g. 'version X.Y'
* Update release number:
  - Click 'release 1' in image
  - Edit text in box on right-hand side e.g. 'release Z' or 'BETA Z'
* Save mix file:
  - Select File => Save
* Save mix file as a jpg:
  - Select File => Save As...
  - Select Save as type: JPEG File Interchange Format
  - Browse to %BASE%Extras\Graphics\Splash\
  - Click Save

TODO
----

* Naming convention for .mix and .jpg 
  - DXYZ
  - X = major version number - 6, 7, ...
  - Y = minor version number - 1, 2, ...
  - Z = release or beta
  - What about if there was a 6.3 release 2? or 6.4 beta 3?

How to update version number in user's guide
--------------------------------------------

* Open Doc-To-Help, d2h, file, in ComponentOne Doc-To-Help:
  - Browse to %BASE%Extras\External Documentation\Documents\
  - Double-click distance.d2h
* Update Distance version number:
  - In properties on left-hand side, click Help Targets
  - Click Name: distance Manual
  - Check Property: Title has Value: Distance 6.2 Release 1

How to build HTML Help
----------------------

* Open Doc-To-Help, d2h, file, in ComponentOne Doc-To-Help:
  - Browse to %BASE%Extras\External Documentation\Documents\
  - Double-click distance.d2h
* Build HTML Help:
  - In menu-bar drop-down build targets list, select distance HTML Help
  - Select Build => Make Target OR Press F5
  - To rebuild everything, select Build => Rebuild Target

Where to copy HTML Help for use by other Distance components
------------------------------------------------------------

* Copy compiled HTML help distance.chm:

<p/>

    copy %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.chm %BASE%\Utilities\Help\

* Copy Visual Basic macro file distance.bas for use by other Distance components:
  - This contains a list of constants giving shortcuts to the help pages and is used to provide context-sensitive help.

<p/>

    copy %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.bas %BASE%\Utilities\Help\

TODO
----

* "If you're going to be releasing a new version of Distance, it's also worth coping the distance.bas VB macro file into the \Utilities\Help directory. Ater you've done this, you'll need to replace all the Const in this with Public Const, and then recompile all the VB code. You only need to do all this if you've created any new pages of help, etc."
  - distance.bas already has Public Const e.g.

<p/>

Public Const IDH_workingwithdatafiltersandmodeldefinitions = 356 ' &H164

  - What VB do I compile? _All_ the projects? 

How to build HTML Help from the command prompt
----------------------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into HTML Help directory:

<p/>

    chdir %BASE%Extras\External Documentation\Documents

* Build HTML help:

    "C:\Program Files\ComponentOne\DocToHelp\C1D2HBatch.exe" -build distance.d2h "distance HTML Help"

How to update title slide with splash screen
--------------------------------------------

* Start Microsoft PowerPoint:
  - Browse to %BASE%Extras\External Documentation\Images\TitlePage\
  - Double-click TitlePage.ppt
* Insert splash screen:
  - Select Insert => Picture => From File...
  - Browse to %BASE%Extras\Graphics\Splash\
  - Double-click DXYZ.jpg where X is the major release number, Y the minor release number and Z is either release or beta
  - Replace current splash screen image in slide with newly-inserted one
* Save title slide:
  - Click CTRL-S

How to create title slide Windows Metafile
------------------------------------------

* Start Microsoft PowerPoint:
  - Browse to %BASE%Extras\External Documentation\Images\TitlePage\
  - Double-click TitlePage.ppt
* Save as Windows Metafile, wmf:
  - Select File => Save As...
  - Select Save as type: Windows Metafile (*.wmf)
  - Browse to %BASE%Extras\External Documentation\Images\TitlePage\
  - Click Save
  - If asked 'Do you want to export every slide in the presentation or only the current slide?' click Current Slide Only

How to create single Microsoft Word user's guide
------------------------------------------------

* Open Doc-To-Help, d2h, file, in ComponentOne Doc-To-Help:
  - Browse to %BASE%Extras\External Documentation\Documents\
  - Double-click distance.d2h
* Build Microsoft Word document:
  - In menu-bar drop-down build targets list, select distance Manual
  - Select Build => Make Target OR Press F5
  - To rebuild everything, select Build => Rebuild Target

How to create single Microsoft Word user's guide from the command prompt
------------------------------------------------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into HTML Help directory:

<p/>

    chdir %BASE%Extras\External Documentation\Documents

* Build HTML help:

    "C:\Program Files\ComponentOne\DocToHelp\C1D2HBatch.exe" -build distance.d2h "distance Manual"

How to update the title page of the Microsoft Word user's guide
------------------------------------------------------------------

* Start Microsoft Word:
  - Browse to %BASE%Extras\External Documentation\Documents\Manual\
  - Double-click distance-master.doc
* Insert title page image:
  - Select Insert => Picture => From File...
  - Browse to %BASE%Extras\External Documentation\Images\TitlePage\
  - Double-click TitlePage.wmf
* Resize image so it is the same width as the black-bordered place-holder on the front-page
* Select the image and press CTRL-X (cut)
* Select the place-holder and press CTRL-V (paste)
* Save the document
  - Click CTRL-S

How to build user's guide PDF
-----------------------------

* Start Microsoft Word:
  - Browse to %BASE%Extras\External Documentation\Documents\Manual\
  - Double-click distance-master.doc
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
  - Browse to %BASE%Extras\External Documentation\Documents\Manual\
  - Double-click document-master.pdf
  - If the images do not look OK then try again with a higher-quality conversion setting

How to build user's guide PDF from the command prompt
-----------------------------------------------------

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

    chdir %BASE%Extras\External Documentation\Documents\Manual

* Run:

    start /WAIT "" "C:\Program Files (x86)\Microsoft Office\Office11\winword.exe" distance-master.doc /q /n /mFilePrintDefault /mFileSave /mFileExit 

/q - no splash screen
/n - no new default document

* Copy PDF:

<p/>

    copy "%userprofile%\My Documents" %BASE%Extras\External Documentation\Documents\distance-master.pdf

**Note that using this means cross-references are not hyperlinked.**

Where to copy user's guide PDF for use by other Distance components
-------------------------------------------------------------------

* Copy PDF:

<p/>

    copy %BASE%Extras\External Documentation\Documents\distance-master.pdf %BASE%\Utilities\Help\distance.pdf

Visual Basic components
=======================

To build a VB project requires all its pre-requisite projects to have been built. See:

* [Visual Basic Project Dependencies](./DependenciesReference.md)
* [Visual Basic projects list](../vmscripts/vbprojectlist.txt) - an ordered project list that respects the dependencies.

How to view a Visual Basic project's dependencies
-------------------------------------------------

To see project dependencies within Visual Basic:

* To see dependencies:
  - Select Project => References...
  - All possible dependencies are shown (and more can be added with Browse...)
  - Project-specific dependencies are those that are checked

* To see component dependencies:
  - Select Project => Components...
  - All possible dependencies are shown (and more can be added with Browse...)
  - Project-specific dependencies are those that are checked
  - Beware! Any component dependencies that have not been built will not be shown checked - Visual Studio will warn you about these when the project is opened

To see project dependencies within a text editor:

* Right-click vbp file name
* Select Open With => Choose Program...
* Double-click WordPad
* Dependencies and component dependencies are listed as Reference and Object entries e.g for %BASE%\Map\Mapper\D6Map.vbp:

      Reference=*\G{...}#2.0#0#..\..\..\..\WINDOWS\system32\stdole2.tlb#OLE Automation
      Object={...}#1.0#0; Vsflex7d.ocx
      Object={...}#2.0#0; Actbar2.ocx
      Reference=*\G{...}#2.0#0#..\..\Database Engine\D6DbEng.dll#Distance 6 Database Engine
      Reference=*\G{...}#1.0#0#..\..\Utilities\D6Util.dll#Distance 6 Utilities - Shared enumerations, properties and methods
      Object={...}#2.0#0; SPLITTER.OCX
      Object={...}#2.0#0; mo20.ocx
      Object={...}#1.2#0; comdlg32.ocx
      Object={...}#1.0#0; LLine3.ocx
      Object={...}#2.0#0; mscomct2.ocx
      Object={...}#1.0#0; CSDesc3.ocx
      Object={...}#1.0#0; D6Legend.ocx

How to build a single Visual Basic project
------------------------------------------

To build a project within the VB GUI:

* Open project in Visuual Basic:
  - Browse to project folder under %BASE%\ e.g. Map\Legend\
  - Double-click vbp file e.g. D6Legend.vbp
* Build:
  - Select File => Make PROJECT e.g. Make D6Legend.ocx...

To build a project from a command prompt:

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into %BASE%:

<p/>

    chdir %BASE%\

* Build the project:

<p/>

    start /wait "VB6" "C:\program files\microsoft visual studio\vb98\vb6.exe" /make "C:\Application Development\Distance60\PROJECT.vbp"

  - For example:

<p/>

    start /wait "VB6" "C:\program files\microsoft visual studio\vb98\vb6.exe" /make "C:\Application Development\Distance60\Map\Legend\D6Legend.vbp

How to build all Visual Basic projects
--------------------------------------

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into %BASE%\vmscripts

<p/>

    chdir %BASE%

* Run the build script:

    build_vb_projects.bat

How to remove all Visual Basic binaries
---------------------------------------

To remove all ocx, dll and exe files for a complete rebuild:

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into %BASE%\vmscripts

<p/>

    chdir %BASE%

* Run the delete script:

    delete_vb_binaries.bat

How to set DLL base address
---------------------------

The default DLL base address is &H1100000. This will cause lots of memory re-allocation. Components will load faster if a random number between this and &H80000000 is chosen. It is recommended that you choose:

* A 64K boundary (i.e. the rightmost four digits of the address are 0000) is chosen.
* Ensure an even spread of components out across the addresses.

To set the DLL base address:

* Open project in Visual Basic:
  - Browse to project folder under %BASE%\ e.g. Map\Legend\
  - Double-click vbp file e.g. D6Legend.vbp
* Select Project => PROJECT Properties... e.g. D6Legend Properties...
* Click Version tab

[DLL Base Addresses](./DLLAddressReference.md) provides a list of addresses used to date. If you add a new component or change an address, remember to update this list.

How to update binary meta-data
------------------------------

* Open project in Visual Basic:
  - Browse to project folder under %BASE%\ e.g. Map\Legend\
  - Double-click vbp file e.g. D6Legend.vbp
* Select Project => PROJECT Properties... e.g. D6Legend Properties...

To update project name and description:

* Click General tab
* Enter Project Name: e.g. D6Legend
* Enter Project Description: e.g. Distance 6 Mapper Legend control

To update application name, used in Task Manager, and icon (for exe files):

* Click Make tab
* Enter Application, Title: e.g. Distance 6.2
* Select Application, Icon

To update version number:

* Click Make tab
* Enter Version Number, Major: e.g. 6
* Enter Version Number, Minor: e.g. 0
* Version Number, Revision is automatically incremented if Auto Increment is checked

To update ownership, copyright etc:

* Click Make tab
* Select Type: and enter Value: to set specific values e.g.
  - Company Name: Research Unit for Wildlife Population Assessment, University of St Andrews
  - File Description: Distance 6.2 Executable
  - Legal Copyright: Copyright © 1998-2013 RUWPA
  - Product name: Distance 6.2

How to see version compatibility
--------------------------------

Visual Basic's compatibility mode allows for checks to be done to ensure that libraries or components do not change their interfaces in a way that can break compatibility with older versions.

For Distance, original versions of dll and ocx files are stored within %BASE%\Compatibility folder stores all the original versions

To see the original version of a binary that is used by a project:

* Open project in Visual Basic:
  - Browse to project folder under %BASE%\ e.g. Map\Legend\
  - Double-click vbp file e.g. D6Legend.vbp
* Select Project => PROJECT Properties... e.g. D6Legend Properties...
* Click Component tab
* If Version Compatibility, Project Compatibility is enabled for the project then there will be an associated link e.g. ..\..\Compatibility\D6Legend.ocx

TODO clarify
------------

* 'The batch file %BASE%BuildAll registers the VB Projects that don't have dependencies and then builds the VB Projects that do have dependencies. So, on a new machine, with all the right software in place, it should be possible just to run this one batch file and then be able to run Distance.exe.
  - There is no such file now.
* What is Distance.vbg for? Is it needed? All it does is:

<p/>

    BGROUP 5.0
    StartupProject=Interface\Distance.vbp

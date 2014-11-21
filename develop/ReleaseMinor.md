---
layout: page
root: ..
title: How to release a minor version of Distance for Windows
---

This section describes the process of making a setup package (or installer) for a new minor version of Distance (e.g. moving from 6.2 to 6.3) using the Wise InstallBuilder.

In what follows:

* M.NreleaseR denotes Distance for Windows M.N release R
* M.NbetaR denotes Distance for Windows M.N beta release R
* M - Major version number
* N - Minor version number
* R - Revision number

---

## Prepare components

### Prepare non-code components

Check database:

* Ask yourself if there's any reason why %BASE%\DatabaseEngine\DistIni.mdb might be out of date

Update authors and sponsors:

* Update authors in %BASE%\Interface\Help\Authors.rtf
* Update sponsors in %BASE%\Interface\Help\Sponsors.rtf
* Use WordPad, not Microsoft Word

Update known and resolved problems:

* Move fixed problems, which are greyed-out:
  - From: %BASE%Extras\Internal documents\Worklist\KnownProblems7.doc
  - To: %BASE%Extras\Internal documents\Worklist\ResolvedProblems1.doc
* Use WordPad, not Microsoft Word

Create ReadMe:

* Create ReadMe in %BASE%Extras\External Documentation\Readme\:
  - For release, create: DMNreleaseR.rtf
  - For beta, create: DMNbetaR.rtf
  - Use WordPad, not Microsoft Word
* Copy in contents of:
  - %BASE%Extras\Internal documents\Worklist\KnownProblems7.doc
  - %BASE%Extras\Internal documents\Worklist\ResolvedProblems1.doc
* Update version number, copyright year and date
* Copy ReadMe to %BASE%Extras\Setup\ReadMe.rtf

Copy Distance icon:

* [Copy Distance icon for use in Visual Basic and release](./BuildDocumentsImages.html#copy-distance-icon-for-use-in-visual-basic-and-release)

Create splash screen:

* [Create splash screen for new version](./BuildDocumentsImages.html#create-splash-screen-for-new-version)
* [Copy splash screen for use in Visual Basic and release](./BuildDocumentsImages.html#copy-splash-screen-for-use-in-visual-basic-and-release)

Update user's guide:

* Update all documents in %BASE%Extras\External Documentation\Documents
  - Update version number, copyright year and date
  - Update with contents of ReadMe
* [Update user guide version number](./BuildDocumentsImages.html#update-user-guide-version-number)

Build HTML Help and user guide:

* [Build HTML Help](./BuildDocumentsImages.html#build-html-help)
* [Copy HTML Help for use in Visual Basic and release](./BuildDocumentsImages.html#copy-html-help-for-use-in-visual-basic-and-release)
* [Update title slide with splash screen](./BuildDocumentsImages.html#update-title-slide-with-splash-screen)
* [Build title page image](./BuildDocumentsImages.html#build-title-page-image)
* [Build user guide](./BuildDocumentsImages.html#build-user-guide)
* [Add title page to user guide](./BuildDocumentsImages.html#add-title-page-image-to-user-guide)
* [Build user guide PDF](./BuildDocumentsImages.html#build-user-guide-pdf)
* [Copy use guide PDF for use in Visual Basic and release](./BuildDocumentsImages.html#copy-user-guide-pdf-for-use-in-visual-basic-and-release)

### Prepare code components

Build Fortran components:

* [Build MCDS analysis engine](./BuildFortran.html#build-mcds-analysis-engine)
* [Copy MCDS.exe for use in Visual Basic and release](./BuildFortran.html#copy-mcdsexe-for-use-in-visual-basic-and-release)

Build R components:

* [Build R DSM and MRDS analysis engines](./BuildR.html#build-r-dsm-and-mrds-analysis-engines)
* [Copy R packages for use in Visual Basic and release](./BuildR.html#copy-r-packages-for-use-in-visual-basic-and-release)
* Check that %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages:
  - Contains all the dependencies needed.
  - Does not contain multiple versions of any library.

Build Visual Basic components:

* [Build all Visual Basic projects](./BuildVisualBasic.html#build-all-visual-basic-projects)
* Update %BASE%\Database Engine\D6DbEng.vbp, ProjectSettings class with current version number. For example:
 
<p/>

    Private Const mstrDISTANCE_LOCAL_APP_FOLDER2 = "Distance 6.2"

* Update %BASE%\Database Engine\D6DbEng.vbp, ProjectDatabase class OpenProjectDatabase method with code to handle current and previous versions of project files. For example:

<p/>

    Select Case strProjectVersion
        Case "6.2"
            'Nothing to do - that's the current version
        Case "6.1", "6.0"
        ....

* Update %BASE%\Database Engine\D6DbEng.vbp, CModGlobal module gblnIS_BETA variable, depending whether or not the release is a beta. For example:

<p/>

    'Set to true if this is a beta release
    Global Const gblnIS_BETA = False
* Update %BASE%\Database Engine\D6DbEng.vbp meta-data
  - Major and minor version numbers. These are accessed in-code (in %BASE%\Database Engine\Classes\ProjectDatabase.cls) and determine the version of new Distance project (.dst) files. If you don't up these then Distance will pop up an Upgrade Distance OLDM.OLDN Project File dialog when you try and create a new project
* Rebuild D6DBEng.vbp - see [Build single Visual Basic project](./BuildVisualBasid.html#build-single-visual-basic-project)
* Update %BASE%\Interface\Distance.vbp meta-data:
  - Major and minor version numbers. These are accessed in-code (in %BASE%\Interface\Project.cls) and are passed on to new projects
  - Application, Title - update the version name and number
  - Company Name - update the name if required
  - File Description - update the version name and number
  - Legal Copyright - update the current year
  - Product Name - update the version name and number
  - See [Update binary (dll, ocx, exe) meta-data](./BuildVisualBasic.html#update-binary-dll-ocx-exe-meta-data)
  - Rebuild Distance.vbp - see [Build single Visual Basic project](./BuildVisualBasid.html#build-single-visual-basic-project)
  - [View binary (dll, ocx, exe) meta-data](./BuildVisualBasic.html#view-binary-dll-ocx-exe-meta-data)) for Distance.exe
* Update meta-data of all other projects:
  - Optional
  - [Build all Visual Basic projects](./BuildVisualBasic.html#build-all-visual-basic-projects)

Check Distance (optional)

* Double-click %BASE%\Interface\Distance.exe
* Distance Internal Error - Distance.ModGlobal.RestoreSampleProjects appears
  - This is expected
  - Click OK
* Follow the Distance M.N checks listed below under [Check setup package](#check-setup-package)
* Note that the following operations will fail:
  - Select Help => Online Manuals => User's Guide (pdf)
  - Select Help => Release Notes

### Prepare projects

Update template and sample projects:

* Sample projects are in %BASE%Extras\Sample Projects Backup\Release\
* Template projects is in %BASE%Extras\Sample Projects Backup\Templates\
* Update project (.dst) files version:
  - Right-click .dst and select Open With => Choose Program...
  - Select Microsoft Access
  - Double-click Project Settings
  - Set General row, Setting value: M.N
* Check that the template and sample projects bundled with a release can be opened and browsed correctly within the newly-built distance.exe:
  - Sample projects are in %BASE%Extras\Sample Projects Backup\Release\
  - Template projects is in %BASE%Extras\Sample Projects Backup\Templates\
* If you want to create new analysis, take a local copy of the project first.
  - Do **not** create new analyses within the above projects! Even if you subsequently delete them, the internal analysis ID number will be incremented (all analyses etc are unique)

---

## Build Wise installer

* Open Wise installer script:
  - Double-click %BASE%Extras\Setup\D62Release1.wse
* Create new Wise installer script:
  - For release, enter Title: Distance M.N release R installation
  - For beta, enter Title: Distance M.N beta R installation
  - Select File => Save As...
  - Browse to %BASE%Extras\Setup
  - For release, enter File Name: DMNreleaseR.wse
  - For beta, enter File Name: DMNbetaR.wse
* Update installer script for Distance M.N:
  - Replace all occurrences of Distance 6.2 and replace with M.N
  - Double-click on each line
  - Find the value that states 6.2 and replace with M.N
  - Click OK
  - The occurrences are:

<p/>

    Set Variable APPTITLE to Distance 6.2
    Create Shortcut from %MAINDIR%\Distance.exe to %GROUP%\Distance 6.2.lnk
    Create Shortcut from %MAINDIR%\ReadMe.rtf to %GROUP%\Distance 6.2 ReadMe.lnk
    Create Shortcut from %MAINDIR%\Help\distance.chm to %GROUP%\Distance 6.2 Help.lnk
    Create Shortcut from %MAINDIR%\Help\distance.pdf to %GROUP%\Distance 6.2 User Guide.lnk
    Add Icon "Distance 6.2 Users Guide" to Program Manager Group "%GROUP%"

* Build setup program
  - Select File => Compile...
  - This creates, for example, DMNReleaseR.exe e.g. D62Release1.exe
* Create zip file:
  - Right-click in %BASE%Extras\Setup and select New WinZip File
  - Rename New Winzip File.zip to dMNsetup.zip e.g. d62setup.zip - all lower-case is better for downloading
  - Click ReadMe.rtf and drag into dMNsetup.zip
  - Click DMNReleaseR.exe and drag into dMNsetup.zip
  - A named exe, and not a generic setup.exe, is used because if there is a setup.exe in the folder already when the user installs, it will not be overwritten with the new exe and WinZip, below, will run the original exe.
* Create self-extracting zip file:
  - Right-click dMNsetup.zip and select WinZip => Create Self-Extractor (.exe)
  - WinZip Self-Extractor appears
  - Click Next
  - What kind of self-extracting Zip file appears
  - Select Self-extracting Zip file for Software Installation
  - Removable disks page appears
  - Click Next
  - Which Zip file page appears
  - Check Filename: dMNsetup.zip
  - Click Next
  - Enter message text page appears
  - Click Next
  - Unzip automatically page appears
  - Click Next
  - Command to issue when unzip operation completes page appears
  - Enter the name of the exe e.g. .\DMNReleaseR.exe
  - Click Next
  - Message for the Software Installation Dialog page appears
  - Click Use text from an existing file
  - Double-click SetupDialog.txt
  - Update version number
  - Click Next
  - Display your own "About" box message page appears
  - Click Use text from an existing file
  - Double-click SetupAbout.txt
  - Update version number, copyright year and date
  - Click Next
  - Display your own icon page appears
  - Click Browse...
  - Double-click setup.ico
  - Click Next
  - Ready to create page appears
  - Click Next
  - dMNsetup.exe should now build
  - Click Close

---

## Check setup package on a virtual machine

**Important!** Do not check the setup package on the machine you are using for development. This results in the Distance executable and support components being in two places on the computer, which may get confusing! Test it on a vanilla machine (see below) upon which Distance has not been installed to more accurately mimic a new user's experience.

Check the setup package using a VMWare virtual machine:

* Adobe Acrobat Reader, R and RStudio should be installed
* Distance for Windows and Distance's R components should never have been installed on it
 
Check install:

* On each page check it says Distance M.N release (or beta) R
* Double-click dMNsetup.exe
* WinZIP Self-Extractor page
  - Click About
* About page
  - Check it has correct copyright year
  - Click OK
* WinZIP Self-Extractor page
  - Click Setup
* Welcome page
  - Click Next
* ReadMe File page
  - Click I agree
* Choose Destination Location page
  - Click Next
* Backup Replaced Files page
  - Click Next
* Select Program Manager Group page
  - Click Next
* Start Installation page
  - Click Next
* Installing page
  - Click Next
* Install Windows Script page
  - Windows Script pages appear for Windows XP but not for Windows 7
  - Select Yes
  - Click Next
* Windows Script 5.6 dialog 
  - Click Yes
* Windows Script 5.6 licence
  - Click Yes
* Windows Script 5.6 is now installed dialog 
  - Click OK
* Windows Script 5.6 restart your computer dialog
  - Click No
* Install R
  - Click Next
* Installation Complete
  - Click View ReadMe
  - Check ReadMe.rtf opens
  - Check ReadMe.rtf shows Distance M.N release (or beta) R
  - Click Finish

Check Start Menu:

* Select Start Menu => All Programs => Distance
* Check menu contains:
  - Distance M.N Users Guide
  - Distance M.N
  - Distance M.N Help
  - Distance M.N ReadMe
* Invoke each of the above and check that the relevant documents open

Check Distance M.N:

* Select Start Menu => All Programs => Distance => Distance M.N
* Welcome to Distance M.N - Tip of the Day should appear
* Click OK
* Check About Distance:
  - Select Help => About Distance
  - Check splash screen shows M.N release (or BETA) R
  - Check copyright at bottom of dialog box shows correct year
  - Click Sponsors and check it is correct
  - Click Authors and check it is correct
* Check Distance Help
  - Select Help => Distance Help
  - Check Welcome page shows Distance M.N release (or beta) R
  - Select Help => Online Manuals => User's Guide (pdf)
  - Check distance.pdf opens
  - Check distance.pdf shows Distance M.N release (or beta) R
  - Select Help => Release Notes
  - Check ReadMe.rtf opens
  - Check ReadMe.rtf shows Distance M.N release (or beta) R

Check Distance M.N and R:

* Select Start => All Programs => R => R i386 3.1.0
* Run:

<p/>

    install.packages("dsm")  
    packageVersion("dsm")
    install.packages("mrds")
    packageVersion("mrds")

* Select Help => MRDS Engine R help (html)
  - Check that MRDS HTML help page appears
* Select Help => DSM Engine R help (html)
  - Check that DSM HTML help page appears

Check installation folder:

* Browse to C:\Program Files\Distance M
* Check the folder contents match those in [Release Structure](../architecture/ReleaseStructure.html).

---

## Archive release

All the releases of Distance are stored in %BASE%Extras\Releases\.

Archive a release:

* Create a new sub-folder %BASE%Extras\Releases\DistanceM.N e.g. %BASE%Extras\Releases\Distance6.2\
* For a release, within this create a sub-folder releaseR e.g. release1\
* For a beta, within this create a sub-folder betaR e.g. beta1\
* Copy %BASE%Extras\Setup\ReadMe.rtf and %BASE%Extras\Setup\dMNsetup.exe to this sub-folder.

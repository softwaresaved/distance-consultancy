How to release a minor version of Distance for Windows
======================================================

This section describes the process of making a setup package (or installer) for a new minor version of Distance (e.g. moving from 6.2 to 6.3) using the Wise InstallBuilder.

In what follows:

* M.NreleaseR denotes Distance for Windows M.N release R
* M.NbetaR denotes Distance for Windows M.N beta release R
* M - Major version number
* N - Minor version number
* R - Revision number

Prepare components
------------------

Check database:

* Ask yourself if there's any reason why %BASE%\DatabaseEngine\DistIni.mdb might be out of date
* **TODO**
* Provide more information.

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

* [Copy Distance icon for use in Visual Basic and release](./BuildDocumentsImages.md#copy-distance-icon-for-use-in-visual-basic-and-release)

Create splash screen:

* [Create splash screen for new version](./BuildDocumentsImages.md#create-splash-screen-for-new-version)
* [Copy splash screen for use in Visual Basic and release](./BuildDocumentsImages.md#copy-splash-screen-for-use-in-visual-basic-and-release)

Update user's guide:

* Update all documents in %BASE%Extras\External Documentation\Documents
  - Update version number, copyright year and date
  - Update with contents of ReadMe
* [Update user guide version number](./BuildDocumentsImages.md#update-user-guide-version-number)

Build HTML Help and user guide:

* [Build HTML Help](./BuildDocumentsImages.md#build-html-help)
* [Copy HTML Help for use in Visual Basic and release](./BuildDocumentsImages.md#copy-html-help-for-use-in-visual-basic-and-release)
* [Update title slide with splash screen](./BuildDocumentsImages.md#update-title-slide-with-splash-screen)
* [Build title page image](./BuildDocumentsImages.md#build-title-page-image)
* [Build user guide](./BuildDocumentsImages.md#build-user-guide)
* [Add title page to user guide](./BuildDocumentsImages.md#add-title-page-image-to-user-guide)
* [Build user guide PDF](./BuildDocumentsImages.md#build-user-guide-pdf)
* [Copy use guide PDF for use in Visual Basic and release](./BuildDocumentsImages.md#copy-user-guide-pdf-for-use-in-visual-basic-and-release)

Build FORTRAN components:

* [Build MCDS analysis engine](./BuildFortran.md#build-mcds-analysis-engine)
* [Copy MCDS.exe for use in Visual Basic and release](./BuildFortran.md#copy-mcdsexe-for-use-in-visual-basic-and-release)
* **TODO**
* Any other updates needed?

Build R components:

* [Build R DSM and MRDS analysis engines](./BuildR.md#build-r-dsm-and-mrds-analysis-engines)
* [Copy R packages for use in Visual Basic and release](./BuildR.md#copy-r-packages-for-use-in-visual-basic-and-release)
* Check that %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages:
  - Contains all the dependencies needed.
  - Does not contain multiple versions of any library.
* **TODO**
* Any other updates needed?

Build Visual Basic components:

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

* Update %BASE%\Interface\Distance.vbp meta-data:
  - Major and minor version numbers - these determine App.Major and App.Minor values in-code and are passed on to new projects
  - File Description - update the version number
  - Legal Copyright - update the current year
  - Product Name - update the version number
  - See [Update binary (dll, ocx, exe) meta-data](./BuildVisualBasic.md#update-binary-dll-ocx-exe-meta-data)
* Check meta-data of all other projects is correct
* [Build all Visual Basic projects](./BuildVisualBasic.md#build-all-visual-basic-projects)
* **TODO**
* Any other updates needed?
* Developer guide comments that "Some info here about binary and project level compatibility, and how to deal with when building new versions of Distance."
* Provide more information.

Check template and sample projects:

* Check that the template and sample projects bundled with a release can be opened and browsed correctly within the newly-built distance.exe:
  - Sample projects are in %BASE%Extras\Sample Projects Backup\Release\
  - Template projects is in %BASE%Extras\Sample Projects Backup\Templates\
* If you want to create new analysis, take a local copy of the project first.
  - Do **not** create new analyses within the above projects! Even if you subsequently delete them, the internal analysis ID number will be incremented (all analyses etc are unique)

Build Wise installer
--------------------

* Open Wise installer script:
  - Browse to %BASE%Extras\Setup
  - Double-click DMNReleaseR.wse e.g. D62Release1.wse
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
  - Check that Filename: dMNsetup.exe
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
  - Uncheck Test self-extracting Zip file now
  - Click Close

* **TODO**
* "D5Setup6.exe (the last number is arbitrary - I just increment numbers in the .wse scripts on occasion)"
  - When are the numbers updated? Why not use a systematic MNR one?
* Why do WISE automatically add Comdlg32.ocx in vb6.wse?  I don't think I need it.  (They also add mscomctl.ocx, but I do need that one)
* A problem solved: On vanilla machines, was getting the message "the data binding dll VB5DB.dll could not be loaded".  This file is apparently required for DAO3.5 (and 3.6), but not distributed by DAO setup.  See MS Support Article Q241281 (http://support.microsoft.com/support/kb/articles/Q241/2/81.asp).  Added it to setup (doesn't need registering, but is shared) 19/10/00.
  - 2/11/00 - it is added automatically by the Wise DAO3.5 setup program (which also adds a lot of other stuff you don't need)
> some details here about how the Wise Install Builder works, in more detail than the summary info above.  E.g., how I worked out what info was required for the DAO install.  The Dialogs, etc 

Test release using VMWare virtual machine
-----------------------------------------

Make sure you use a vanilla virtual machine upon which no Distance installation has already been tested.

* **TODO**
* What is release process?
* Does it ensure consistency between web site, user guide, release notes, Distance for Windows, Distance R packages, MCDS?
* Is each Distance for Windows example worked through?
* Is each command, screen shot etc visually inspected for consistency?
* Are the R fragments in the user doc worked through? 
  - Exporting CDS Results from Analysis Details Results p115
  - Exporting MCDS Results p144

Archive release
---------------

All the releases of Distance are stored in %BASE%Extras\Releases\.

Archive a release:

* Create a new subdirectory %BASE%Extras\Releases\DistanceM.N e.g. %BASE%Extras\Releases\Distance6.2\
* For a release, within this create a subdirectory releaseR e.g. release1\
* For a beta, within this create a subdirectory betaR e.g. beta1\
* Copy into this subdirectory:
  - %BASE%Extras\Setup\ReadMe.rtf
  - %BASE%Extras\Setup\dMNsetup.exe

Other concerns to resolve
=========================

Do GREP:

%BASE%\Interface\Sample Projects\New Project.dat
%BASE%\Interface\Sample Projects\New Project.dst

* Is this used in a release? If so add to ComponentReference.md

%BASE%\Misc\GenerateLicenseKey\GenerateLicenseKey.vbp

* Is this used in a release? If so add to ComponentReference.md

%BASE%\Interface\About\About.rtf

* Is this used in a release? If so add to ComponentReference.md

Windows Script 5.6

* Mentioned in user's guide

> The installation program contains a copy of the English language verion of Windows Script 5.6, and you have the option to install this as part of the program setup... If you have already installed the appropriate version of Windows Script on your computer, then you should say "No" when the Distance setup program asks you if you want to install it's version." 

* Mentioned in developer's manual  Utilities e.g. regular expression searching, easy Windows file system manipulation
* Windows Script is not mentioned anywhere in the installer.

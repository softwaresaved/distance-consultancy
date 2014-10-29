How to release a minor version of Distance for Windows
======================================================

This section describes the process of making a setup package ("installer") for a new minor version of Distance (e.g. moving from 6.2 to 6.3) using the Wise InstallBuilder.

Check database:

* Ask yourself if there's any reason why %BASE%\DatabaseEngine\DistIni.mdb might be out of date
* ** TODO **
* This needs elaborated.

Update authors and sponsors:

* Update authors in %BASE%\Interface\Help\Authors.rtf
* Update sponsors in %BASE%\Interface\Help\Sponsors.rtf
* ** TODO **
* Any others?

Create ReadMe:

* Move fixed problems, which are greyed-out:
  - From: %BASE%Extras\Internal documents\Worklist\KnownProblems7.doc
  - To: %BASE%Extras\Internal documents\Worklist\ResolvedProblems1.doc
* Create %BASE%Extras\External Documentation\Readme\ReadMeNN.rtf
* Add %BASE%Extras\Internal documents\Worklist\KnownProblems7.doc
* Add %BASE%Extras\Internal documents\Worklist\ResolvedProblems1.doc
* Copy ReadMeNN.rtf:

<p/>

    copy %BASE%Extras\External Documentation\Readme\ReadMeNN.rtf %BASE%Extras\Setup\ReadMe.rtf

* ** TODO **
* Naming convention for ReadMeNN.rtf. It just seems to go N, N+1, N+2,...
* Prefer one with major and minor version numbers e.g. 6_1, 6_2,...

Update Distance icon with current version and release number:

* [Edit Distance icon](./BuildDocumentsImages.md#edit-distance-icon)
* [Copy Distance icon for use in Visual Basic and release](./BuildDocumentsImages.md#copy-distance-icon-for-use-in-visual-basic-and-release)

Update splash screen with current version and release number:

* [Edit splash screen](./BuildDocumentsImages.md#edit-splash-screen)
* [Copy splash screen for use in Visual Basic and release](./BuildDocumentsImages.md#copy-splash-screen-for-use-in-visual-basic-and-release)

Update user's guide:

* Check all documents in %BASE%Extras\External Documentation\Documents
* [Update user guide version number](./BuildDocumentsImages.md#update-user-guide-version-number)
* ** TODO **
* Any others?
* Are release notes, known problems, resolved problems pasted in here too?

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

Build R components:

* [Build R DSM and MRDS analysis engines](./BuildR.md#build-r-dsm-and-mrds-analysis-engines)
* [Copy R packages for use in Visual Basic and release](./BuildR.md#copy-r-packages-for-use-in-visual-basic-and-release)

Build Visual Basic components:

* [Build all Visual Basic projects](./BuildVisualBasic.md#build-all-visual-basic-projects)

Check template and sample projects:

* Check that the template and sample projects bundled with a release can be opened and browsed correctly within the newly-built distance.exe.
* Sample projects are in %BASE%Extras\Sample Projects Backup\Release\
* Template projects is in %BASE%Extras\Sample Projects Backup\Templates\
* If you want to create new analysis, take a local copy of the project first.
  - Do **not** create new analyses within the above projects! Even if you subsequently delete them, the internal analysis ID number will be incremented.

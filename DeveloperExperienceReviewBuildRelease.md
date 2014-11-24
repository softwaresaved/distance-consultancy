Developer Experience Review - build and release
===============================================

Mike Jackson, The Software Sustainability Institute / EPCC, The University of Edinburgh

Introduction
------------

Additional recommendations for [Developer Experience Review](./DeveloperExperienceReview.md). These arose when exploring the Distance VM to understand how to build and release a minor version of Distance for Windows. These activities are documented in [How to release a minor version of Distance for Windows](http://softwaresaved.github.io/distance-consultancy/develop/ReleaseMinor.html).

Automate build, copy and replace tasks
--------------------------------------

Building Distance relies upon a number of manual steps which could be automated. These steps include:

* Open up Visual Basic (vbp), Visual Fortran (dsw), Doc-To-Help (c2h) or Wise Installation System (wse) projects to build executables, libraries, HTML Help or Distance installers.
* Build R packages from the command prompt. 
* Update version numbers and copyright information in each Visual Basic project, since this affects meta-data associated with libraries and executables.
* Copy outputs of these operations to other locations for use elsewhere, notably the Visual Basic projects and the Wise project.
* Update version numbers in Distance's Wise project (wse).

The Visual Basic projects themselves have inter-project dependencies and need to be built in a certain order.

There are batch scripts in %BASE%\ but these only build sub-sets of the Visual Basic projects e.g.:

* BuildInterface.bat - build %BASE\Interface\Distance.vbp into Distance.exe.
* BuildNoDep.bat - build all projects that have no dependencies.
* dsmneimake.bat - build %BASE\Analysis Engines\DSM\NEngineInterface\D6DSMNEI.vbp into D6DSMNEI.dll.

It would save time, and reduce the risk of errors, to automate these. The following tasks can be done non-interactively via the command prompt and so can be automated:

* Build all Visual Basic projects in an order that respects their dependencies.
* Build R packages from %BASE%\Analysis Engines\DSM\Engine\dsm and %BASE%\Analysis Engines\MRDS\Engine\mrds\mrds.
* Copy R packages to %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages.
* Build MCDS.exe from Visual Fortran project %BASE%\Analysis Engines\CDS\Engine\Engine\MCDS.DSW.
* Copy MCDS.exe to %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages.
* Update major and minor version, company, file description, copyright, product name, and names and locations of dependencies across all Visual Basic projects by replacing strings in the plain-text project files e.g.:

<p/>

    Object={...}#2.0#0; Actbar2.ocx
    Reference=*\G{...}#1.0#0#..\Utilities\D6Util.dll#Distance 6 Utilities - Shared enumerations, properties and methods
    Reference=*\G{...}#2.0#0#..\Database Engine\D6DbEng.dll#Distance 6 Database Engine
    Object={...}#2.0#0; D6Map.ocx
    Object={...}#1.0#0; LLine3.ocx
    Title="Distance 6.4 release 3"
    Description="Distance 6 Interface"
    MajorVer=6
    MinorVer=4
    VersionCompanyName="Research Unit for Wildlife Population Assessment, University of St Andrews"
    VersionFileDescription="Distance 6.4 release 3 Executable"
    VersionLegalCopyright="Copyright © 1998-2014 RUWPA"
    VersionProductName="Distance 6.4 release 3"

* Update major and minor version, company, file description, copyright, product name, and names and locations of dependencies within the Wise installer project file, %BASE%Extras\Setup\DMNreleaseR.wse by replacing strings in the plain-text project file e.g.:

<p/>

    Set Variable APPTITLE to Distance 6.2
    Create Shortcut from %MAINDIR%\Distance.exe to %GROUP%\Distance 6.2.lnk
    Create Shortcut from %MAINDIR%\ReadMe.rtf to %GROUP%\Distance 6.2 ReadMe.lnk
    Create Shortcut from %MAINDIR%\Help\distance.chm to %GROUP%\Distance 6.2 Help.lnk
    Create Shortcut from %MAINDIR%\Help\distance.pdf to %GROUP%\Distance 6.2 User Guide.lnk
    Add Icon "Distance 6.2 Users Guide" to Program Manager Group "%GROUP%"

* Build compiled HTML help and Microsoft Word document from Doc-To-Help project %BASE%Extras\External Documentation\Documents\distance.d2h.
* Copy compiled HTML help from %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.chm %BASE%\Utilities\Help\ to %BASE%\Utilities\Help\.

Remove unused files
-------------------

If not needed then both these files should be deleted:

* %BASE%\Interface\About\About.rtf seems to have out of date information.
* %BASE%Extras\Setup\filelist.txt is not needed but seems it might be.

If they are needed then a short accompanying text file documenting why would be useful.

Rename DAOLen1.wse
------------------

%BASE%Extras\Setup\DAOLen1.wse appears to be a personal script but is needed by Distance's Wise project. Rename it so it doesn't look like a personal script.

Clarify distance.bas Const replacements
---------------------------------------

The developer's manual, Chapter 12, states:

> "If you're going to be releasing a new version of Distance, it's also worth coping the distance.bas VB macro file into the \Utilities\Help directory. Ater you've done this, you'll need to replace all the Const in this with Public Const, and then recompile all the VB code. You only need to do all this if you've created any new pages of help, etc."

%BASE%Extras\External Documentation\Documents\HTMLHelp\distance.bas already has Public Const entries e.g.:

<p/>

    Public Const IDH_workingwithdatafiltersandmodeldefinitions = 356 ' &H164

Clarify whether all the VB code needs to be compiled
----------------------------------------------------

...or just those projects which depend upon distance.bas.

%BASE%\BuildAll is missing
--------------------------

The developer's manual, Chapter 12, states:

> 'The batch file %BASE%BuildAll registers the VB Projects that don't have dependencies and then builds the VB Projects that do have dependencies. So, on a new machine, with all the right software in place, it should be possible just to run this one batch file and then be able to run Distance.exe.
 
There is no such file now.

Document purpose of Distance.vbg
--------------------------------

Is %BASE%\Distance.vbg needed? All it does is:

<p/>

    BGROUP 5.0
    StartupProject=Interface\Distance.vbp

Deprecate RCmd.exe
------------------

Rcmd.exe seems to have been deprecated e.g. see [StackOverflow](http://stackoverflow.com/questions/3412911/r-exe-rcmd-exe-rscript-exe-and-rterm-exe-whats-the-difference) which comments that

> Rcmd.exe is a historical left-over as back in the day, you could not do R CMD something on Windows but needed the special executable Rcmd.exe something. That is no longer the case, yet it is provided for backwards compatibility.

R CMD can now be used.

Document how to check DistIni.mdb is ready for release
------------------------------------------------------

The developer's manual, Chapter 12, states:

> Ask yourself if there's any reason why %BASE%\DatabaseEngine\DistIni.mdb might be out of date

Document what checks need to be done.

Document purpose of BACKUP directory in an installation
-------------------------------------------------------

When installing Distance on Windows 7 the installation's BACKUP directory contained a number of libraries - see [ReleaseStructure](http://softwaresaved.github.io/distance-consultancy/architecture/ReleaseStructure.html). However, when installing on Windows XP it only contained scripten.exe. Document that this BACKUP directory does.

Provide DLL base addresses
--------------------------

The developer's manual, Chapter 12, DLL Addresses in VB, states that:

> For DLL components in VB projects, under Project Properties | Compile, you have the option to specify the base address.  The default is &H1100000, which is what everyone will likely leave it at.  This will cause lots of memory re-allocation, so our components will load faster if we choose a random number between this and &H80000000.  Best to choose any 64K boundary (ie rightmost four digits of the address are 0000).  Also try to spread the components out a bit.

These DLLs do not have base addresses set:

* DnnnnDesNEI.dll
* CDlg3.dll
* PrjParams6.dll 

Consider building libraries into a common directory
---------------------------------------------------

The Visual Basic projects contain a number of dependencies on other Visual Basic projects. These are expressed via relative paths e.g.

    Reference=*\G{...}#1.0#0#..\Utilities\D6Util.dll#Distance 6 Utilities - Shared enumerations, properties and methods
    Reference=*\G{...}#2.0#0#..\Database Engine\D6DbEng.dll#Distance 6 Database Engine

These arise as the Visual Basic projects build their libraries into the same directory where the Visual Basic project itself resides.

The Wise installer project file, %BASE%Extras\Setup\DMNreleaseR.wse, also has references to all these locations.

Building the libraries into a common directory (e.g. %BASE%\lib\) would allow for the Visual Basic project directories to be renamed or moved without breaking dependencies from other projects.

Rename Visual Basic project files to be version-agnostic
--------------------------------------------------------

Visual Basic project files have the Distance major version number included in their file name e.g. D6MRDSPrp.vbp, D6Util.vbp etc. This makes changing to a new major version (e.g. Distance 7) more challenging than it needs to be since not only does project meta-data need to change, the project file names need to change too. This may break dependencies elsewhere e.g.

    Reference=*\G{...}#1.0#0#..\Utilities\D6Util.dll#Distance 6 Utilities - Shared enumerations, properties and methods

Renaming the projects to have filenames that are version agnostic would reduce the overhead of moving to a new major version.

Document how to update project upgrade functionality
----------------------------------------------------

Distance has functionality to upgrade project and data files from older versions. How to upgrade this functionality, and when, should be documented.

Document process for Visual Basic compatibility
-----------------------------------------------

Visual Basic's compatibility mode allows for checks to be done to ensure that libraries or components do not change their interfaces in a way that can break compatibility with older versions.

For Distance, original versions of libraries and executables are stored within %BASE%\Compatibility folder. These are currently for Distance 6.

The process for creating and updating these should be documented.

Document major release process
------------------------------

The process for preparing for a major release (e.g. moving from Distance 6 to Distance 7) should be documented. In addition to the activities involved in preparing a minor release, the following tasks (at least) need to be done and documented:

* Renaming Visual Basic project files (see above)
* Updating project meta-data and dependencies as a consequence.
* Preparing libraries for compatibility checks (see above)

Developer Experience Review
===========================

Mike Jackson, The Software Sustainability Institute / EPCC, The University of Edinburgh

Introduction
------------

[The Distance project](http://distancesampling.org) provides software, Distance, for the design and analysis of distance sampling surveys of wildlife populations. Distance is used by biologists, students, and decision makers to better understand animal populations without the need for these users to have degrees in statistics or computer science. 

Distance consists of a Visual Basic interface on top of analysis engines written in FORTRAN, the statistical programming language R, and ESRI MapObjects. These all feed from a shared Microsoft Access database. Distance is distributed as both a Windows-based program and a suite of packages for R. The Windows version provides a GUI.

This report presents a review of Distance's resources for developers. The following information, of interest to developers, was sought:

* Folder, file and database formats, both those used by users and those used internally by Distance. This includes input and output files, image files and log files.
* Interfaces between Distance for Windows and FORTRAN and R components.
* API documentation.
* Dependencies on third-party software.
* Source code and documentation management.
* Coding standards.
* Testing processes.
* Release processes for Distance for Windows and R packages.
* Setting up a development environment.

The review was undertaken between 06/10/14 and 22/10/14. Please contact the reviewer at m.jackson@software.ac.uk if you have any queries.

Resources consulted
-------------------

The following resources were consulted:

* Distance for Windows 6.2.
* Distance R packages.
* 'Distance 6.2. Release 1 User's Guide'. This is available:
  - Via Distance 6.2 by selecting Help => Online Manuals => User's Guide (pdf).
  - In the installation directory, `C:\Program Files (x86)\Distance 6\Help\distance.pdf`.
* [Distance Extras](http://distancesampling.org/distanceextras.html) web page.
* Len Thomson and Laura Marshall. Developers Manual, Distance, Research Unit for Wildlife Population Assessment University of St Andrews. DistanceDevelopersManual.pdf. Forwarded by David Miller on 31/07/14. Most of this manual dates from 2009.
* Distance Windows XP Pro virtual machine. Forwarded by Eric Rextad on 06/10/14. In the text the following abbreviations are used:
  - `%BASE%` - `C:\Application Development\Distance60`
  - `%BASE%Extras` - `C:\Application Development\Distance60Extras`
* [DistanceDevelopment](https://github.com/DistanceDevelopment/) GitHub project. This includes:
  - GitHub repositories for Distance's R packages.
  - [DistanceDevelopment web-site](http://distancedevelopment.github.io).
* [DistanceEngines](http://sourceforge.net/projects/distanceengines/) SourceForge project which includes:
  - [CVS repository](http://distanceengines.cvs.sourceforge.net/viewvc/distanceengines/mcds/) for Distance's FORTRAN-based MCDS engine.

----------------------------------------------------------------------

Refactor developer information form, content and hosting
========================================================

A major challenge for developers is documentation. This is spread across a number of files in both text and Microsoft Word documents (dates last updated in brackets):

* `%BASE%Extras\Internal Documentation\DevelopersManual`:
  - `11 Setting up a Computer.doc` (2013).
  - `12 Distributing Distance.doc` (2014).
  - All other chapters (2009).
* `%BASE%Extras\Internal Documentation\CVS stuff`:
  - `compiling R modules.txt` - notes on compiling R modules under Windows (2006).
  - `cvs-howto.txt` - notes on CVS use (2010).
  - `release-howto.txt` - notes on releasing MRDS and MCDS on SourceForge (2005).
* `%BASE%\Analysis Engines\DSM\Engine\how to make the R package.txt` - minimal notes on using Git (2014).
* `%BASE%\Analysis Engines\MRDS\Engine\how to download and make the R package.txt` - notes on using Git and R (2014).
* `%BASE%Extras\External Documentation\Documents\setup_project.txt` - notes on creating ComponentOne Doc-To-Help projects (2006).

The outset of the developer's manual, p5, states that:

> To be useful, it is vital that this document stays up to date. Since Distance is actively being developed, the chapters that make up this document are expected to change over time. Please do your part in making sure it stays current, and report or correct any inconsistencies or inaccuracies. If you change anything, please document what you do in the section Change Log at the end of each chapter.

Change log entries across the whole manual date between 2005-2009. Whether there has been any changes since then, and authors have just not updated the change logs or there have been no updates at all, is unclear unless looking at the properties of the files themselves.

More generally, the developer documentation is in many places incomplete or out-of-date.

Use wikis or revision control
-----------------------------

Moving developer information to wikis or putting it under revision control would deliver a number of possible benefits:

* An audit trail of who changed what, when and why is recorded. 
* Who changed what and when is automated - there is no need for developers to specify when they last updated a document.
* It may become easier for all members of the team to contribute to its growth e.g. filling in gaps in information or correcting errors as they arise.

Many options are possible As GitHub is already being used for project resources, GitHub's offerings are discussed along with others I've experience of.

| Pros | Cons |
| ---- | ---- |
| **GitHub repository and MarkDown** | |
| Edit pages as raw [GitHub-flavoured markdown](https://help.github.com/articles/github-flavored-markdown/) locally | |
| Manage pages using revision control | |
| GitHub renders GitHub-flavoured markdown | |
| Supports embedded images | |
| | Can only browse rendered content online |
| **GitHub wiki and MarkDown ** | |
| Edit pages as raw GitHub-flavoured markdown locally or within web browser | |
| Online editor has a Preview option |
| Manage pages using revision control - wiki can be cloned and edited as MarkDown documents in a Git repository (e.g. `git clone https://github.com/DistanceDevelopment/mrds.wiki.git`). See [adding and editing wiki pages locally](https://help.github.com/articles/adding-and-editing-wiki-pages-locally/). | |
| Supports embedded images. See [adding images to wikis](https://help.github.com/articles/adding-images-to-wikis/). | Image links need to be absolute URLs hosted in another repository |
| | Can only browse rendered content online |
| **GitHub `gh-pages` and MarkDown/HTML ** | |
| Edit pages as raw GitHub-flavoured markdown and/or HTML | |
| Manage pages using revision control | |
| GitHub converts GitHub-flavoured MarkDown or HTML into a web-site | |
| Supports embedded images | |
| Can install tools GitHub uses to create local copy of the web-site which can then be shipped to users/developers for offline browsing | |
| **[DocBook](http://www.docbook.org/) mark-up language for technical documentation** | |
| Edit pages as XML | More verbose than MarkDown |
| Managing pages using revision control is optional but, as for all raw sources, recommended | |
| DocBook can compile XML into PDF, HTML, Microsoft Compiled HTML Help | |
| Supports embedded images, tables of contents, indexes, cross-references, conditional content | |
| Powerful | Complex |
| **Raw HTML** | |
| Managing pages using revision control is optional but, as for all raw sources, recommended | |
| Supports embedded images | |
| | Implement tables of contents, indexes, cross-references, conditional content manually |
| A number of HTML -> PDF convertors are available (e.g. [Prince](http://www.princexml.com/) which is free for non-commercial use) | |

More investigation is needed to determine the support the GitHub solutions have for auto-generating a PDF from the rendered MarkDown or HTML (though for GitHub `gh-pages`, an HTML->PDF converter would suffice), its support for converting local links into cross-references, building tables of contents and indexes etc.

Any of the above proposals can also be adopted for the user's guide.

Host documentation alongside its related products
-------------------------------------------------

Hosting developer documentation alongside the components to which it applies can reduce the number of locations a developer needs to search for information. It can also help to ensure that the code and documentation remain in-synch.

Distance consists of three products - its FORTRAN MCDS engine, its R DSM and MRDS engines, and its Visual Basic Distance for Windows components. There are three sets of developer-related documentation applicable to these:

* FORTRAN MCDS engine:
  - FORTRAN coding standards
  - How to develop, build, run and test
  - How to release on SourceForge
* R DSM and MRDS engines:
  - R coding standards
  - How to develop, build, run and test
  - How to release on GitHub
  - How to release on CRAN
* Distance for Windows:
  - Visual Basic coding standards
  - How to develop, build, run and test each component
  - How to edit and build documentation
  - How to build, run and test Distance for Windows
  - How to release

Review and update documentation
-------------------------------

Developer documentation should be completely reviewed and revised so it is complete and accurate. 

----------------------------------------------------------------------

Folder, file and database formats
=================================

The user's guide contains comprehensive information on:

* Data file `DistData.mdb` database schema.
* Project folder / file structure.
* Import data file types and formats.
* Project backup format.

It also provides information on how to create:

* CDS and MCDS command and data files for input to FORTRAN CDS and MCDS engine.
* R command and data files for input to R `mrds` and `dsm` packages.

The developer's manual contains comprehensive information on:

* Project file `dst` database schema.
* Data file `DistData.mdb` database schema.

Without an in-depth inspection, comparing the documentation to actual project and data files, it is unclear how up-to-date this information is.

Mention `.dst` file format in user's guide
------------------------------------------

The Distance project, `.dst`, file is the only file whose format is not documented in the user guide. Opening one in Notepad showed the text:

    Standard Jet DB

which implied it was a Microsoft Jet engine file. Renaming a project file to have a suffix `.mdb` and opening it in Microsoft Access revealed it to be an Access database file. This was then confirmed by reading the developer's manual. For completeness, mention that this is a Jet engine database file in the user's guide.

----------------------------------------------------------------------

Interfaces between Distance for Windows, FORTRAN and R
======================================================

The user's guide provides detailed information on both:

* FORTRAN MCDS engine, `MCDS.exe`, for CDS and MCDS analyses, including stand-alone usage, information on return codes, and input and output file formats, and how to get these from within Distance for Windows, random number generator.
* R `mrds` and `dsm` packages, including stand-alone usage, input file names, how to get these from within Distance for Windows, main functions, random number generator.

It also provides information on how to create the following files:

* Command and data files for input to the FORTRAN MCDS engine.
* R command and data files for input to R `mrds` and `dsm` packages.

With these files, the FORTRAN and R components, called from Distance for Windows, can be run stand-alone.

Pull out Appendix - MCDS Engine Reference into a stand-alone user guide
-----------------------------------------------------------------------

The user's guide, Appendix - MCDS Engine Reference, p307-344, thoroughly documents the FORTRAN MCDS engine, `MCDS.exe`, used by Distance for CDS and MCDS analyses. As this is a stand-alone program in its own right, pull this Appendix out into a stand-alone MCDS Engine user guide. This would also make the user's guide less monolithic.

Update reference on how to run MCDS from another program
--------------------------------------------------------

The user's guide, p309, states that:

> An example of how to run the MCDS analysis engine from a program written in another language (in this case Visual Basic) is given on the Support page of the Program Distance Web Site. See also the archives of the Distancesampling Email List for some messages discussing how to do this (try searching for "stand alone").

There is no Support page on the web-site. Searching for each of the following via Google yielded no suitable hits:

    site:distancesampling.org "stand alone"
    site:distancesampling.org "stand-alone"
    site:distancesampling.org "standalone"

The intended reference was found by exploring the web-site. The reference should be:

> See 'RunAnalysisEngine - Visual Basic code for running the D4 analysis engine' on the [Distance Extras](http://distancesampling.org/distanceextras.html) page on the web-site.

Provide standalone R and MCDS examples
--------------------------------------

Distance for Windows allows for commands and input files to both the FORTRAN MCDS engine and the R `mrds` and `dsm` packages, to be captured. This is enabled via the Analysis Preferences:

* Select Tools => Preferences...
* Click Analysis tab
* Check Debug mode (create command files but don't run engine)

For CDS and MCDS analyses, it creates the temporary command and data files e.g.:

* `dstA6A6.tmp` - data.
* `dstA705.tmp` - comands.

These can then be run directly using MCDS e.g.:

    MCDS.exe 0 dstA705.tmp

For MRDS and DSM analyses, it creates the R command and data files e.g.:

* `ddf.dat.r` - commands.
* `in.r` - data.
* `log.r` - empty log file.
* `obs.dat.r` - data.
* `region.dat.r` - data.
* `sample.dat.r` - data.

Samples of these command and input files for both the MCDS engine and R would be useful for developers, without the need to go via the Distance for Windows Debug mode.

----------------------------------------------------------------------

API documentation
=================

The user's guide, p290, has a diagram of the database engine's (`D4DbEng.dll`) public classes. The developer's manual, p30-45, provides a more detailed description of the database engine API including its classes, properties and methods. Without a detailed code review, it is unclear how accurate this information is.

Auto-generate API documentation
-------------------------------

Auto-generating API documentation directly from the source code can greatly reduce the risk of the documentation becoming out-of-synch with the code. It also makes it easier to generate the documentation

[Doxygen](http://www.stack.nl/~dimitri/doxygen), a popular code documentation generator, can be used to generate HTML from source code. It also outputs API documentation as RTF, PDF or Windows 98 Help (see [Output Formats](http://www.stack.nl/~dimitri/doxygen/manual/output.html)). It can be used as-is for FORTRAN. There are [helper tools and scripts](http://www.stack.nl/~dimitri/doxygen/helpers.html) that convert Visual Basic code into a format Doxygen can process. 

Other options for Visual Basic include:

* [VBDOX](http://vbdox.sourceforge.net/), a free open source product.
* [VBdocman](http://www.helixoft.com/vbdocman/overview.html), a proprietary product which offers a 14 day free trial

Provide API documentation as HTML
---------------------------------

API documentation is more usable as a set of hyperlinked documents, to allow classes, properties, functions, modules and subroutines to be explored via a browser. 

Such documentation can either be bundled within Distance, or as a separate bundle, for developers only, so users don't download files they'll never use.

----------------------------------------------------------------------

Dependencies on third-party software
====================================

Some third-party dependencies are mentioned in the user's guide e.g. Microsoft Windows, FORTRAN, R, Microsoft Jet 3.51 engine file, as also used by MS Access 97, Microsoft Jet 3.51 IISAM (Installable Indexed Sequential Access Method) drivers for Microsoft Access 97, tabular text files and Excel.

The developer's manual provides:

* List of Development Environments, p7 e.g. Microsoft Visual Basic 6, Compaq Visual Fortran, R.
* List of External Components, p12 e.g. Microsoft DAO,  ESRI MapObjects, Polar Software PolarZip and many others.
* List of Required or Useful Support Programs, p14 e.g. Wise Installation System Doc-To-Help, Adobe Acrobat etc.

List origins of tools and external components
---------------------------------------------

It would be useful to extend such lists with links to product or component web-sites.

Provide external dependencies as a table
----------------------------------------

The developer's manual, Chapter 11. Setting up a Computer for Distance Development, p54-59, lists tools required by developers and their versions. It can be useful to summarise this, and the links to product or component web-sites in a single table for reference.

----------------------------------------------------------------------

Source code and documentation management
========================================

From the available public and private resources, and the VM, Distance's source code and documentation management seems to be as follows:

* R source code is held in public Git repositories on GitHub, under the [DistanceDevelopment](https://github.com/DistanceDevelopment/) project. This includes the `mrds` and `dsm` packages used by Distance for Windows.
* FORTRAN source code, for the MCDS engine, is held in a publicly-readable CVS repository on the [distanceengines](https://sourceforge.net/projects/distanceengines) SourceForge project.

Revision control does not appear to be used for:

* Visual Basic projects and source code.
* R vignettes on the [Distance for R](http://distancesampling.org/R/index.html) web page. These examples consist of [R Markdown](http://rmarkdown.rstudio.com/) (`.Rmd`) files and comma-separated value (`.csv`) data files.
* Manually-created non-code parts of Distance as listed in the developer's manual, p13:
  - User guide - Microsoft Word documents.
  - Developer's manual - Microsoft Word documents.
  - Worklist, resolved and known problems - Microsoft Word documents.
  - Sample projects - Distance project file and folders.
  - Setup scripts - Wise installation system scripts.
  - Release notes - Rich Text Format.
  - Splash screen graphic - Microsoft Image Composer files.
  - Icons for the GUI - ICO files.
* Other project resources which are created by hand and include:
  - Class diagrams e.g. user's guide, p290, `D4DbEng.dll`'s public classes.
  - Component and structure diagrams e.g. developer's manual, Distance components, p8; structure of a Distance project on user's guide, p48, and developers manual, p16 etc.

This is evidenced by the number of "old", "temp" and named developer-specific directories within the VM, which can be confusing for new, and not so new, developers.

Put all manually-created artefacts under revision control
---------------------------------------------------------

All manually created resources should be under revision control as this helps avoid the problems highlighted in:

* ["FINAL".doc](http://www.phdcomics.com/comics/archive.php?comicid=1531)
* [A story told in file names](http://www.phdcomics.com/comics/archive.php?comicid=1323)

Many of these resources are dependant upon the source code whether that be individual Visual Basic, FORTRAN or R components or Distance for Windows versions as a whole. Holding them under revision control allows for this dependence to managed more systematically. For example branches, and a suitable naming scheme, can be used to keep the user's guide in-synch with the version of Distance for Windows to which it applies - when a release of Distance for Windows is done, tags can be created in each of the repositories to snapshot the resources used to create that release.

Move MCDS code to GitHub
------------------------

It is recommended that the MCDS code be moved from SourceForge to GitHub. This would both keep all the Distance repositories together within the same GitHub project, but also mean that a single revision control tool can be used across all Distance components.

Fix link to `mrds` repository
-----------------------------

The developer's manual, p9, lists the `mrds` library as:

> Also in sourceforge (same address as above)

The address referenced is:

http://sourceforge.net/projects/distanceengines/

However, visiting this site shows the message:

> We have moved, the project is now at https://github.com/jlaake/mrds

The referenced repository is a fork of the canonical `mrds` source code at:

https://github.com/DistanceDevelopment/mrds

Clarify whether SourceForge hosts the canonical FORTRAN code
------------------------------------------------------------

The developer's manual, p9, lists `MCDS.exe`'s FORTRAN source code as being:

> in sourceforge under https://sourceforge.net/projects/distanceengines

This site shows the message:

> We have moved, the project is now at https://github.com/jlaake/mrds

as above. However, there is no FORTRAN source code at the latter repository. There is however FORTRAN source code in the former:

http://distanceengines.cvs.sourceforge.net/viewvc/distanceengines/mcds/

The last update was 3 years ago:

> Updated version number to 7.0.0

This repository is consistent with that on the VM

    %BASE%\Analysis Engines\CDS\Engine\mcds\CVS

Where `CVS\Root` lists:

    :ext:USERNAME@distanceengines.cvs.sourceforge.net:/cvsroot/distanceengines

It should be clarified whether https://sourceforge.net/projects/distanceengines does indeed hold the canonical FORTRAN code.

Add an MCDS README
------------------

Add a README to the FORTRAN code explaining the provenance of the code, its copyright and licence and how to compile and run it.

----------------------------------------------------------------------

Coding standards
================

Coding standards for the three languages used within Distance are as follows.

Visual Basic
------------

The developer's manual, Writing Code for Distance - Coding Conventions, p52, states that:

> VB code conventions go here! - currently in E:\Distance50Extras\Internal Documentation\Old\Coding conventions

These are on the VM - "D5 Visual Basic Coding Conventions", 12 March 2004, Coding Conventions 6.doc. They provide guidelines for naming classes, objects constants and variables; formatting and commenting.

Microsoft also provide a set of [Visual Basic Coding Conventions](http://msdn.microsoft.com/en-us/library/h63fsef3.aspx) which may be of interest.

FORTRAN
-------

The developer's manual, Writing Code for Distance - Coding Conventions, p52, states that there are none at present for FORTRAN.

There is no single agreed set of FORTRAN coding standards. However, [Fortran Best Practices](http://www.fortran90.org/src/best-practices.html) proposes a 'modern canonical way of doing things' which may be of interest.

R scripts
---------

The developer's manual, Writing Code for Distance - Coding Conventions, p52, states that there are none at present for R. However, the DistanceDevelopment web-site has R [Coding Conventions](http://distancedevelopment.github.io/dev-Coding-Conventions.html) covering variables, functions and formatting.

There is no single set of agreed R coding standards as documented in Rasmus Baath, [The State of Naming Conventions in R](http://journal.r-project.org/archive/2012-2/RJournal_2012-2_Baaaath.pdf), The R Journal Vol. 4/2, December 2012.

However, Google does provide an [R Style Guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml) for their projects which may be of interest.

Refer R developers to the CRAN Writing R Extensions guide
---------------------------------------------------------

The CRAN guide on [Writing R Extensions](http://cran.r-project.org/doc/manuals/r-release/R-exts.html) is important since it can affect the compliance with an R extension to CRAN's conditions for hosting packages.

Propose a minimal set of coding standards for each language
-----------------------------------------------------------

Unfortunately, the more strict a set of coding standards, the less likely they are to be observed. However, a minimal set of coding standards for each language can be adopted. This can include:

* Each file must specify its copyright and licence.
* All public functions and methods must have their role/function, argument and return types documented.
* All functions and methods manipulating files and databases should document the expected file formats or database schema (or refer developers to a document or web-site where these can be found).
* Recommended white-space and indentation of blocks.
* Naming conventions for directories, files, functions, classes, methods etc.
* Recommended mark-up format for auto-generated API documentation.

----------------------------------------------------------------------

Testing protocols
=================

Provide information on how to run Distance for Windows test projects
--------------------------------------------------------------------

The VM has a number of Distance test projects:

    %BASE%Extras\Test Projects
      D62GolfteesTest.dat
      D62GolfteesTest.dst
      GolfteesTest.dat
      GolfteesTest.dst
      GolfteesTest1.dat
      GolfteesTest1.dst

It is unclear how these are used for testing.

Provide information on how to write and run VB tests
----------------------------------------------------

The VB directories on the VM, under `%BASE%`, have `Tester` sub-directories e.g.:

    Analysis Engines\CDS\Details\Tester
    Analysis Engines\CDS\NEngineInterface\Tester
    Analysis Engines\CDS\NEngineInterface\Tester2

It is unclear how these are used for testing.

Implement MCDS tests
--------------------

There are no MCDS tests evident either within the the [DistanceEngines](http://sourceforge.net/projects/distanceengines/) SourceForge project or within the VM.

Provide information on how to write and run MCDS tests
------------------------------------------------------

Once tests have been developed for MCDS.

R scripts
---------

The DistanceDevelopment web-site has R [How to add a test to mrds](http://distancedevelopment.github.io/dev-Testing-howto.html) describes the use of the [testthat](http://cran.r-project.org/web/packages/testthat/index.html) package.

Both the `mrds` and `dsm` libraries have `tests` sub-directories with `testthat` tests.

Generalise testthat advice
--------------------------

At present, the advice is for the `mrds` package but there is no reason why the information could not be made generally applicable to all R packages.

Update link to testthat
-----------------------

The page at https://github.com/hadley/devtools/wiki/Testing, linked from http://distancedevelopment.github.io/dev-Testing-howto.html, now asks users to go to http://r-pkgs.had.co.nz/tests.html. However, there is also a CRAN page at http://cran.r-project.org/web/packages/testthat/index.html.

Distance Extras
---------------

[Distance Extras](http://distancesampling.org/distanceextras.html) provides links to Distance-related tools and downloads. As these are unsupported components they are not tested for compatibility with new Distance releases as they appear.

----------------------------------------------------------------------

Release processes
=================

There are a number of issues with the process used to release Distance's products:

* FORTRAN MCDS engine
* R DSM and MRDS engines
* Distance for Windows

This includes:

* Incomplete documentation. There is no information at all on building a major Distance for Windows release, for example.
* Out-of-date documentation.
* Documentation spread over a number of files.
* No mention of any requirement to run Visual Basic or R tests prior to release.
* Release documentation mixed in with day-to-day developer documentation. This applies particularly to Chapter 12 - Distributing Distance of the developer's guide.
* A number of manual steps to copy files output by one program (e.g. `MCDS.exe`, `ReadMe.rtf`, etc) into other locations. This also leads to duplication of auto-generated files which can cause confusion for new developers.
* For R components, inconsistencies in directory formats lead to small inconsistencies in instructions e.g. 
  - For DSM one builds a package in `%BASE%\Analysis Engines\DSM\Engine`
  - For MRDS one builds a package in `%BASE%\Analysis Engines\MRDS\Engine\mrds`
* Inconsistent use of version control e.g. there are branches for DSM and MRDS releases, but not for MCDS releases.

In some cases there is an implicit, rather than explicit, release process. For example, from the GitHub repositories for the R packages it looks like:

* A `NEWS` file is updated with the version number and a list of changes and bug fixes for that version. e.g. `mrds`, [NEWS](https://github.com/DistanceDevelopment/mrds/blob/master/NEWS).
* Every release is put in a 'releases' part of the repository. e.g. `mrds`,  [releases](https://github.com/DistanceDevelopment/mrds/releases).
* A tag is created for 'releases', Distance6.2 releases or CRAN releases e.g. for `mrds` tags include `mrds-2.1.11`, `Distance6.2`, `CRAN-2.1.10`, `CRAN-2.1.6`.

The use of such tags makes it easy to determine which versions are in Distance for Windows and which are on the Comprehensive R Archive Network, [CRAN](http://cran.r-project.org/). As a contrast, `DSsim` is on [CRAN](http://cran.r-project.org/web/packages/DSsim/index.html) but the GitHub repository has no tags, releases or NEWS items.

The [CRAN Repository Policy](http://cran.r-project.org/web/packages/policies.html) documents the conditions submissions to CRAN must pass. This includes running:

    R CMD check --as-cran 

using the current development version of R (`R-devel`) before upload. The CRAN guide on [Writing R Extensions](http://cran.r-project.org/doc/manuals/r-release/R-exts.html) provides additional advice.

Document release processes
--------------------------

Release processes for each of Distance's products should be updated and completed. These should include:

* How to build a release and any preconditions for doing so.
* How to test a release.
* How to release the release bundle e.g. upload to the web-site, GitHub or SourceForge.
* How to test the uploaded bundle.
* How to create a tag under revision control to ensure the code used to create that release is preserved.
* etc.

----------------------------------------------------------------------

Setting up a development environment
====================================

The developer's manual, Chapter 11. Setting up a Computer for Distance Development, provides information on setting up a development environment. The tool-set is listed as:

* Distance for Windows Visual Basic components:
  - Access 97
  - Office XP Pro
  - VB5 + service packs.
  - VB6 + service packs.
  - Microsoft Visual Basic 5
  - Microsoft Jet 3.5 Service Pack 3 update
  - Microsoft Visual Basic 6
  - Microsoft Windows scripting 5.6
  - ESRI MapObjects 2.3
  - DataDynamics ActiveBar 2.5.2.121 
  - VideoSoft VSFlex 7.0.1.187
  - Tab Pro 3.1.22
  - Active Threed 2.04
  - Spyworks 6.3
  - Polar Zip 5.0.12.0
  - Zlib zip dll
  - CCRP Browse Dialog Server 0.2.0.12
  - MSDN (optional)
* Distance for Windows:
  - Wise Installation System 9.02
  - WinZip and WinZip Self Extractor
  - Microsoft Word 2003
  - DocToHelp 2006 v3 (build 3.0.313)
  - Microsoft Access 97 (optional)
  - ESRI Arc (optional)
  - Axialis IconWorkshop 6 (optional)
  - Microsoft PhotoDraw
  - CCRP CoolTools (optional)
* FORTRAN MCDS engine:
  - Compaq Digital Fortran 6.6 Professional
  - Array Visualizer (optional)
* R DSM and MRDS engines:
  - R 3.0.2
  - Unix "tools"
  - Windows HTML Help Workshop 
  - Tinn-R (optional)
* General
  - VMWare (optional)
  - Textpad (optional)

There are a number of issues with the process:

* Some tools are missing. For example:
  - [testthat](http://cran.r-project.org/web/packages/testthat/index.html), for testing as recommended on the [DistanceDevelopment web-site](http://distancedevelopment.github.io/dev-Testing-howto.html)
  - [packrat](https://github.com/rstudio/packrat), for dependency management as recommended on the [DistanceDevelopment web-site](http://distancedevelopment.github.io/dev-packrat.html).
  - [RStudio](http://www.rstudio.com/), for checking the .Rmd [R Markdown](http://rmarkdown.rstudio.com/) files and data files linked from [Distance for R](http://distancesampling.org/R/index.html).
  - [ActiveState Perl](http://www.activestate.com/Products/ActivePerl/Download.html), listed in `%BASE%Extras\Internal Documentation\CVS stuff\compiling R modules.txt`.
* Information is out of date e.g. p56 lists R Unix "tools" as part of the required tools for R development with a link to http://www.murdoch-sutherland.com/Rtools/. Rtools are now hosted at http://cran.r-project.org/bin/windows/Rtools/.
* Some products are proprietary and rely on developer's contacting a named member of the Distance development team for CDs.
* Version numbers recommended are very specific e.g. Doc-to-Help 2006 v3 (build 3.0.313). It is unclear for what products other, more recent, versions would be suitable.
* Some products, notably the Wise Installation System have been discontinued (in this case as the company no longer trades).

This provides a major challenge to bringing on board new developers. The Distance team are aware of these challenges and are exploring alternatives. It is for this reason that a VMWare virtual machine, with the tool-set already installed, is provided to new Distance developers within St. Andrews. 

Provide a "clean" virtual machine
---------------------------------

One of the issues with the VM as it stands is the mix, already noted of old, new, temporary, work-in-progress files and the lack of revision control. Adopting revision control, and providing new developers with a virtual machine with all the software required already installed but awaiting them to check out the Distance source code from its repositories would provide new developers with a cleaner, lighter-weight VM with which to start development.

----------------------------------------------------------------------

Additional documentation recommendations
========================================

Put Required knowledge in its own section
-----------------------------------------

The developer's manual, p5, describes the required knowledge that a developer needs, including Microsoft Component Object Model (COM), Visual Basic 6.0, data access objects, FORTRAN 77 and 90, R. This should be in a section of its own so it is more visible.

Add GIS to required knowledge
-----------------------------

Knowledge of GIS concepts and ESRI shapefiles may also be required. The [Distance Extras](http://distancesampling.org/distanceextras.html) web page provides links to:

* ESRI Shapefile Technical Description which describes the internal format of a shapefile.
* Spatial data handling in R cheatsheet.

which might be appropriate links to add also.

Add packrat, testthat and RStudio to tools
------------------------------------------

The developer's manual, p56, lists R and Unix "tools" as part of the required tools for R development. Developers should also be recommended to get:

* [testthat](http://cran.r-project.org/web/packages/testthat/index.html), for testing as recommended on the [DistanceDevelopment web-site](http://distancedevelopment.github.io/dev-Testing-howto.html)
* [packrat](https://github.com/rstudio/packrat), for dependency management as recommended on the [DistanceDevelopment web-site](http://distancedevelopment.github.io/dev-packrat.html).
* [RStudio](http://www.rstudio.com/), for checking the .Rmd [R Markdown](http://rmarkdown.rstudio.com/) files and data files linked from [Distance for R](http://distancesampling.org/R/index.html).

Update link to Rtools
---------------------

The developer's manual, p56, lists R Unix "tools" as part of the required tools for R development:

> Get the latest version from http://www.murdoch-sutherland.com/Rtools/. Choose "package authoring installation"

Rtools are now hosted at http://cran.r-project.org/bin/windows/Rtools/.

Pull out Appendix - Inside Distance into a stand-alone document
---------------------------------------------------------------

The user's guide, Appendix - Inside Distance, p289-296 is a work-in-progress section documenting the internals of Distance for Windows. It also contains information of interest to advanced users e.g.

* Distance data file, `DistData.mdb` and database schema.
* How to update `DistData.mdb` using versions of Microsoft Access 2000+. 
* How to link to external data from `DistData.mdb` especially text files and Excel via Microsoft Jet drivers.

The developer's manual, contains similar information in far greater detail. This could be pulled out into a stand-alone document. This document can then serve as a guide for advanced users and for developers. It would also contribute to making the user's guide less monolithic.

Combine internal components list and table
------------------------------------------

The developer's manual, p8-9, provides a bulleted list with overview of each type of internal component. This is followed by a table listing each filename, with a description, its location on the VM, and the type of component (e.g. Visual Basic, FORTRAN or R). It would be useful to combine the list and the table by adding the description for each type of component as a single field, spanning multiple columns, before the rows describing each component of that type.

Separate external components into types
---------------------------------------

The developer's manual, p12, provides a list of external components. These could be grouped, like the internal components, into types, or at least into GUI, Input/Output and Miscellaneous components. Likewise, a distinction can be made between those external components used in Distance for Windows and those used specifically for the FORTRAN MCDS engine.

Remove incomplete or unwritten doc
----------------------------------

The user's guide, MRDS Analysis Guidelines, p154, and DSM Analysis Guidelines, p175, both show a "CONTENTS UNDER CONSTRUCTION" image.

Appendix - Inside Distance, p289, comments:

> The information here is preliminary, and will be expanded in future releases.

Similarly, the [DistanceDevelopment web-site](http://distancedevelopment.github.io) has:

> Variance in progress
> Integrals in progress
> LeftTruncation in progress

The [Prediction](http://distancedevelopment.github.io/mrds-Prediction.html) page:

> Note: this article is unfinished.

It is unclear how long these sections have been under construction or have been pending completion. It's less distracting, and more succinct, just to not mention it at all until it has been written.

Add missing image to user's guide
---------------------------------

The user's guide, p51, has a missing image denoted by the text: 

> [picture of backup file message goes here]

Add link from DistanceDevelopment `README.md`
---------------------------------------------

Add a link from https://github.com/DistanceDevelopment/DistanceDevelopment.github.io/blob/master/README.md to http://distancedevelopment.github.io/ so a developer does not have to copy and paste the URL within their browser to visit the web-site.

Link to DistanceDevelopment web-site from package `README.md` files
-------------------------------------------------------------------

The [DistanceDevelopment web-site](http://distancedevelopment.github.io/) has content specific to MRDS and DSM as well as content applicable to all the R components (e.g. coding standards, testing).

A developer looking at the `mrds` repository, for example, may be unaware of this web-site and the information therein. Provide a link from each `README.md` file in the package-specific repositories to this web-site.

Make Creating a New Numerical Engine a stand-alone tutorial
-----------------------------------------------------------

The developer's manual, Creating a New Numerical Engine, p55-57, could be pulled out as a stand-alone tutorial or HOW-TO.

----------------------------------------------------------------------

Additional general recommendations
==================================

Automate upgrade support
------------------------

The user's guide, p311, states that:

> In previous versions of Distance, the CDS and MCDS engine required 5 header lines, and not six (because there was no bootstrap progress file). Also, the bootstrap file came before the plot file. So, if you have any code for calling previous versions, you'll need to update it to call the new version.

It can be useful to provide tools to help users and developers automatically upgrade from previous versions e.g. for the above this could be a script to convert command files to the 6 header line format mentioned above.

Host project resources in project, not personal, spaces
-------------------------------------------------------

Certain GitHub resources are hosted in David Miller's own GitHub repositories. For example:

* The `dsm` [wiki](https://github.com/DistanceDevelopment/dsm/wiki) has links to:
  - http://github.com/dill
  - http://dill.github.io/dsm/staticdocs/
  - https://github.com/dill/dsm/issues
* The `Distance` [wiki](https://github.com/DistanceDevelopment/Distance/wiki) has links to:
  - https://github.com/dill/Distance/issues

This can make it more difficult for other members of a project to access these project-specific resources, or update them if needed. It can also prove problematic as it increases the number of resources used by a project and incurs a greater maintenance overhead and risk of project resources stagnating.

Add copyright and licence statements to each R repository
---------------------------------------------------------

Despite being public, none of the R source code repositories describe the copyright or licensing of their contents. While the licences are listed on the corresponding CRAN pages for `mrds`, `dsm`, `Distance` and `DSim` - all are GNU Public Licence - a developer may not think to look there. They may assume that they cannot reuse or modify the R code as if code does not have an open source licence it cannot be considered open source.

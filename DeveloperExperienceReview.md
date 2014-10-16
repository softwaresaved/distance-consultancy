Developer Experience Review
===========================

Mike Jackson, The Software Sustainability Institute / EPCC, The University of Edinburgh

Introduction
------------

[The Distance project](http://distancesampling.org) provides software, Distance, for the design and analysis of distance sampling surveys of wildlife populations. Distance is used by biologists, students, and decision makers to better understand animal populations without the need for these users to have degrees in statistics or computer science. 

Distance consists of a Visual Basic interface on top of analysis engines written in FORTRAN, the statistical programming language R, and ESRI MapObjects. These all feed from a shared Microsoft Access database. Distance is distributed as both a Windows-based program and a suite of packages for R. The Windows version provides a GUI.

This report presents a review of Distance's resources for developers. The following information, of interest to developers, was sought:

* Technical information, including:
  - Folder, file and database formats. Both those used by users and those used internally by Distance. This includes input and output files, image files and log files.
  - Interfaces between Distance for Windows, FORTRAN and R
  - API documentation.
  - Dependencies on third-party software.
* Process information, including:
  - Source code management.
  - Coding standards.
  - Testing protocols.
  - Release processes for Distance for Windows and R packages on CRAN.

Architecture and design information including major components and the interfaces between these will be the subject of a separate report.

The review was undertaken between 06/10/14 and TODO/10/14. Please contact the reviewer at m.jackson@software.ac.uk if you have any queries.

Resources consulted
-------------------

The following resources were consulted:

* Distance for Windows 6.2.
* Distance R packages.
* 'Distance 6.2. Release 1 User's Guide'. This is available:
  - Via Distance 6.2 by selecting Help => Online Manuals => User's Guide (pdf).
  - In the installation directory, `C:\Program Files (x86)\Distance 6\Help\distance.pdf`.
* [Distance Extras](http://distancesampling.org/distanceextras.html) web page.
* Len Thomson and Laura Marshall. Developers Manual, Distance, Research Unit for Wildlife Population Assessment University of St Andrews. DistanceDevelopersManual.pdf. Forwarded by David Miller on 31/07/14.
  - The manual is incomplete and out-of-date and so it is not clear how accurate the information is.
* Distance Windows XP Pro virtual machine. Forwarded by Eric Rextad on 06/10/14.
* [DistanceDevelopment](https://github.com/DistanceDevelopment/) GitHub project. This includes:
  - GitHub repositories for Distance's R packages.
  - [DistanceDevelopment web-site](http://distancedevelopment.github.io).

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

Mention `.dst` file format in user's guide
------------------------------------------

The Distance project, `.dst`, file is the only file whose format is not documented in the user guide. Opening one in Notepad showed the text:

    Standard Jet DB

which implied it was a Microsoft Jet engine file. Renaming a project file to have a suffix `.mdb` and opening it in Microsoft Access revealed it to be an Access database file. This was then confirmed by reading the developer's manual. For completeness, mention that this is a Jet engine database file in the user's guide.

----------------------------------------------------------------------

Move developer information to wikis or revision control
=======================================================

At the outset of the developer's manual, p5 states that:

> To be useful, it is vital that this document stays up to date. Since Distance is actively being developed, the chapters that make up this document are expected to change over time. Please do your part in making sure it stays current, and report or correct any inconsistencies or inaccuracies. If you change anything, please document what you do in the section Change Log at the end of each chapter.

Change log entries across the whole manual date between 2005-2009. Whether there has been any changes since then, and authors have just not updated the change logs or there have been no updates at all, is unclear.

Moving the developer information to a wiki or putting it under revision control would deliver in-built change tracking. It can offer a number of other benefits:

* It becomes less monolithic - rather than a single Microsoft Word document, it is spread across a number of folders and files and/or pages.
* It may become easier for, or encourage, all members of the team to contribute to its growth e.g. filling in gaps in information or correcting errors as they arise.

A number of options are available. As GitHub is already being used for project resources, GitHub's offerings are discussed along with others I've experience of.

GitHub repository and MarkDown:

* Edit pages as raw [GitHub-flavoured markdown](https://help.github.com/articles/github-flavored-markdown/) locally.
* Manage pages using revision control.
* GitHub renders GitHub-flavoured markdown.
* Supports embedded images.
* Can only browse rendered content via internet.

GitHub wiki and MarkDown:

* Edit pages as raw GitHub-flavoured markdown locally or within web browser.
* Online editor has a Preview option.
* Manage pages using revision control:
  - Wiki can be cloned and edited as MarkDown documents in a Git repository.
  - e.g. `git clone https://github.com/DistanceDevelopment/mrds.wiki.git`
  - See [adding and editing wiki pages locally](https://help.github.com/articles/adding-and-editing-wiki-pages-locally/)
* Supports embedded images:
  - However, image links need to be absolute URLs hosted in another repository.
  - See [adding images to wikis](https://help.github.com/articles/adding-images-to-wikis/).
* Can only browse rendered content via internet.

GitHub `gh-pages` and MarkDown/HTML:

* Edit pages as raw GitHub-flavoured markdown and/or HTML.
* Manage pages using revision control.
* GitHub converts GitHub-flavoured MarkDown or HTML into a web-site.
* Supports embedded images.
* Can install tools GitHub uses to create local copy of the web-site which can then be shipped to users/developers for offline browsing.

More investigation is needed to determine the support the above have for auto-generating a PDF from the rendered MarkDown or HTML (though for GitHub `gh-pages`, an HTML->PDF converter would suffice), its support for converting local links into cross-references, building tables of contents and indexes etc.

[DocBook](http://www.docbook.org/) is a powerful mark-up language for technical documentation:

* Edit pages as XML.
* Managing pages using revision control is optional but, as for all raw sources, recommended.
* DocBook can compile XML into PDF, HTML, Microsoft Compiled HTML Help.
* Supports embedded images, tables of contents, indexes, cross-references, conditional content etc.
* Powerful, but complex.

Raw HTML:

* Managing pages using revision control is optional but, as for all raw sources, recommended.
* Supports embedded images.
* Tables of contents, indexes, cross-references, conditional content would have to be implemented manually.
* A number of HTML -> PDF convertors are available (e.g. [Prince](http://www.princexml.com/) which is free for non-commercial use).

Any of the above proposals could also be adopted for the user's guide.

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

User's guide Appendix - MCDS Engine Reference p307-344 thoroughly documents the FORTRAN MCDS engine, `MCDS.exe`, used by Distance for CDS and MCDS analyses. As this is a stand-alone program in its own right, pull this Appendix out into a stand-alone MCDS Engine user guide. This would also make the user's guide less monolithic.

Update reference on how to run MCDS from another program
--------------------------------------------------------

User's guide p309 states that:

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

The user's guide p290 has a diagram of the database engine's (`D4DbEng.dll`) public classes. The developer's manual p30-45 provides a more detailed description of the database engine API including its classes, properties and methods.

Auto-generate API documentation
-------------------------------

Auto-generating API documentation directly from the source code means that there is no risk of the documentation becoming out-of-synch with the code.

[Doxygen](http://www.stack.nl/~dimitri/doxygen), a popular code documentation generator, can be used to generate HTML. It also outputs API documentation as RTF, PDF or Windows 98 Help (see [Output Formats](http://www.stack.nl/~dimitri/doxygen/manual/output.html)). It can be used as-is for FORTRAN. There are [helper tools and scripts](http://www.stack.nl/~dimitri/doxygen/helpers.html) that convert Visual Basic code into a format Doxygen can process.

Other options for Visual Basic include:

* [VBDOX](http://vbdox.sourceforge.net/) - free open source.
* [VBdocman](http://www.helixoft.com/vbdocman/overview.html) - 14 day free trial

Provide API documentation as HTML
---------------------------------

API documentation is more usable as a set of hyperlinked documents, to allow classes, properties, functions, modules and subroutines to be explored via a browser. 

Such documentation can either be bundled within Distance, or as a separate bundle, for developers only, so users don't download files they'll never use.

----------------------------------------------------------------------

Dependencies on third-party software
====================================

Some third-party dependencies are mentioned in the user's guide e.g. Microsoft Windows, FORTRAN, R, Microsoft Jet 3.51 engine file, as also used by MS Access 97, Microsoft Jet 3.51 IISAM (Installable Indexed Sequential Access Method) drivers for Microsoft Access 97, tabular text files and Excel.

The developer's manual provides:

* List of Development Environments p7 e.g. Microsoft Visual Basic 6, Compaq Visual Fortran, R.
* List of External Components p12 e.g. Microsoft DAO,  ESRI MapObjects, Polar Software PolarZip and many others.
* List of Required or Useful Support Programs p14 e.g. Wise Installation System Doc-To-Help, Adobe Acrobat etc.

List origins and versions of tools and external components
----------------------------------------------------------

It would be useful to extend such lists with links to product or component web-sites and information about any recommended versions.

----------------------------------------------------------------------

Source code management
======================

R scripts
---------

R source code is held in public Git repositories on GitHub, under the [DistanceDevelopment](https://github.com/DistanceDevelopment/) project. This includes the `mrds` and `dsm` packages used by Distance for Windows.

Add R vignettes to GitHub
-------------------------

The [Distance for R](http://distancesampling.org/R/index.html) web page provides a collection of R vignettes, or examples. These consist of [R Markdown](http://rmarkdown.rstudio.com/) (`.Rmd`) files and comma-separated value (`.csv`) datta files.

These are dependant upon the R source code. They may fail to run if the R source code changes. They may also contain other bugs that users, or other developers, may identify. Holding them under revision control allows for their dependence upon the R source code to managed more systematically. For example branches, and a suitable naming scheme, could be used to keep versions in-synch with the R source code which they use.

Add copyright and licence statements to each R repository
---------------------------------------------------------

Despite being public, none of the R source code repositories describe the copyright or licensing of their contents. While the licences are listed on the corresponding CRAN pages for `mrds`, `dsm`, `Distance` and `DSim` - all are GNU Public Licence - a developer may not think to look there. They may assume that they cannot reuse or modify the R code as if code does not have an open source licence it cannot be considered open source.

FORTRAN
-------

TODO

* Developer's manual p9 http://sourceforge.net/projects/distanceengines/, redirects to https://github.com/jlaake/mrds
* Look at VM

Visual Basic
------------

TODO - look at VM

Put all manually-created project resources under revision control
-----------------------------------------------------------------

TODO - look at VM and complete the list

The developer's manual provides a List of Non-code Parts of Distance p13 and their file types. These include:

* User guide - Microsoft Word documents.
* Developer's manual - Microsoft Word documents.
* Worklist, resolved and known problems - Microsoft Word documents.
* Sample projects - Distance project file and folders.
* Setup scripts - Wise installation system scripts.
* Release notes - Rich Text Format.
* Splash screen graphic - Microsoft Image Composer files.
* Icons for the GUI - ICO files.

All these are created by hand. Other project resources that are created by hand include:

* Class diagrams e.g. user's guide, p290, `D4DbEng.dll`'s public classes.
* Component and structure diagrams e.g. developer's manual, p8, Distance components;  user's guide, p48, and developers manual, p16, structure of a Distance project etc.

Many of these resources are dependant upon the source code whether that be individual Visual Basic, FORTRAN or R components or Distance for Windows versions as a whole. Holding them under revision control allows for this dependence to managed more systematically. For example branches, and a suitable naming scheme, could be used to keep the user's guide in-synch with the version of Distance for Windows to which it applies - when a release of Distance for Windows is done, tags could be created in each of the repositories to snapshot the resources used to create that release.

----------------------------------------------------------------------

Coding standards
================

Visual Basic
------------

Developer's manual, Writing Code for Distance - Coding Conventions p52 lists

> VB code conventions go here! - currently in E:\Distance50Extras\Internal Documentation\Old\Coding conventions

TODO - look at VM

Microsoft provide a set of [Visual Basic Coding Conventions](http://msdn.microsoft.com/en-us/library/h63fsef3.aspx).

FORTRAN
-------

Developer's manual, Writing Code for Distance - Coding Conventions p52 lists `None at present`.

TODO - look at VM

There is no standard set of FORTRAN coding standards. However, [Fortran Best Practices](http://www.fortran90.org/src/best-practices.html) proposes a 'modern canonical way of doing things'.

R scripts
---------

Developer's manual, Writing Code for Distance - Coding Conventions p52 lists `None at present`. However, the DistanceDevelopment web-site has R [Coding Conventions](http://distancedevelopment.github.io/dev-Coding-Conventions.html) covering variables, functions and formatting.

TODO - add official R, if any, and also any CRAN ones

----------------------------------------------------------------------

Testing protocols
=================

[Distance Extras](http://distancesampling.org/distanceextras.html) provides links to Distance-related tools and downloads. As these are unsupported components they are not tested for compatibility with new Distance releases as they appear.

Distance for Windows
--------------------

TODO - look at VM

Visual Basic
------------

TODO - look at VM

FORTRAN
-------

TODO - look at VM

Introduce FORTRAN tests
-----------------------

TODO - look at VM

TODO - Introduce tests e.g. generate FORTRAN command and data files using Distance for Windows, archive outputs and automate MCDS.exe execution and validation of results.

For a survey of FORTRAN test frameworks, see The Software Sustainability Institute blog post on [A look at FORTRAN unit test frameworks](http://www.software.ac.uk/blog/2014-07-22-look-fortran-unit-test-frameworks)

R scripts
---------

The DistanceDevelopment web-site has R [How to add a test to mrds](http://distancedevelopment.github.io/dev-Testing-howto.html) describes the use of the [testthat](http://cran.r-project.org/web/packages/testthat/index.html) package.

TODO

* Add official R and also any CRAN ones
* Add commands e.g. BUILD and CHECK_FOR_CRAN so it passes CRAN's tests
* You should test your code on the latest R-devel release of R.

<p/>

    R CMD build yourCodeDir
    R CMD check --as-cran yourCode.tar.gz

* Follow everything in here to the letter, http://cran.r-project.org/doc/manuals/r-release/R-exts.html

Generalise testthat advice
--------------------------

At present, the advice is for the `mrds` package but there is no reason why the information could not be made generally applicable to all R packages.

Update link to testthat
-----------------------

The page at https://github.com/hadley/devtools/wiki/Testing, linked from http://distancedevelopment.github.io/dev-Testing-howto.html, now asks users to go to http://r-pkgs.had.co.nz/tests.html. However, there is also a CRAN page at http://cran.r-project.org/web/packages/testthat/index.html.

----------------------------------------------------------------------

Release processes
=================

Distance for Windows
--------------------

TODO

* Look at developer's manual and VM
* Developer's manual, Non-code infrastructure, Worklist, resolved and known problems p13
  - KnownProblems. Greyed out when fixed, transferred to ResolvedProblems during release
  - ResolvedProblems Part of ReadMe.rtf
* Non-code infrastructure, Sample projects p14
  - `%BASE%Extras\Sample Projects Backup`
  - `\Release` - sample projects - these should not be opened or edited unless it is to update them ready for a new release

R packages on CRAN
------------------

TODO - look at developer's manual and VM

From the GitHub repositories for the R packages, there is an implied release process:

* A `NEWS` file is updated with the version number and a list of changes and bug fixes for that version. e.g. `mrds`, [NEWS](https://github.com/DistanceDevelopment/mrds/blob/master/NEWS).
* Every release is put in a 'releases' part of the repository. e.g. `mrds`,  [releases](https://github.com/DistanceDevelopment/mrds/releases).
* A tag is created for 'releases', Distance6.2 releases or CRAN releases e.g. for `mrds` tags include `mrds-2.1.11`, `Distance6.2`, `CRAN-2.1.10`, `CRAN-2.1.6`.

The use of such tags makes it easy to determine which versions are in Distance for Windows and which are on CRAN. As a contrast, `DSsim` is on [CRAN](http://cran.r-project.org/web/packages/DSsim/index.html) but the GitHub repository has no tags, releases or NEWS items.

Document the R release process
------------------------------

The R package release process should be expanded and documented. An appropriate place is within the [DistanceDevelopment](https://github.com/DistanceDevelopment/) GitHub project so it appears on the [DistanceDevelopment web-site](http://distancedevelopment.github.io).

----------------------------------------------------------------------

Additional recommendations
==========================

Automate upgrade support
------------------------

User's guide p311 states that:

> In previous versions of Distance, the CDS and MCDS engine required 5 header lines, and not six (because there was no bootstrap progress file). Also, the bootstrap file came before the plot file. So, if you have any code for calling previous versions, you'll need to update it to call the new version.

It can be useful to provide tools to help users and developers automatically upgrade from previous versions e.g. for the above this could be a script to convert command files to the 6 header line format mentioned above.

Pull out Appendix - Inside Distance into a stand-alone document
---------------------------------------------------------------

The user's guide Appendix - Inside Distance p289-296 is a work-in-progress section documenting the internals of Distance for Windows. It also contains information of interest to advanced users e.g.

* Distance data file, `DistData.mdb` and database schema.
* How to update `DistData.mdb` using versions of Microsoft Access 2000+. 
* How to link to external data from `DistData.mdb` especially text files and Excel via Microsoft Jet drivers.

The developer's manual, contains similar information in far greater detail. This could be pulled out into a stand-alone document. This document can serve as a guide for advanced users and for developers. It would also contribute to making the user's guide less monolithic.

Combine internal components list and table
------------------------------------------

The developer's manual p8-9 provides a bulleted list with overview of each type of internal component. This is followed by a table listing each filename, with a description, its location, and the type of component (e.g. VB, FORTRAN or R). It could be preferable to combine the list and the table by adding the description for each type of component as a single field, spanning multiple columns, before the rows describing each component of that type.

Separate external components into types
---------------------------------------

The developer's manual p12 provides a list of external components. These could be grouped, like the internal components, into types, or at least into GUI, Input/Output and Miscellaneous components. Likewise a distinction can be made between those external components used in Distance for Windows and those used specifically for the FORTRAN MCDS engine.

Remove incomplete or unwritten doc
----------------------------------

The user's guide MRDS Analysis Guidelines p154 and DSM Analysis Guidelines p175 both show a "CONTENTS UNDER CONSTRUCTION" image.

Appendix - Inside Distance p289 comments:

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

User's guide p51 has a missing image denoted by the text: 

> [picture of backup file message goes here]

Add link from DistanceDevelopment `README.md`
---------------------------------------------

Add a link from https://github.com/DistanceDevelopment/DistanceDevelopment.github.io/blob/master/README.md to http://distancedevelopment.github.io/ so a developer does not have to copy and paste the URL in to visit the web-site.

Link to DistanceDevelopment web-site from package `README.md` files
-------------------------------------------------------------------

The [DistanceDevelopment web-site](http://distancedevelopment.github.io/) has content specific to MRDS and DSM as well as content applicable to all the R components (e.g. coding standards, testing).

A developer looking at the `mrds` repository, for example, may be unaware of this web-site and the information therein. Provide a link from each `README.md` file in the package-specific repositories to this web-site.

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


Concern about monolithic user and developer guides
--------------------------------------------------

User and developer guide overlaps
Concern about duplication, maintenance, stagnation - cf. [User experience review](./UserExperienceReview.md) (in Reduce duplication between release notes and the web-site)
Developer guide covers: required knowledge, set up of development environment, internal and external components, Distance database schema, release process, 

Put Required knowledge in its own section
-----------------------------------------

Developer's manual p5 describes the required knowledge that a developer needs, including Microsoft Component Object Model (COM), Visual Basic 6.0, data access objects, FORTRAN 77 and 90, R. This should be in a section of its own so it is more visible.

Add GIS to required knowledge
-----------------------------

Knowledge of GIS concepts and ESRI shapefiles may also be required. The [Distance Extras](http://distancesampling.org/distanceextras.html) web page provides links to:

* ESRI Shapefile Technical Description which describes the internal format of a shapefile.
* Spatial data handling in R cheatsheet.

which might be appropriate links to add also.

Add packrat, testthat and RStudio to tools
------------------------------------------

The developer's manual p56 lists R and Unix "tools" as part of the required tools for R development. Developers should also be recommended to get:

* [testthat](http://cran.r-project.org/web/packages/testthat/index.html), for testing as recommended on the [DistanceDevelopment web-site](http://distancedevelopment.github.io/dev-Testing-howto.html)
* [packrat](https://github.com/rstudio/packrat), for dependency management as recommended on the [DistanceDevelopment web-site](http://distancedevelopment.github.io/dev-packrat.html).
* [RStudio](http://www.rstudio.com/), for checking the .Rmd [R Markdown](http://rmarkdown.rstudio.com/) files and data files linked from [Distance for R](http://distancesampling.org/R/index.html).

Update link to Rtools
---------------------

The developer's manual p56 lists R Unix "tools" as part of the required tools for R development:

> Get the latest version from http://www.murdoch-sutherland.com/Rtools/. Choose "package authoring installation"

Rtools are now hosted at http://cran.r-project.org/bin/windows/Rtools/.

Make Creating a New Numerical Engine a stand-alone tutorial
-----------------------------------------------------------

The developer's manual section on Creating a New Numerical Engine p55-57 could be pulled out as a stand-alone tutorial or HOW-TO.

----------------------------------------------------------------------

How to build R components
=========================

Find out tool versions
----------------------

R:

* Run:

<p/>

    R --version
    R version 3.1.0 (2014-04-10) -- "Spring Dance"

Build R DSM and MRDS analysis engines
-------------------------------------

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

    R CMD INSTALL --build dsm_M.N.R.tar.gz
    R CMD INSTALL --build mrds_M.N.R.tar.gz

* Major version number (M), minor version number (N), revision number (R) depend on Version value in DESCRIPTION file e.g.
  - For DSM, `Version: 2.2.3`
  - For MRDS, `Version: 2.1.5`

Copy R packages for use in Visual Basic and release
---------------------------------------------------

Copy files:

<p/>

    copy %BASE%\Analysis Engines\DSM\Engine\dsm_M.N.R.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\
    copy %BASE%\Analysis Engines\MRDS\Engine\mrds\mrds_M.N.R.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\


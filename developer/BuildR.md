---
layout: page
root: ..
title: How to build R components
---

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

* Check package (--no-manual suppresses an attempt to build a PDF of the manual):

<p/>
    R CMD --no-manual check dsm
    R CMD --no-manual check mrds

* Check package for CRAN compliance:

<p/>

    R CMD check --as-cran dsm
    R CMD check --as-cran mrds

* Install source package and build zip (--build):

<p/>

    R CMD INSTALL --build dsm
    R CMD INSTALL --build mrds

* The above installs the package into the R library. To install one elsewhere run e.g.

<p/>

    mkdir local
    R CMD INSTALL -l local --build dsm
    R CMD INSTALL -l local --build mrds

* The zip files will be named:

<p/>

    dsm_M.N.R.zip
    mrds_M.N.R.zip

* Major version number (M), minor version number (N), revision number (R) depend on Version value in DESCRIPTION file e.g.
  - For DSM, `Version: 2.2.3`
  - For MRDS, `Version: 2.1.5`

Install source package and build zip via package
------------------------------------------------

Alternatively, one can build a .tar.gz package:

* Build package tar.gz:

<p/>

    R CMD build dsm
    R CMD build mrds

* Install source package and build zip (--build) from package:

<p/>

    R CMD INSTALL --build dsm_M.N.R.tar.gz
    R CMD INSTALL --build mrds_M.N.R.tar.gz

Copy R packages for use in Visual Basic and release
---------------------------------------------------

* Copy files:

<p/>

    copy %BASE%\Analysis Engines\DSM\Engine\dsm_M.N.R.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\
    copy %BASE%\Analysis Engines\MRDS\Engine\mrds\mrds_M.N.R.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\

* The following Visual Basic components depend on finding these files in this directory:
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\RProcess.cls
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\InputFileMakerUtils.cls
  - These are bundled in DnnnnNEIUtil.dll

How to write tests
------------------

Distance's R tests are written in [testthat](http://cran.r-project.org/web/packages/testthat). For more information see:

* [Testing](http://r-pkgs.had.co.nz/tests.html)
* [testthat: Get Started with Testing](http://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf)
* Distance tests in [dsm\tests](https://github.com/DistanceDevelopment/dsm/tree/master/tests) and [mrds\tests](https://github.com/DistanceDevelopment/mrds/tree/master/tests)

How to run tests from within R
------------------------------

* Start R
* Load the testthat library:

<p/>

    library(testthat)

* Load your package, e.g.:

<p/>

    library(dsm)

* Change into the package's directory using setwd.
* To run all the tests in a file do, e.g.:

<p/>

    test_file("tests/testthat/test_input.R")

* To run all the tests in a directory do, e.g.:

<p/>

    test_file("tests/testthat/")

* To display only a '.' for passed tests and 'E' for failed tests add a 'minimal' argument, e.g.:

<p/>

    test_file("tests/testthat/test_input.R", "minimal")

How to run tests from outwith R
-------------------------------

* Within the package's tests directory, write a testthat.R file with the content:

<p/>

    library(testthat)
    library(PACKAGENAME)
    test_check("PACKAGENAME")

* From a command prompt, change into the tests directory, e.g.

<p/>

    chdir dsm\tests\

* Run:

<p/>

    R -file testthat.R

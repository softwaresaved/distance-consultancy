---
layout: page
root: ..
title: How to build R components
---

## Find out tool versions

R:

* Run:

<p/>

    R --version
    R version 3.1.0 (2014-04-10) -- "Spring Dance"

---

## Build R DSM and MRDS analysis engines

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into R package folder:

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

---

## Build R DSM and MRDS analysis engines from within R

* Start R
* Load the devtools library:

<p/>

    library(devtools)

* Check package (--no-manual suppresses an attempt to build a PDF of the manual):

<p/>

    check("dsm", args="--no-manual")
    check("mrds", args="--no-manual")

* Install source package:

<p/>

    install("mrds")
    install("dsm")

* Build zip:

<p/>

    build("dsm",binary=T)
    build("mrds",binary=T)

* The zip files will be named:

<p/>

    dsm_M.N.R.zip
    mrds_M.N.R.zip

* Major version number (M), minor version number (N), revision number (R) depend on Version value in DESCRIPTION file e.g.
  - For DSM, `Version: 2.2.3`
  - For MRDS, `Version: 2.1.5`

---

## Create R DSM and MRDS Roxygen documentation

* Start R
* Change into the parent of the directory for which documentation is to be created

* Load the devtools library:

<p/>

    library(devtools)
   
* Load the files into a package environment e.g.

<p/>

    load_all("dsm")
    load_all("mrds")

* Document the package e.g.

<p/>

    document("dsm")
    document("mrds")

---

## Run DSM and MRDS examples

* Start R
* Change into the parent of the directory for which documentation is to be created

* Load the devtools library:

<p/>

    library(devtools)

* Load the files into a package environment e.g.

<p/>

    load_all("dsm")
    load_all("mrds")

* Run the examples e.g.

<p/>

    run_examples("dsm")
    run_examples("mrds")

---

## Install source package and build zip via package

Alternatively, one can build a .tar.gz package:

* Build package tar.gz:

<p/>

    R CMD build dsm
    R CMD build mrds

* Install source package and build zip (--build) from package:

<p/>

    R CMD INSTALL --build dsm_M.N.R.tar.gz
    R CMD INSTALL --build mrds_M.N.R.tar.gz

---

## Copy R packages for use in Visual Basic and release

* Copy files:

<p/>

    copy %BASE%\Analysis Engines\DSM\Engine\dsm_M.N.R.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\
    copy %BASE%\Analysis Engines\MRDS\Engine\mrds\mrds_M.N.R.zip %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\

* The following Visual Basic components depend on finding these files in this folder:
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\RProcess.cls
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\InputFileMakerUtils.cls
  - These are bundled in DnnnnNEIUtil.dll

---

## How to write tests

Distance's R tests are written in [testthat](http://cran.r-project.org/web/packages/testthat). For more information see:

* [Testing](http://r-pkgs.had.co.nz/tests.html)
* [testthat: Get Started with Testing](http://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf)
* Distance tests in [dsm\tests](https://github.com/DistanceDevelopment/dsm/tree/master/tests) and [mrds\tests](https://github.com/DistanceDevelopment/mrds/tree/master/tests)

---

## How to run tests from within R

* Start R
* Load the testthat library:

<p/>

    library(testthat)

* Load your package, e.g.:

<p/>

    library(dsm)

* Change into the package's folder using setwd.
* To run all the tests in a file do, e.g.:

<p/>

    test_file("tests/testthat/test_input.R")

* To run all the tests in a folder do, e.g.:

<p/>

    test_file("tests/testthat/")

* To run all the tests in a package do, e.g.:

<p/>

    test_package("dsm")

* To display only a '.' for passed tests and 'E' for failed tests add a 'minimal' argument, e.g.:

<p/>

    test_file("tests/testthat/test_input.R", "minimal")

---

## How to run tests from outwith R

* Within the package's tests folder, write a testthat.R file with the content:

<p/>

    library(testthat)
    library(PACKAGENAME)
    test_check("PACKAGENAME")

* From a command prompt, change into the tests folder, e.g.

<p/>

    chdir dsm\tests\

* Run:

<p/>

    R -file testthat.R

---

## Run MRDS and DSM within R using captured input files

Within R GUI:

* Start R GUI
* Cut and paste in.r commands

Within R batch mode:

* Start R command prompt
* Run:

<p/>

    Rcmd.exe BATCH in.r log.r

---

## Capture MCDS and DSM input files from within Distance for Windows

* Select Tools => Preferences...
* Click Analysis tab
* Check Debug mode (create command files but don't run engine)
* Check Temp folder

If reusing files elsewhere check to ensure that any paths within the files are updated.

---

## Reproduce CDS and MCDS plots of detection function and pdf using R

* Within Distance for Windows, select Analysis - Results => Copy Plot to Clipboard
* Save clipboard contents to a text file e.g. plot.txt
* Run the following within R:

<p/>

    #this reads in the file just created
    forplot<-read.table(file="plot.txt", header=T, sep="\t", dec=".")
    #note, depending on your language, dec might be "," rather than "."
    #this plots the detection function or pdf (if point transects)
    plot(forplot$C1, forplot$C2, type="l", ylim=c(0,max(forplot$C4)),
    xlab="Distance", ylab="Detection probability")
    #Define labels as you wish
    #this adds in the data bars
    lines(c(0,0), c(forplot$C3[1], forplot$C4[1]))
    lines(forplot$C3, forplot$C4)

---

## Reproduce CDS and MCDS qq-plots using R

* Within Distance for Windows, select Analysis - Results => Copy Plot to Clipboard
* Save clipboard contents to a text file e.g. plot.txt
* Run the following within R:

<p/>

    #this reads in the file just created
    forplot<-read.table(file="plot.txt", header=T, sep="\t", dec=".")
    #note, depending on your language, dec might be "," rather than "."
    #this plots the detection function or pdf (if point transects)
    plot(forplot$C1, forplot$C2, type="p", ylim=c(0,max(forplot$C4)),
    pch = ".", xlab="Empirical distribution function",
    ylab="Fitted cumulative distribution function")
    #Define labels as you wish
    #this adds in the (0,0) (1,1) line
    lines(c(0,1), c(0,1))

---

## Reproduce MCDS plots of detection functions produced with non-factor covariates within using R

* Within Distance for Windows, select Analysis - Results => Copy Plot to Clipboard
* Save clipboard contents to a text file e.g. plot.txt
* Run the following within R:

<p/>

    #this reads in the file just created
    forplot<-read.table(file="plot.txt", header=T, sep="\t", dec=".")
    #note, depending on your language, dec might be "," rather than "."
    #this plots the detection function or pdf (if point transects)
    plot(forplot$C1, forplot$C2, type="l", ylim=c(0,1),
    xlab="Distance", ylab="Detection probability")
    #Define labels as you wish
    #this adds in other two lines
    lines(forplot$C3, forplot$C4, lty=2)
    lines(forplot$C5, forplot$C6, lty=3)

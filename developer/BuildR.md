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

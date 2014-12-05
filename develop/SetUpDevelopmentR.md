---
root: ..
layout: page
title: Set up R development environment
---

## R

* [R](http://www.r-project.org) 3.1.0 32-bit
* Develop and test R code e.g. MRDS and DSM analysis engines <br/> Build R packages via R CMD
* GNU General Public License

Install:

* Download R
  - [R for Windows (32/64 bit)](http://cran.r-project.org/bin/windows/base/) - current release is 3.1.2
  - [Previous Releases of R for Windows](http://cran.r-project.org/bin/windows/base/old/)
  - [R-3.1.0 for Windows (32/64 bit)](http://cran.r-project.org/bin/windows/base/old/3.1.0/)
* Double-click R-3.1.0-win.exe
* For installation path you may want to use one with no spaces e.g. C:\Programs\R\R-3.1.0

Update PATH (optional):

* Select Start => Control Panel
* Enter 'environment' in the search box and press RETURN
* Click Edit the system environment variables
* Click Advanced tab
* Click Environment Variables...
* Under User variables select PATH
* Click Edit...
* Add ;C:\Program Files\R\R-3.1.0\bin\i386 (or ;C:\Programs\R\R-3.1.0\bin\i386) to end of Variable value, taking care to remove trailing spaces
* Click OK
* Click OK
* Click OK

Create shortcuts (optional):

* Right-click on desktop
* Select New => Shortcut
* In Type the location of the item, enter 'Rterm'* Click Next
* In Type a name for this shortcut, enter 'Rterm i386'
* Click Finish
* Double-click Rterm i386

---

## Rtools

* [Rtools](http://cran.r-project.org/bin/windows/Rtools) 3.1
* Utilities for building R packages on Windows
* GNU General Public License v2

Install:

* Download from [Building R for Windows](http://cran.r-project.org/bin/windows/Rtools/)
* Double-click .exe e.g. Rtools31.exe
* Under Select Additional Tasks, check Edit the system PATH

---

## R packages

Install the following R packages using install.packages:

* [roxygen2](http://cran.r-project.org/web/packages/roxygen2/)
* Tools for auto-generating API documentation
* GNU General Public License 2 and 3

* [devtools](http://cran.r-project.org/web/packages/devtools/)
* Tools for preparing and creating R packages
* GNU General Public License 2 and 3
* Needs Rtools and roxygen2

* [testthat](http://cran.r-project.org/web/packages/testthat/)
* Unit testing framework
* MIT license

For example:

    install.packages("devtools")
    install.packages("roxygen2")
    install.packages("testthat")

Install the following R packages for MRDS:

* [optimx](http://cran.r-project.org/web/packages/optimx/)
* GNU General Public License 2

* [Rsolnp](http://cran.r-project.org/web/packages/Rsolnp/)
* GNU General Public License 2 and 3

For example:

    install.packages("optimx")
    install.packages("Rsolnp")

Install the following R packages for DSM:

* [ggplot2](http://cran.r-project.org/web/packages/ggplot2/)
* GNU General Public License 2

* [statmod](http://cran.r-project.org/web/packages/statmod/)
* GNU General Public License 2 and 3

* [tweedie](http://cran.r-project.org/web/packages/tweedie/)
* GNU General Public License 2 and 3

* [Distance](http://cran.r-project.org/web/packages/Distance/)
* GNU General Public License 2 and 3

* [mrds](http://cran.r-project.org/web/packages/mrds/)
* GNU General Public License 2 and 3
* You can install this locally during development

For example:

    install.packages("ggplot2")
    install.packages("statmod")
    install.packages("tweedie")
    install.packages("Distance")
    install.packages("mrds")

---

## Git for Windows

* [Git for Windows](http://msysgit.github.io/)
* R source code management using Git
* GNU Lesser-GPL

Install:

* Download from above by clicking on Download button
* Double-click .exe e.g. Git-1.9.4-preview20140929.exe
* Git Bash and Git GUI will both be installed

---

## RStudio (optional)

* [RStudio](http://www.rstudio.com/)
* Edit and run .Rmd [R Markdown](http://rmarkdown.rstudio.com/) files e.g. R vignettes on the [Distance](http://distancesampling.org) web site
* GNU Affero General Public License

Install:

* Download from [Download RStudio](http://www.rstudio.com/products/rstudio/download/) 
* Double-click .exe e.g. RStudio-0.98.1062.exe
* Select Destination Folder: C:\Program Files\RStudio (or C:\Programs\RStudio)
* Double-click RStudio

---

## Tinn-R Editor (optional)

* [Tinn-R Editor](http://sourceforge.net/projects/tinn-r/)
* Develop and test R code within a GUI
* GNU General Public License

---

## packrat (optional)

* [packrat](http://cran.r-project.org/web/packages/packrat/)
* R package dependency management
* GNU General Public License 2

Install:

* Start R
* Run:

<p/>

    if (!require("devtools")) install.packages("devtools")
    devtools::install_github("rstudio/packrat")

* For more information, see [Packrat Reproducible package management for R](http://rstudio.github.io/packrat/)

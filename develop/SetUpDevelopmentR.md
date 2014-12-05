---
root: ..
layout: page
title: Set up R development environment
---

## R

| Web site | [R](http://www.r-project.org) |
| -------- | ----------------------------- |
| Use | Develop and test R code e.g. MRDS and DSM analysis engines <br/> Build R packages via R CMD |
| Recommended version | 3.1.0, 32-bit |
| License | GNU General Public License |

Download and install:

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

| Web site | [Rtools](http://cran.r-project.org/bin/windows/Rtools) |
| -- | -- |
| Use | Utilities for building R packages on Windows |
| Recommended version | 3.1 |
| License | GNU General Public License v2 |

Download and install:

* Download from [Building R for Windows](http://cran.r-project.org/bin/windows/Rtools/)
* Double-click exe e.g. Rtools31.exe
* Under Select Additional Tasks, check Edit the system PATH

---

## R packages

Install the following R packages using install.packages:

| Package | |
| - | - |
| Web site | [roxygen2](http://cran.r-project.org/web/packages/roxygen2/) |
| Use | Tools for auto-generating API documentation |
| License | GNU General Public License 2 and 3 |
| | |
| Web site | [devtools](http://cran.r-project.org/web/packages/devtools/) |
| Use | Tools for preparing and creating R packages
| | Needs Rtools and roxygen2. |
| License | GNU General Public License 2 and 3 |
| | |
| Web site | [testthat](http://cran.r-project.org/web/packages/testthat/) |
| Use | Unit testing framework |
| License | MIT license |

For example:

    install.packages("devtools")
    install.packages("roxygen2")
    install.packages("testthat")

Install the following R packages for MRDS:

| Package | |
| - | - |
| Web site | [optimx](http://cran.r-project.org/web/packages/optimx/) |
| License | GNU General Public License 2 |
| | |
| Web site | [Rsolnp](http://cran.r-project.org/web/packages/Rsolnp/) |
| License | GNU General Public License 2 and 3 |

For example:

    install.packages("optimx")
    install.packages("Rsolnp")

Install the following R packages for DSM:

| Package | |
| - | - |
| Web site | [ggplot2](http://cran.r-project.org/web/packages/ggplot2/) |
| License | GNU General Public License 2 |
| | |
| Web site | [statmod](http://cran.r-project.org/web/packages/statmod/) |
| License | GNU General Public License 2 and 3 |
| | |
| Web site | [tweedie](http://cran.r-project.org/web/packages/tweedie/) |
| License | GNU General Public License 2 and 3 |
| | |
| Web site | [Distance](http://cran.r-project.org/web/packages/Distance/) |
| License | GNU General Public License 2 and 3 |
| | |
| Web site | [mrds](http://cran.r-project.org/web/packages/mrds/) |
|  | You can install this locally during development |
| License | GNU General Public License 2 and 3 |

For example:

    install.packages("ggplot2")
    install.packages("statmod")
    install.packages("tweedie")
    install.packages("Distance")
    install.packages("mrds")

---

## Git for Windows

| Web site | [Git for Windows](http://msysgit.github.io/) |
| - | - |
| Use | R source code management using Git |
| Recommended version | any |
| License | GNU Lesser-GPL |

Download and install:

* Download from above by clicking on Download button
* Double-click exe e.g. Git-1.9.4-preview20140929.exe
* Git Bash and Git GUI will both be installed

---

## RStudio (optional)

| Web site | [RStudio](http://www.rstudio.com/) |
| - | - |
| Use | Edit and run .Rmd [R Markdown](http://rmarkdown.rstudio.com/) files e.g. R vignettes on the [Distance](http://distancesampling.org) web site |
| Recommended version | any compliant with R above |
| License | GNU Affero General Public License |

Download and install:

* Download from [Download RStudio](http://www.rstudio.com/products/rstudio/download/) 
* Double-click exe e.g. RStudio-0.98.1062.exe
* Select Destination Folder: C:\Program Files\RStudio (or C:\Programs\RStudio)
* Double-click RStudio

---

## Tinn-R Editor (optional)

| Web site | [Tinn-R Editor](http://sourceforge.net/projects/tinn-r/) |
| - | - |
| Use | Develop and test R code within a GUI |
| Recommended version | - |
| License | GNU General Public License |

---

## packrat (optional)

| Web site | [packrat](http://cran.r-project.org/web/packages/packrat/) |
| - | - |
| Use | R package dependency management |
| Recommended version | - |
| License | GNU General Public License 2 |

Download and install:

* Start R
* Run:

<p/>

    if (!require("devtools")) install.packages("devtools")
    devtools::install_github("rstudio/packrat")

* For more information, see [Packrat Reproducible package management for R](http://rstudio.github.io/packrat/)

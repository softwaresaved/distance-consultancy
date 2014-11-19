---
layout: page
root: ..
title: Distance for Windows Quick Start Setup
---

This page provides a summary of the commands needed to install Distance for Windows and its pre-requisites.

As there can be problems with spaces in paths, non-space alternatives for paths are given in brackets.

Distance
--------

Download and install:

* Download Distance
* Double-click `d62setup.exe`
* Click About
* Click OK
* Click Setup
* Click Next
* Click I agree
* Select Destination Folder: `C:\Program Files (x86)\Distance 6` (or `C\Programs\Distance6`)
* Click Next
* Select Backup File Destination Folder: `C:\Program Files (x86)\Distance BACKUP` (or `C\Programs\Distance6\BACKUP`)
* Click Next
* Select Program Manager Group
 - Enter `Distance`
 - Select Common group (all users)
* Click Next
* Click Next
* Click Next
* Click Finish

Check:

* Click Start Menu
* Click Distance 6.2

Create shortcut:

* Browse to `C:\Program Files (x86)\Distance 6` (or `C:\Programs\Distance6`)
* Right-click `Distance.exe`
* Select Create shortcut 

Select default project folder (optional):

* Start Distance
* Select Tools => Preferences...
* Click General
* Enter Default project folder `C:\Users\you\Local Documents\DISTANCE\My Distance Projects`
* Click OK

R
-

Download and install:

* Download R
* Double-click `R-3.1.0-win.exe`
* Select English
* Click OK
* Click Next
* Click Next
* Select `C:\Program Files\R\R-3.1.0` (or `C:\Programs\R\R-3.1.0`)
* Click Next
* Select:
 * Core Files
 * 32-bit Files
 * 64-bit Files
 * Message translations
* Click Next
* Select No (accept defaults)
* Click Next
* Select R
* Click Next
* Select:
 * Create a desktop icon
 * Save version number in registry
 * Associate R with .RData files
* Click Next
* Click Finish

Check:

* Double-click R i386 3.1.0
* Double-click R x64 3.1.0

Update `PATH` (optional):

* Select Start => Control Panel
* Enter `environment` in the search box and press RETURN
* Click Edit the system environment variables
* Click Advanced tab
* Click Environment Variables...
* Under User variables select PATH
* Click Edit...
* Add `;C:\Program Files\R\R-3.1.0\bin\i386` (or `;C:\Programs\R\R-3.1.0\bin\i386`) to end of Variable value, taking care to remove trailing spaces
* Click OK
* Click OK
* Click OK
* Right-click on desktop
* Select New => Shortcut
* In Type the location of the item, enter `Rterm`
* Click Next
* In Type a name for this shortcut, enter `Rterm i386`
* Click Finish

Check:

* Double-click Rterm i386

If you experience problems with installing libraries into the default library location, `library`, under your R installation directory, then set library path (optional):

* Create a library directory e.g. `C:\Users\you\My Documents\R\win-library`
* Select Start => Control Panel
* Enter `environment` in the search box and press RETURN
* Click Edit the system environment variables
* Click Advanced tab
* Click Environment Variables...
* Under User variables, Click New...
* In New User Variable, enter
 - Variable name: `R_LIBS`
 - Variable value: e.g. `C:\Users\you\My Documents\R\win-library`
* Click OK
* Click OK
* Click OK

RStudio
-------

Download and install:

* Download RStudio
* Double-click `RStudio-0.98.1062.exe`
* Select Destination Folder: `C:\Program Files\RStudio` (or `C:\Programs\RStudio`)

Check:

* Double-click RStudio

Distance R packages
-------------------

Install:

* Start R i386 3.1.0 icon on desktop
* RGui (32-bit) appears.
* Run:

<p/>

    install.packages("mrds")
    install.packages("Distance")
    install.packages("dsm")  
    install.packages("DSsim")

    packageVersion("mrds")
    packageVersion("Distance")
    packageVersion("dsm")
    packageVersion("DSsim")

Distance for Windows and R
--------------------------

Set R:

* Select Tools => Preferences...
* Click Analysis
* Enter Folder containing R: `C:\Program Files\R\R-3.1.0` (or `C:\Programs\R\R-3.1.0`)
* Click OK

Check:

* File=>Open Project...
* Select `Golftees.dst`
* Click Analyses in Project Browser
* Select FI - MR dist
* Click Show details for selected analysis
* Click Run
* Select Logs tab
* Check there are R commands.
* Select Help => MRDS Engine R help (html)
* Check that an HTML help page appears.

Distance R MarkDown files
-------------------------

Run:

* Select File => Open File...
* Select `golftees-MRDS.Rmd`
* Click OK
* Click Knit HTML
* Install Required Packages appears
* Click Yes

Check:

* Check that an HTML page appears.

Examples of paths with spaces causing problems
----------------------------------------------

Distance 6, in log tab:

    C:\Program Files (x86)\DISTAN~1\ec "C:\Program Files
    (x86)\DISTAN~1\MCDS.exe 0,
    C:\Users\mjj\AppData\Local\Temp\dstEB57.tmp  \options
    2>C:\Users\mjj\AppData\Local\Temp\dstEB56.tmp"   
    -- Start of Analyis Engine Log File -- 
    -- End of Analyis Engine Log File -- 
    ** Warning: Analysis engine wrote some output to the console error stream, reproduced below. **
    -- Start of Console Error Stream -- 
    'C:\Program' is not recognized as an internal or external command,
    operable program or batch file.

RStudio, in Install Required Packages window:

    'C:\Program' is not recognized as an internal or external command,
    operable program or batch file.
    Warning messages:
    1: running command '"C:/Program Files/R/R-31~1.0/bin/x64/R" CMD
    INSTALL -l "C:\Users\mjj\Local Documents\R\win-library"
    "C:/Program
    Files/RStudio/R/packages/rmarkdown_0.3.3_fd8dafdea0b4cc68b9dc3da0557a506e60e77ee2.tar.gz"'
    had status 1  

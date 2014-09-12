User Experience Review
======================

Introduction
------------

[The Distance project](http://distancesampling.org) provides software, Distance, for the design and analysis of distance sampling surveys of wildlife populations. Distance is used by biologists, students, and decision makers to better understand animal populations without the need for these users to have degrees in statistics or computer science. 

Distance consists of a Visual Basic interface on top of analysis engines written in FORTRAN, the statistical programming language R, and ESRI MapObjects. These all feed from a shared Microsoft Access database. Distance is distributed as both a Windows-based program and a suite of packages for R. The Windows version provides a GUI.

This report presents a review of Distance and its online resources from the perspective of users. The review was undertaken between 08/09/14 and NN/09/14. Please contact the reviewer at m.jackson@software.ac.uk if you have any queries.

**Format**

=> denotes navigation through GUI menus.

Section headings are task-oriented so they can serve as a check-list of issues to be addressed. 

Computer
--------

The computer used for the review was a Dell Latitude E7440:

* 64-bit Intel Core i5-4310U CPU 2GHz, 2.60GHz 2 core.
* 8GB RAM.
* 185GB hard disk.
* Windows 7 Enterprise Service Pack 1.

----------------------------------------------------------------------

Distance for Windows
====================

Download
--------

* Visit http://distancesampling.org/
* Click 'Download Distance for Windows'
* [Distance for Windows](http://distancesampling.org/Distance/index.html) appears
* Click 'Go to download page for Distance 6.2 Release 1'
* [Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) appears

It is a bit odd that the URL includes 'old-versions'.

* Download [latest release notes](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf)

Will not read yet as want to get on with using the software ("users don't read manuals")

> If you want to make use of the density surface modelling (DSM or mark-recapture distance sampling (MRDS) analysis engines, you need to have the free statistics software R installed on your computer. Note also that only specific versions are supported: for the versions currently supported by Distance, see below.'

Further down the page it states that 6.2's relevant components have been compiled and tested with R 3.1.0. However, on the preceding, 'Distance for Windows' page, under 'Download latest version', there is similar text:

> ... It contains the new density surface modelling (DSM) and, a mark-recapture distance sampling (MRDS) analysis engine for the analysis of double-observer line transect surveys (using DSM and MRDS requires installation of the free statistical software R).

Here there is no mention of the restriction to specific versions. A user read that only to install Distance for Windows then discover they've installed an unsuitable version of R.

* Complete registration form. For Study taxa, select:
 - Other: Software Sustainability
* Click Submit
* Click download link for d62setup.exe
* d62setup.exe, 31,723 KB, downloads.

> A reboot may be required, in which case you may need to restart the setup program again.

This is a potential source of frustration!

> If you want to make use of the new density surface modelling (DSM) or mark-recapture distance sampling (MRDS) analysis engines, you need to have the free statistics software R installed on your computer. Note also that only specific versions are supported: see below for the versions currently supported by Distance.

This just duplicates the text at the top of the page.

Install
-------

* Double-click d62setup.exe
* WinZip Self-Extractor appears
* Click About
* WinZip Self-Extractor appears:

> Distance 6.2 Copyright (c) 2014 by Research Unit for Wildlife Population Assessment University of St Andrews

* Click OK
* Click Setup
* Welcome appears

> We strongly recommend that you exit all Windows programs before continuing with this Setup Program. 
> You should use the Windows taskbar to close all programs except this one and the WinZip self-extractor (if it is running).

Closing all programs is annoying as it can take time to shutdown and restart.

What is meant by 'all programs'? Does this include background ones e.g. SmartSVN, Skype, GoogleDrive that are running?

Continue as-is.

> You should disable any anti-virus software while this setup program is running

Disabling anti-virus is very concerning. Can't think of any other software that has requested this be done, nor can my colleague.

Continue as-is.

> Click View ReadMe to see the release notes file. 
> It is a Rich Text File (rtf) so you need Wordpad installed to view it.
> Please close the file before continuing.
> After the Setup program has completed, the file can be found in the Distance program directory under the name ReadMe.rtf.
> Click Next to continue with the Setup program.

* Click View ReadMe
* ReadMe.rtf appears in WordPad
* Click Next
* Use Agreement appears

Dialog box title bar is 'ReadMe File' - change to 'Use Agreement'

* Click I agree
* Choose Destination Location appears
 - Use default: Destination Folder: C:\Program Files (x86)\Distance 6 
* Click Next
* Backup Replaced files appears
 - Use default: Backup File Destination Directory: C:\Program Files (x86)\Distance 6\BACKUP

Can this be suppressed for first-time installers?

* Click Next
* Select Program Manager Group
 - Select Distance or an existing group
 - Use default: Distance
 - Select Common group (all users) or Current users group
 - Use default: Common group (all users)
* Click Next
* Start Installation appears
* Click Next
* Progress bar appears
* Install R appears

> Two new features of Distance are the Mark Recapture Distance Sampling (MRDS) and Density Surface Modelling (DSM) analysis engines. If you would like to use these engines, you will need to have a working copy of the free statistical software R installed on your computer. For more information about how to download and install R, and which versions of R are supported, click the "View ReadMe" button and look under Installation Notes.

Can the user continue as-is and install R later?

* Click View ReadMe
* ReadMe.rtf pops up in WordPad

> You can download and install R after you have installed Distance, and you can run Distance without having R installed - but you will get an error message if you try to run the MRDS or CDS engine without R.

This information would be useful in the installer window.

* Click Next
* Installation Complete appears

> Please note: If you are running Distance on a machine with an extended character set (e.g. Chinese, Japanese or Korean language Windows) then you will need to turn off project file compression before you can see any results. For more details, click the "View ReadMe" button and look under Installation Notes.

Gotchas and workarounds like this should be in the release notes, not in the installer, as there are many of them. Directing users to the release notes should be enough.

* Click Finish

As Distance installed without shutting down other programs or disabling the virus checker warn about the former and recommend that users try the latter if and only if attempts to install with it enabled have failed.

If recommending disabling the virus checker, Installation Complete should remind the user to enable it again.

* Click Start Menu
* Click Distance 6.2
* Distance 6.2 starts

Give the user the choice of adding a Distance short-cut icon to the desktop.

* Browse to C:\Program Files (x86)\Distance 6
* Right-click Distance.exe
* Select Create shortcut 

Check out installation directory, `C:\Program Files (x86)\Distance 6`. It includes:

* Distance.exe
* ReadMe.rtf
* UseAgreement.txt
* Help\distance.pdf
* Sample Projects\

To conclude, installation was painless.

Distance for Windows and R
--------------------------

On [Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) it states that:

> If you want to make use of the density surface modelling (DSM or mark-recapture distance sampling (MRDS) analysis engines, you need to have the free statistics software R installed on your computer. Note also that only specific versions are supported: for the versions currently supported by Distance, see below.'

and

> Which version of R is currently supported by the MRDS and DSM analysis engines? The engine supplied with Distance 6.2 were compiled and tested under R version 3.1.0. Newer versions of R may work, but there is no guarantee of this!

Direct links to the MRDS and DSM CRAN packages, or, at least, a link to [Distance R packages](http://distancesampling.org/R/index.html), would save time for the user.

At the bottom of the page, it states:

> If you're having problems with using the MRDS and DSM analysis engines (errors regarding check that R is installed correctly or the library directory is not writable) then check details of R installation for Distance 6.2.

[Installation of R for use with Distance 6.2](http://distancesampling.org/Distance/old-versions/d62-r-install-details.html) provides Distance 6.2 and R troubleshooting information. As part of this it states:

> Distance wants to be able to use the 32-bit version of R (there is also a 64-bit version of R, but Distance does not make use of that). If you have installed R, but only the 64-bit version, that is not sufficient. 

This requirement should be listed on the 'Download Distance 6.2' page so that the user, in advance, knows to install the 32-bit version, rather than installing the 64-bit version, getting the error and then having to install the 32-bit one. Preventing errors is a principle of usability.

See 'Distance R packages' below for experiences in installing R and the MRDS and DSM packages.

----------------------------------------------------------------------

Distance 6.2 Release 1 Release Notes - 22 April 2014
====================================================

The release notes contain information about Distance and so form part of the user experience. These are available:

* Online (as a link to the [latest release notes](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf) from the 'Download Distance 6.2' page.
* Via Distance 6.2 by selecting Help => Release Notes.
* In the installation directory, C:\Program Files (x86)\Distance 6\ReadMe.rtf.

General
-------

There are a number of references to the 'Distance web site, support page' and the 'Support, Updates and Extras page', neither of which exist.

There are references to the 'online help' but no link is given. There is no online help on the web site. These references also cite chapters, so it is the user guide that is being refered to.

Tell the user that the user guide is in the Distance directory e.g.

C:\Program Files (x86)\Distance 6\Help\distance.pdf

A link to the user guide from the 'Download Distance 6.2' page on thr web site, alongside the release notes link, would also be useful.

R Statistical Software
----------------------

Typos: endevour

"A copy of the setup package for the version of R tested for use with Distance is on the Support, Updates and Extras page of the Distance home page (http://www.ruwpa.st-and.ac.uk/distance/)"

This links to old site. It redirects to http://distance-sampling.org, but there is no Support, Updates and Extras page. There is a later reference to this page also. The user could be directed to the Download page.

[Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) has, under Additional Information:

> Which version of R is currently supported by the MRDS and DSM analysis engines? The engine supplied with Distance 6.2 were compiled and tested under R version 3.1.0. Newer versions of R may work, but there is no guarantee of this!

'R version 3.1.0' links to http://distancesampling.org/Distance/old-versions/downloads/R-3.1.0-win.exe.

Make the download more prominent on the 'Download Distance 6.2' page under a 'Download R' heading. 

Windows Script 5.6
------------------

Typos: verion, it's version

> The installation program contains a copy of the English language verion of Windows Script 5.6, and you have the option to install this as part of the program setup. 
> ...
> If you have already installed the appropriate version of Windows Script on your computer, then you should say "No" when the Distance setup program asks you if you want to install it's version.

There was no mention of this in the installer. Does it automatically check for it? 

Running Distance in extended character systems
----------------------------------------------

> For more information, see Known Problem 247 (on the Distance web site, support page).

As noted before this page does not exist. Nor is there a page of Current restrictions, known problems and workarounds Distance 6.2. Known Problem 247 is listed on [Current restrictions, known problems and workarounds Distance 6.0 Release 2](http://distancesampling.org/Distance/old-versions/d60knownproblems.html) but a user may not consider looking there.

Installing Distance 6 alongside previous versions of Distance
-------------------------------------------------------------	
	
> Distance 6 does cause one minor problem with Distance 4, because of new versions of shared components.  It is:
> o When editing set names in Distance 4, the new set name is not shown when you click enter.

This is not recorded on 'Current restrictions, known problems and workarounds Distance 6.0 Release 2'.

Problems with Install
---------------------	

> A list of known problems encountered installing Distance is given further down this readme file under "Known Problems | Installation".

There is no such section. There is a 'Resolved Issues and Known Problems' but that has no Installation sub-section.

Information on problems should just bounce the user straight to the proposed 'How to get Help' page on the [Web site review](WebSiteReview.md). Otherwise, there is a risk of information becoming inconsistent.
	
Sample Projects
---------------

> Information on the sample projects is given in Chapter 2 of the online help.

As noted, there is no online help. In the user guide, information is in 'Chapter 3 - Getting Started'.

Uninstalling Distance
---------------------

Typo: Choose Distance 5 from the list

Distance-sampling email discussion list
---------------------------------------

> To join this distance-sampling list, send an email to jiscmail@jiscmail.ac.uk with the following in the body of the message (not in the subject line):

This is out of date. This section should be no more than a link to either the web site page about the mailing list:

http://distancesampling.org/distancelist.html

or the list itself:

https://groups.google.com/forum/#!forum/distance-sampling

with a brief summary (e.g. 'For help, support and discussion...'). Otherwise, there is a risk, as shown, of information becoming inconsistent.

Current restrictions for Distance 6.2 Release 1
-----------------------------------------------

This information can stagnate quickly so is more appropriate t

Resolved Issues and Known Problems
----------------------------------

These duplicate [New in Distance](http://distancesampling.org/Distance/newindistance.html), New features in Distance 6.2, but with more detail. It might be easier to maintain if they were identical.

Appendix 1: Files added during Distance 6 Installation
------------------------------------------------------

The information in this section is inaccurate in terms of both directories and files installed e.g. the directories listed:

```
Common Files \ Data Dynamics
Microsoft \ Shared Tools \ DAO
Program Files (x86) / Distance / Help
Program Files (x86) / Distance / Sample Projects
Program Files (x86) / Distance / RPackages
```

are, on my system:

```
Program Files (x86) \ Common Files \ Data Dynamics folder \ ActiveBar2
Program Files (x86) \ Common Files \ microsoft shared \ DAO
Program Files (x86) \ Distance 6 \ Help
Program Files (x86) \ Distance 6 \ Sample Projects
Program Files (x86) \ Distance 6 \ RPackages
```

There is no file:

```
Program Files (x86) \ Distance 6 \ DistanceLogo.jpg
```

Some of the DLL names differ.

To avoid this inconsistenty, just point the user to `install.log`.

Duplication
-----------

As noted there is some duplication of information between the release notes and the web site and, as a result some of the information in the release notes is out of date. Two solutions to this are:

* Chop the release notes right down and direct the user to the web site for information on for example, new features, known problems, workarounds etc.
* Automate the creation of the release notes from the information on the web pages, or have both release notes and web pages created from a set of common source files (e.g. MarkDown).

----------------------------------------------------------------------

Distance for Windows use
========================

* Double-click Distance.exe 
* Distance appears
* Welcome to Distance 6.2 - Tip of the Day appears
* Click OK

Help menu
---------

* Online Manuals

They're not online as such.

 - Users guide (pdf)
 - MRDS Engine R help (html)

Pops up a dialog box with:

> Cannot open MRDS R Engine Help
> You need to run the MRDS engine at least once so that the R
> library is installed before you can view the R library help.

 - DSM Engine R help (html)

Similar dialog box as above.

*  Release Notes

Opens ReadMe.rtf.

* Distance on the Web
 - Distance home page
 - distance-sampling List Archive

Points to the now-deprecated https://www.jiscmail.ac.uk/cgi-bin/webadmin?A0=distance-sampling. List page notes that:

> This list is now closed to new postings -- it's been transitioned to a Google group: https://groups.google.com/forum/#!forum/distance-sampling.

* About Distance...

> (c) 1998-2014 Research Unit for Wildlife Population Assessment
> University of St. Andrews.

The [UK Copyright Service](http://www.copyrightservice.co.uk/) in their [Using Copyright Notices](http://www.copyrightservice.co.uk/copyright/p03_copyright_notices) fact sheet comment that:

> "Copyright " 
> Some countries will not accept the symbol alone, they also require the word Copyright to appear in order to consider the notice valid. Using the word ensures that there can be no confusion.

 - About
 - Sponsors

Specifies http://www.ruwpa.st-and.ac.uk/distance/, not new URL, http://distancesampling.org.

 - Authors
 - Use Agreement
 - Program Files
 - Citation...

Pops up relevant page of the built-in help.

 - System Info...

Pops up a dialog box with:

> System Information Is Unavailable At This Time

What is this meant to display?

File menu
---------

* New Project...
* Open Project...
* Close Project
* Export Project...
* Copy Project to Backup
* Revert Backup Copy
* Project Properties...
* Exit

**TODO**

Tools menu
----------

* Data Entry Wizard
* Import Data Wizard
* Compact Project
* Clean Temp Folder
* Restore Sample Projects
* Preferences...

**TODO**

Window menu
-----------

* Cascade
* Arrange icons

General
-------

* Look for sample projects:
* [Installation of R for use with Distance 6.2](http://distancesampling.org/Distance/old-versions/d62-r-install-details.html) mentions:

> Following the steps above, you can start Distance again. Attempt to run an MRDS analysis (use the Golftees.dst project shipped with Distance). If all goes as planned, your Log window should produce the following positive messages.

----------------------------------------------------------------------

User Guide
==========

**TODO**

* Look at distance.pdf

----------------------------------------------------------------------

Distance R packages
===================

* Visit http://distancesampling.org/
* Click 'Distance R packages'
* [Distance R packages](http://distancesampling.org/R/index.html) appears

A link to the [R](http://www.r-project.org/) web site would be useful. A link to the following version may also be useful, with a comment that this is recommended if using Distance for Windows.

[Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) recommends, and provides a link to, R 3.1.0 for Distance for Windows. 

So, proceed with this version.

Download and install R
----------------------

* Click R version 3.1.0
* Download http://distancesampling.org/Distance/old-versions/downloads/R-3.1.0-win.exe

This seems to be a local copy of R-3.1.0-win.exe from:

http://cran.r-project.org/bin/windows/base/old/3.1.0/

which has the same file size. This should be made clear on the web page so that a user does not think it is a version you've made with Distance-specific changes to it.

* Double-click R-3.1.0-win.exe.
* Select Setup Language appears.
 - Use default: English
* Click OK
* Setup - R for Windows 3.1.0 appears
* Click Next
* GPL appears
* Click Next
* Select Destination Location appears
 - Use default: C:\Program Files\R\R-3.1.0
* Click Next
* Select Components appears
 - Use defaults: Core Files, 32-bit Files, 64-bit Files, Message translations
* Click Next
* Startup options appears
 - Use default: No (accept defaults)
* Click Next
* Select Start Menu Folder appears
 - Use default: R
* Click Next
* Select Additional Tasks appears
 - Use defaults: Create a desktop icon, Save version number in registry, Associate R with .RData files
* Click Next
* Installing appears
* Competing the R for Windows 3.1.0 Setup Wizard appears
* Click Finish

Check:

* Double-click R i386 3.1.0 icon on desktop
* RGui (32-bit) appears.

* Double-click R x64 3.1.0 icon on desktop.
* RGui (64-bit) appears.

Run from command prompt:

* Select Start => Control Panel
* Enter "environment" in search box and press RETURN
* Click Edit the system environment variables
* Click Advanced tab
* Click Environment Variables...
* Under User variables select PATH
* Click Edit...
* Add ;C:\Program Files\R\R-3.1.0\bin\i386 to end of Variable value
* Click OK
* Click OK
* Click OK

Create shortcut:

* Right-click on desktop
* Select New => Shortcut
* In Type the location of the item, enter Rterm
* Click Next
* In Type a name for this shortcut, enter Rterm i386
* Click Finish

Check:

* Double-click Rterm i386
* Command prompt appears with R version 3.1.0.

R packages
----------

'Distance R packages' lists the following packages:

* mrds - fits detection functions to point and line transect distance sampling survey data
* Distance - a simpler interface to mrds for single observer distance sampling surveys
* dsm - fits density surface models to spatially-referenced distance sampling data. 
* DSsim - a package for simulating distance sampling surveys.
* mads - deals with unidentified sightings, covariate uncertainty and model uncertainty in Distance sampling.

For all but mads, links to releases within the R archive, [CRAN](http://cran.r-project.org/) are provided. For all, links to development versions on GitHub are provided. But, as these are 'recommended for advanced users only', this review will look at all but mads.

Download and install MRDS
-------------------------

This is one of two packages needed by Distance 6.2 for Windows R-related components.

http://cran.r-project.org/web/packages/mrds/index.html

* Double-click R i386 3.1.0 icon on desktop
* RGui (32-bit) appears.
* Run:

<p/>

    > install.packages("mrds")

* Question dialog appears, Would you like to use a personal library instead?
* Click No

<p/>

    Warning in install.packages("mrds") :
      'lib = "C:/Program Files/R/R-3.1.0/library"' is not writable
    Error in install.packages("mrds") : unable to install packages

This error is described in [Installation of R for use with Distance 6.2](http://distancesampling.org/Distance/old-versions/d62-r-install-details.html). As it applies not just to Distance for Windows it should also be linked from 'Distance R packages'.

* Select Start => Control Panel
* Enter "environment" in search box and press RETURN
* Click Edit the system environment variables
* Click Advanced tab
* Click Environment Variables...
* Under User variables, Click New...
* In New User Variable, enter
 - Variable name: R_LIBS
 - Variable value: C:\Users\mjj\Local Documents\R\win-library
* Click OK
* Click OK
* Click OK

Try again:

    > install.packages("mrds")
    Warning in install.packages("mrds") :
      'lib = "C:/Program Files/R/R-3.1.0/library"' is not writable
    Error in install.packages("mrds") : unable to install packages
    > Sys.getenv('R_LIBS')
    [1] "C:\\Users\\mjj\\Local Documents\\R\\win-library"

Create directory C:\Users\mjj\Local Documents\R\win-library.

Try again:

    > install.packages("mrds")
    > packageVersion("mrds")
    [1] 2.1.6

'Installation of R for use with Distance 6.2' said to create `R_LIBS` as a System variable. I accidently created it as a User variable but it works regardless.

Download and install Distance
-----------------------------

http://cran.r-project.org/web/packages/Distance/index.html

The name of this package is a bit confusing given the software and project are also called Distance.

    > install.packages("distance")
    Warning messages:
    1: package distance is not available (for R version 3.1.0) 
    2: Perhaps you meant Distance ? 
    > install.packages("Distance")
    > packageVersion("Distance")
    [1] 0.9.1

Download and install DSM
------------------------

This is one of two packages needed by Distance 6.2 for Windows R-related components.

http://cran.r-project.org/web/packages/dsm/index.html

    > install.packages("dsm")
    > packageVersion("dsm")
    [1] 2.2.4

This one takes about a minute.

Download and install DSsim
--------------------------

http://cran.r-project.org/web/packages/DSsim/index.html

    > install.packages("DSsim")
    > packageVersion("DSsim")
    [1] 1.0.1

Distance R packages use
=======================

**TODO**

* Try vignettes on http://distancesampling.org/R/index.html

----------------------------------------------------------------------

Others
======

**TODO**

* Revisit 'how to prepare your data' from the training course, http://creem2.st-andrews.ac.uk/?page_id=226&preview=true
* Watch the video, http://screencast-o-matic.com/watch/cljnDBKAB
* Should these be relocated to the web site?


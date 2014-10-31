User Experience Review
======================

Mike Jackson, The Software Sustainability Institute / EPCC, The University of Edinburgh

Introduction
------------

[The Distance project](http://distancesampling.org) provides software, Distance, for the design and analysis of distance sampling surveys of wildlife populations. Distance is used by biologists, students, and decision makers to better understand animal populations without the need for these users to have degrees in statistics or computer science. 

Distance consists of a Visual Basic interface on top of analysis engines written in FORTRAN, the statistical programming language R, and ESRI MapObjects. These all feed from a shared Microsoft Access database. Distance is distributed as both a Windows-based program and a suite of packages for R. The Windows version provides a GUI.

This report presents a review of the current release of Distance, Distance 6.2,  from the perspective of Distance users. The review was undertaken between 08/09/14 and 03/10/14. Please contact the reviewer at m.jackson@software.ac.uk if you have any queries.

Resources reviewed
------------------

* Distance for Windows 6.2.
* Distance R packages.
* [Distance web site](http://distancesampling.org/) as it relates to downloading and installing Distance.
 * [Distance for Windows](http://distancesampling.org/Distance/index.html)
 * [Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html)
 * [Installation of R for use with Distance 6.2](http://distancesampling.org/Distance/old-versions/d62-r-install-details.html)
 * [Distance R packages](http://distancesampling.org/R/index.html)
* 'Distance 6.2 Release 1 Release Notes - 22 April 2014'. These are available:
 - Online, as a link to the [latest release notes](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf) from the Download Distance 6.2 page.
 - Via Distance 6.2 by selecting Help => Release Notes.
 - In the installation directory, `C:\Program Files (x86)\Distance 6\ReadMe.rtf`.
* 'Distance 6.2. Release 1 User's Guide'. This is available:
 - Via Distance 6.2 by selecting Help => Online Manuals => User's Guide (pdf).
 - In the installation directory, `C:\Program Files (x86)\Distance 6\Help\distance.pdf`.
* Distance R vignettes linked from [Distance R packages](http://distancesampling.org/R/index.html) on the web site.
* [Simple import into Distance](http://screencast-o-matic.com/watch/cljnDBKAB) video.

Review tasks
------------

I completed the following tasks as part of this review:

* Download and install Distance for Windows.
* Work through the user guide's Chapter 3 - Getting Started.
* Download and install R.
* Download and install Distance R packages.
* Work through Distance R vignettes.
* Download and install RStudio.
* Run Distance R vignettes R MarkDown files using RStudio.
* Follow along with Simple import into Distance video

Specifications
--------------

Platform:

* Dell Latitude E7440.
* 64-bit Intel Core i5-4310U CPU 2GHz, 2.60GHz 2 core.
* 8GB RAM.
* 185GB hard disk.
* Windows 7 Enterprise Service Pack 1.

Software:

* Distance version 6.2 release 1.
* [R](http://cran.r-project.org) version 3.1.0 (2014-04-10) Spring Dance. The distribution used was downloaded from the [Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) page ([direct link](http://distancesampling.org/Distance/old-versions/downloads/R-3.1.0-win.exe)). This seems to be a local copy of R-3.1.0-win.exe from the R web site ([direct link](http://cran.r-project.org/bin/windows/base/old/3.1.0/)).
* [RStudio](http://www.rstudio.com/) 0.98.1062 - Windows XP/Vista/7/8

----------------------------------------------------------------------

Key points
==========

Download, installation and walking through the user guide, Chapter 3 - Getting Started, and the R vignettes was relatively straightforward and allowed for exploration of most of the key features of Distance. 

The primary concerns that arose were:

* A problem with spaces in paths caused problems when using Distance for Windows, and using RStudio for running R MarkDown vignette scripts. These were caused by my laptop configuration not supporting Windows paths of form `C:\Progra~1`. These were resolved by installing Distance for Windows, R and RStudio with paths that had no spaces.
* A request by the Distance for Windows installer to disable anti-virus software. I have never encountered any other software that has requested, or even suggested, that this be done, nor had a colleague I asked. This should only be recommended in situations where users experience an installation failure is specifically caused by the virus checker, and, after installation, users should be reminded to enable it again.
* References to unsupported features in Distance for Windows 'to be provided at a future date' and unsupported features which cause system-specific error messages and which could be misinterpreted as bugs. Any features that are not yet implemented should not have corresponding widgets.
* Inconsistencies between the web site, release notes, user guide and Distance for Windows, as a consequence of the volume of information provided. This relates to the release management aspect of project governance.

----------------------------------------------------------------------

Distance for Windows web site download and installation pages
=============================================================

Add a link to the user guide
----------------------------

Download Distance 6.2 has a link to the release notes. This could be complemented by a link to the user guide.

Remove `old-versions` from the download link for the current release
--------------------------------------------------------------------

The download URL includes the text `old-versions`:

    http://distancesampling.org/Distance/old-versions/distance62download.html

This is counter-intuitive and a user may think that the link has not been updated.

Clarify when a reboot may be required
-------------------------------------

Download Distance 6.2 states that:

> A reboot may be required, in which case you may need to restart the setup program again.

Reboots can be a source of frustration for the user, especially if they are also working on other tasks. It would help if it was clarified when a reboot might be needed.

Tell the user what to do after installation
-------------------------------------------

There is no information on Download Distance 6.2 on what to do after installation. The user guide, p12, Where to go Next states that:

> We recommend that everyone start by following the guided tour in Chapter 3. New users should then read the Users Guide Chapters 4-7 - if you do this you will find using the program much less confusing! People familiar with Distance 3.5 or later should check out the section New in Distance (in Chapter 2) and should at least glance at Chapters 4-7, as required. Advanced users will want to check out Chapters 6, 9, 10 and the appendices.

Add this Where to Go Next text to the web site, pointing users to both Chapter 3 and the appropriate part of the online help e.g.:

* Start Distance
* Select Help => Contents and Index
* Click Chapter 3 - Getting Started

----------------------------------------------------------------------

Distance for Windows and R web site download and installation pages
===================================================================

Specify R version restrictions sooner
-------------------------------------

At the bottom of Download Distance 6.2, under Additional Information, is the comment:

> Which version of R is currently supported by the MRDS and DSM analysis engines? The engine supplied with Distance 6.2 were compiled and tested under R version 3.1.0. Newer versions of R may work, but there is no guarantee of this!

However, in the two preceding references to these R components on this page, and on the Distance for Windows page, there is no reference to this restriction. 

Likewise, Installation of R for use with Distance 6.2 provides Distance 6.2 and R troubleshooting information. As part of this it states that:

> Distance wants to be able to use the 32-bit version of R (there is also a 64-bit version of R, but Distance does not make use of that). If you have installed R, but only the 64-bit version, that is not sufficient. 

A user may have already installed R only to later discover they've installed a problematic version e.g. an earlier version of R or a 64-bit version only. Mention any R version restrictions on the Distance for Windows page and also as part of the Download Instructions in Download Distance 6.2.

Remove duplicated paragraphs
-----------------------------

Download Distance 6.2 has the following two almost-identical paragraphs:

> If you want to make use of the density surface modelling (DSM or mark-recapture distance sampling (MRDS) analysis engines, you need to have the free statistics software R installed on your computer. Note also that only specific versions are supported: for the versions currently supported by Distance, see below.

> If you want to make use of the new density surface modelling (DSM) or mark-recapture distance sampling (MRDS) analysis engines, you need to have the free statistics software R installed on your computer. Note also that only specific versions are supported: see below for the versions currently supported by Distance.

Remove one copy.

Add links to MRDS and DSM CRAN packages
---------------------------------------

Add direct links to the MRDS and DSM CRAN packages, or, at least, a link to [Distance R packages](http://distancesampling.org/R/index.html), so the user can get more information more rapidly.

State that the local copy of R 3.1.0 is not a custom bundle
-----------------------------------------------------------

At the bottom of Download Distance 6.2, under Additional Information, is the comment:

> Which version of R is currently supported by the MRDS and DSM analysis engines? The engine supplied with Distance 6.2 were compiled and tested under R version 3.1.0. Newer versions of R may work, but there is no guarantee of this!

'R version 3.1.0' links to 

http://distancesampling.org/Distance/old-versions/downloads/R-3.1.0-win.exe

This seems to be a local copy of R-3.1.0-win.exe from

http://cran.r-project.org/bin/windows/base/old/3.1.0/

which has the same file size. Make this clear on the web page so that a user does not think it is a version of R with Distance-specific modifications.

Summarise how to use `Golftees.dst` to check R
----------------------------------------------

Installation of R for use with Distance 6.2 states that:

> Following the steps above, you can start Distance again. Attempt to run an MRDS analysis (use the Golftees.dst project shipped with Distance). If all goes as planned, your Log window should produce the following positive messages.

Put this on the Download Distance 6.2 page under a clear heading, e.g. Check Distance for Windows and R, with information on how to use `Golftees.dst` to check their installation:

* File=>Open Project...
* Select `Golftees.dst`
* Click Analyses in Project Browser
* Select FI - MR dist
* Click Show details for selected analysis
* Click Run
* Check the Log tab contains R commands e.g.

<p/>

    > source('C:\\Users\\mjj\\Distance6\\support.r')
    > source('C:\\Users\\mjj\\Distance6\\mrds.support.r')
    > install.distance.packages(dir='C:\\Users\\mjj\\Distance6\\RPackages\\')
    > library(mrds)
    > file.create('C:\\Users\\mjj\\AppData\\Local\\Temp\\dst64755\\res.r')
    > file.create('C:\\Users\\mjj\\AppData\\Local\\Temp\\dst64755\\stat.r')
    > ddf.dat.2<-
    read.table(file='C:\\Users\\mjj\\AppData\\Local\\Temp\\dst64755\\ddf.dat.r', 
    header=TRUE, sep='\t', comment.char='')
    ...

----------------------------------------------------------------------

Distance for Windows installer
==============================

Clarify what is meant by 'exit all Windows programs'
----------------------------------------------------

The Welcome page states that:

> We strongly recommend that you exit all Windows programs before continuing with this Setup Program. You should use the Windows taskbar to close all programs except this one and the WinZip self-extractor (if it is running).

It is not clear what is meant by 'all Windows programs' and whether this includes background processes e.g. SmartSVN, Skype, or GoogleDrive, that may be running. This should be clarified.

Do not request users disable anti-virus
---------------------------------------

The Welcome page states that:

> You should disable any anti-virus software while this setup program is running

Disabling anti-virus is very concerning! I have never encountered any other software that has requested, or even suggested, that this be done, nor has a colleague I asked. Only recommend this in a FAQ on the web site or in the user guide and if and only if the users experience an installation failure specifically caused by the virus checker. Also, remind users to enable it again after installation.

Change Use Agreement title bar to be 'Use Agreement'
----------------------------------------------------

It is currently 'ReadMe File'.

Make it clear that R is optional
--------------------------------

The Install R page states that:

> Two new features of Distance are the Mark Recapture Distance Sampling (MRDS) and Density Surface Modelling (DSM) analysis engines. If you would like to use these engines, you will need to have a working copy of the free statistical software R installed on your computer. For more information about how to download and install R, and which versions of R are supported, click the "View ReadMe" button and look under Installation Notes.

It is not clear whether the user can continue as-is and install R later, or needs to install R before continuing. If the user clicks View ReadMe, then the release notes are shown and within these is the comment that:

> You can download and install R after you have installed Distance, and you can run Distance without having R installed - but you will get an error message if you try to run the MRDS or CDS engine without R.

Add this information to the Install R page, so the user knows that can leave R installation until a later time.

Make disabling project file compression part of the installer
-------------------------------------------------------------

The Installation Complete page states that:

> Please note: If you are running Distance on a machine with an extended character set (e.g. Chinese, Japanese or Korean language Windows) then you will need to turn off project file compression before you can see any results. For more details, click the "View ReadMe" button and look under Installation Notes.

Make this part of the installer so Distance is set up correctly for the user when they run it.

Allow the user to create a shortcut
-----------------------------------

Extend the installer to give the user the choice of adding a Distance shortcut icon to the desktop and/or document how to create a shortcut. For example:

* Browse to `C:\Program Files (x86)\Distance 6`
* Right-click `Distance.exe`
* Select Create shortcut 

----------------------------------------------------------------------

Distance 6.2 Release 1 Release Notes - 22 April 2014
====================================================

Update references to release notes
----------------------------------

p3 states that:

> A list of known problems encountered installing Distance is given further down this readme file under "Known Problems | Installation".

There is no such section. There is a Resolved Issues and Known Problems but that has no Installation sub-section.

Update references to Distance for Windows
-----------------------------------------

p1-2 has a section, Windows Script 5.6, which states that:

> The installation program contains a copy of the English language verion of Windows Script 5.6, and you have the option to install this as part of the program setup. 
> ...
> If you have already installed the appropriate version of Windows Script on your computer, then you should say "No" when the Distance setup program asks you if you want to install it's version.

The Distance for Windows installer asks the user if they wish to install Windows Script 5.6 if they are installing on Windows XP but not if they are installing on Windows 7. The user guide should be updated to reflect this.

p3 states that:

> Choose Distance 5 from the list

It should be Distance 6.

p5, Appendix 1: Files added during Distance 6 Installation, has information that is inaccurate in terms of both directories and files installed e.g. the directories listed:

    Common Files \ Data Dynamics
    Microsoft \ Shared Tools \ DAO
    Program Files (x86) / Distance / Help
    Program Files (x86) / Distance / Sample Projects
    Program Files (x86) / Distance / RPackages

are, on my system:

    Program Files (x86) \ Common Files \ Data Dynamics folder \ ActiveBar2
    Program Files (x86) \ Common Files \ microsoft shared \ DAO
    Program Files (x86) \ Distance 6 \ Help
    Program Files (x86) \ Distance 6 \ Sample Projects
    Program Files (x86) \ Distance 6 \ RPackages

Also, there is no file:

    Program Files (x86) \ Distance 6 \ DistanceLogo.jpg

Some of the DLL names differ also. To avoid these inconsistencies, ask the user to refer to `install.log`.

Update references to web site
-----------------------------

p2 states that:

> For more information, see Known Problem 247 (on the Distance web site, support page).

As noted, the support page does not exist. Nor is there a page of Current restrictions, known problems and workarounds Distance 6.2. Known Problem 247 is listed on [Current restrictions, known problems and workarounds Distance 6.0 Release 2](http://distancesampling.org/Distance/old-versions/d60knownproblems.html) but a user may not consider looking there.

p2 states that:
	
> Distance 6 does cause one minor problem with Distance 4, because of new versions of shared components.  It is:
> o When editing set names in Distance 4, the new set name is not shown when you click enter.

This is not recorded on Current restrictions, known problems and workarounds Distance 6.0 Release 2.

Update references to mailing list
---------------------------------

p4 states that:

> To join this distance-sampling list, send an email to jiscmail@jiscmail.ac.uk with the following in the body of the message (not in the subject line):

This is out of date. Update this section to be no more than a link to either the web site page about the mailing list:

http://distancesampling.org/distancelist.html

or the list itself:

https://groups.google.com/forum/#!forum/distance-sampling

with a brief summary (e.g. 'For help, support and discussion...').

This reduces the risk of the information becoming out-of-date.

Update references to user guide
-------------------------------

p3 states that:

> Information on the sample projects is given in Chapter 2 of the online help.

This information is in Chapter 3 - Getting Started of the user guide.

Replace references to 'online help' with 'user guide'
-----------------------------------------------------

p3 states that:

> Information on the sample projects is given in Chapter 2 of the online help.

There are other references to the 'online help' also but no link is given. There is no online help on the web site. These references also cite chapters, so it is the user guide that is being referred to. Replace references to online help with references to:

* Help => Distance Help
* Help => Online Manuals => User's Guide (pdf)
* `C:\Program Files (x86)\Distance 6\Help\distance.pdf`

Fix typos
---------

* p1, 'requires requires'
* p1, 'endevour'
* p1, 'verion'
* p2, 'it's version'

Reduce duplication between release notes and the web site
---------------------------------------------------------

There is a lot of duplication between the release notes and the web site, in terms of new features, known problems and workarounds. However, as noted above, there are inconsistencies between these. In addition, for known problems and workarounds the release notes may become out-of-date more rapidly than the web site.

Two possible solutions to this are to:

* Cut the release notes down and direct the user to the web site for information on for example, new features, known problems, workarounds etc. Information onknown problems and workarounds could bounce the user straight to the 'How to get Help' page proposed in [Web site review](WebSiteReview.md).
* Automate the creation of the release notes from the information on the web pages, or have both release notes and web pages created from a set of common source files (e.g. MarkDown).

----------------------------------------------------------------------

Distance 6.2. Release 1 User's Guide - Chapter 3 - Getting Started
==================================================================

Update references to Distance for Windows
-----------------------------------------

p28 states that:

> Use Excel to open the file Example1.xls. This file is located in the Sample Projects folder, which is below the Distance program folder (usually "C:\Program Files\Distance 6\Sample projects").

It is `Sample Projects`, capital `P`.

p28 states that:

> The first option, which is already selected is to analyze a survey that has been completed. This is what you want to do, so click on Next at the bottom of the window.

By default, Design a new survey is the option selected.

p28, Metres, Kilometres and Square kilometres are in bold. But in Distance, the available options are Metre, Kilometre and Square kilometre. 

p30 displays a screen shot which is inconsistent with Distance, if the user has been following the user guide. In the screen shot, column 6 is Observation Cluster Size Decimal but in Distance it is still marked Ignore. Setting the values manually is a workaround:

* Double click on column 6 
 - Layer name, select Observation
 - Field name, select Cluster size
 - Field type, select Decimal

p42 states that:

> The map starts life blank - you need to add some layers to it

But, New Map seems to copy the current map rather than create a new one.

p43 states that:

> Under Design coordinate system, make sure the box Same coordinate system as stratum is unchecked. The projection should say "Plate Carree" and the units Kilometres.

The units should be Kilometre.

p44 states that:

> Click on the Surveys tab of the Project Browser. You can see that your new survey has been added in the table of surveys.

I had to first select Set: Set 1 from the drop-down list to see the new survey.

p44 states that:

> Click the Run selected surveys button. The status light turns to a running person, and after a while turns green...

A dialog box, Run Survey 2: [150 points survey 1], popped up and had to be acknowledged before the survey ran.

p45 states that:

> The projects located in the "Sample Projects" folder, which is installed into the "My Distance Projects" folder below your "My Documents" folder. 

This depends on user's installation directory. My original default was `M:\My Distance Projects\Sample Projects`.

For the project list on p46, the Distance 6.2 project `Dolphins.dat` is missing from the list.

Describe how to handle Excel `.xls` to `.txt` warning
-----------------------------------------------------

In Excel, if saving `.xls` as `.txt` the user may get a warning:

> Example1.txt may contain features that are not compatible with Text (Tab delimited). Do you want to keep the workbook in this format?

In this case the user should:

* Click Yes
* Click File
* Click Exit

Again, the user may get a warning:

> Do you want to save the changes you made to 'Example1.txt'?

In which case the user should:

* Click Don't Save

Provide field values for Example 2: More Complex Data Import
------------------------------------------------------------

p34 states that:

> First manually assign all the other columns to the appropriate fields.

I was stuck here as I didn't know what the appropriate fields would be.

Describe Zoom in button for Example 3: Using Distance to Design a Survey
------------------------------------------------------------------------

On p36-37, after invoking Add Map Layer and clicking OK, the Map window appeared but did not look like that shown in the screen shot on p37. The map was a tiny blob a few pixels square. Add a note to the user guide that tells the user they may need to click the Zoom + icon and drag the mouse to zoom in to see the map.

Warn users that Restore Sample Projects does not ask for confirmation
---------------------------------------------------------------------

p45 states that:

> If you've mangled the sample projects and want them back as they were when the program was installed, close whatever projects you have open in Distance and choose Tools | Restore Sample Projects.

Distance for Windows does not warn the user or request confirmation of this step, even though it overwrites any changes they may have made. This is an issue as the user has already been invited to:

> Feel free to use the sample projects as a test bed for learning about the program - try adding and deleting data, creating and running designs and analyses.

Provide instructions as bulleted lists not paragraphs
-----------------------------------------------------

p43 states that:

> In the Effort Allocation tab, under Edge Sampling select the Plus option. Uncheck the box Same effort for all strata. A list of the four strata in the MexStrat layer appears. Under Allocation by stratum, click the Percentage from radio button, and enter "150" as the number of points. In this example, we will put most of our effort into the two Baja strata (perhaps because this is where we think most of the animals of interest live). Under Effort % enter 10 for Sinaloa, 10 for Sonora, 40 for Baja Sur (south) and 40 for Baja Norte (north).

This would be more easy to read as a sub-list so the user can more readily keep track of their progress.

Move introductory explanations from Example 4 to Example 1
----------------------------------------------------------

Some of the content of p40-41, e.g. the structure of projects, the walkthrough round the Project properties etc would also be appropriate, or more appropriate, for Example 1, the first example many users may walk through.

Fix typos
---------

* p29, 'Here you have several choice as...'
* p30, 'following gthe'
* p38, 'You should be looking at the Inputs tab of the Design Details window for the design you created - the window is called "Design 1: [5km grid] Set: [Set 1]"'. It should be '5 km spacing'.

----------------------------------------------------------------------

Simple import into Distance video
=================================

Update for Distance 6.2
-----------------------

Step 1: Type of project has Analyse a survey that has been completed selected whereas, by default, Design a new survey is the option selected.

Remove dependence on workshops
------------------------------

The user is asked to visit:

http://www.ruwpa.st-and.ac.uk/distance.workshops/distance2012/intro.html

This page is quite old and is missing its style-sheet. 

The user is asked to navigate from this page through to:

http://www.ruwpa.st-and.ac.uk/distance.workshops/distance2012/preparingdata.html

which is also missing its style-sheet. The only reason for the user to visit this page is to copy a small text file of data.

Remove the dependence of the video on the workshops and bundle the text file with future Distance releases or on the web site.

----------------------------------------------------------------------

Distance for Windows user interface
===================================

Clarify if units are for presentation purposes only
---------------------------------------------------

There are various measurement units that a user can select which differ only in their spelling e.g. Metre, Meter, Meter (German), Kilometer, Kilometre etc. It should be clarified whether choosing Metre or Meter makes any difference to the analysis or only affects display and presentation-related features.

The user guide, p43 states that:

> In the Sampler tab, select "Kilometre" (or "Kilometer") for the units.

This implies they are for presentation purposes only.

A search of the built-in help for 'units' did not clarify this.

Consider removing photos
------------------------

Many of photos in the wizards don't help the user with their task (e.g. creating a new project) and may just be a distraction, taking up screen real-estate.

Show step progress in wizards
-----------------------------

Some wizards e.g. the Create Project wizard or Import Data wizard show the step number on each page. Others, e.g. the Data Entry wizard, also show the total number of steps. For consistency, and to provide a user with indication of their progress, have every wizard show the progress in their title, Step M of N:....

Reduce verbosity within wizards
-------------------------------

In New Project Setup Wizard, Step 3: Survey Methods, replace 'In this screen, you tell Distance about...' with the less verbose 'Tell Distance about...'

In Import Data Wizard. Step 4: Data File Format, replace 'Use this screen to tell Distance about the delimiters...' with the less verbose 'Tell Distance about the delimiters' or just 'Set the delimiters'.

Import Data Wizard. Step 1: Introduction has a very verbose introduction which could lead to problems in keeping it consistent with other parts of the interface, the built-in help and the user guide. Consider whether this information could solely reside in the built-in help.

Don't expect users to remember (or imply they have to remember) 
---------------------------------------------------------------

New Project Setup Wizard. Step 2: Setup for Designing Surveys states that:

> ...
> Distance will create a global data layer, containing one record. You can then enter the co-ordinates of your study area in the Data Explorer, by double-clicking on the word 'Polygon' in the Shape field. Alternatively, you can link to a pre-existing shapefile by editing the project file database manually. 
> ...
> After creating or importing the study area (and stratum) information, go to the 'Designs' tab of the Project Browser to begin creating new survey designs.

This is quite a lot of information. If using Distance, and not following the Getting Started chapter, then the user would either have to remember this information, write it down, or look to the user guide. It would be better if they were directed to the user guide from the outset, or, after clicking Finish, the relevant section of the built-in Help were to appear.

Don't refer to limitations or future plans
------------------------------------------

New Project Setup Wizard. Step 2: Setup for Designing Surveys states that:

> The survey design setup facility in Distance is currently quite limited.
> ...
> An import facility for shapes is planned for a future release.

Likewise, the built-in help for the Map Window states that:

> Several features of the map window are not yet implemented.  These include: the Info, Find and Spatial select map tools; the ability to customize the properties of each data layer, such as its colour, and add legends.  We expect to implement these features in future releases.

I don't think software should either describe itself as having features that are 'quite limited' or document what is planned for a future release as part of the interface. Keep such details for the release notes or web site. On which note...

Remove widgets for features that are 'not implemented'
------------------------------------------------------

Loading `StAndrewsBay.dst`, clicking the Project Browser's Maps tab, clicking the View Map icon and clicking Find gives a dialog box:

> Distance Internal Error
> ...
> Control 'mctlInfo' not found
> (Error raised from D6Map.Mapper.ContentsToolsClicked)
> (Error source: D6Map)
> (Error number: 730)

Looking for 'Map Find' in the built-in help grovides the Map Window help page which states that:

> Find. Not currently implemented.

However, the error message implies it is a bug.

Similarly, Help => About Distance, System Info... pops up a dialog box:

> System Information Is Unavailable At This Time

The built-in help says:

> Click on this to open a system tool that allows you to retrieve detailed information about the computer running Distance.

'At This Time' implies that:

* Either, the user can do something to make it available later. If so, then what this is should be documented. If this is a generic error message meaning that, for some reason, system information is not available, then this should be documented as a Known Problem on the web-site.
* Or, it is not yet implemented.

Any features that are not yet implemented should not have corresponding widgets. Users may waste time clicking on these and, as shown above, be presented with misleading information. If it's not ready to use don't allow users to try and use it.

Implement Import... and Export...
---------------------------------

In Shape Properties dialog, the only way to insert data is to, for example, Select All in a text editor, then use Paste from Clipboard. 

In relation to the Sampler location list page of the Results tab, the user guide, p39 states that:

> These could easily be copied to the windows clipboard and pasted into another medium (such as a text file ready for upload to a GPS system).

Likewise, p44 states that:

> Click Next again to see a list of the points. You can copy this into the windows clipboard by typing CTRL-A (control key and A key at the same time - select all), then CTRL-INS (control and insert - copy to clipboard). You can then paste this list into a spreadsheet, document, etc.

Supporting explicit Import... and Export... functions may offer more flexibility and ease-of-use than expecting the user to use copy, paste and the clipboard.

Specify location of moved features more precisely
-------------------------------------------------

In New Project Setup Wizard. Step 3: Survey Methods, it states that:

> Sampling faction This option has been moved to the Multipliers page

The location of the new page should be clarified. For example:

> For users of Distance X.Y and earlier, this option has been moved to Step 5: Multipliers

Consider tabbed pane rather than using buttons or icons
-------------------------------------------------------

In Model Definition Properties, the Detection Function tab has buttons Models, Adjustment terms, Constraints, Diagnostics which act as an inner tabbed pane.

In Analysis Components, the two icons on the top left switch between Data Filters and Model Definitions. 

Consider using a tabbbed pane for both of these.

Be consistent in widget look and feel
-------------------------------------

In Import Data wizard, Step 5: Data File Structure it would be more consistent with how editable fields are presented if the drop-down list backgrounds and entry field background were white and sunken and, for the lists, showed the drop-down list arrow. This would make it more evident to the user that these can be edited or changed.

In Data Entry wizard, Step 1 of 6: Introduction the descriptive text is black on a sunken white background which looks like an editable text field, as well as with how descriptive text is displayed in other wizards. If it cannnot be edited it should be displayed on a non-sunken grey background.

In the Map window, make it clear that each layer in the legend is a separate row and change the cursor when over the layer legend e.g. to the hand/pan icon, so a user can see that the layers can be dragged and manipulated.

Support log files
-----------------

There are options in Tools => Preferences tabs to:

* Check Echo data to log
* Check Echo commands to log

However, these only affect what is displayed in a Log tab of the Design Details or Survey Details windows. If Distance were to crash then the log would be lost. The references to 'log files' in the user guide are also inaccurate e.g.

p202:

> Time stamp log entries. When this box is checked, each log file entry is accompanied by the time it occurred.

p203:

> Time stamp log entries. When this box is checked, each log file entry is accompanied by the time it occurred. This can be useful for recording how long different operations

p223:

> Design Details Window
> This window is the main interface to each individual design. From here you can change the inputs, run the design to estimate probability of coverage or generate surveys, view the log file and the results pages.

etc.

Provide options to save logs as files, or use these by default, and allow users to specify the location for these. 

Confirm Restore Sample Projects
-------------------------------

Tools => Restore Sample Projects does not warn that this will overwrite any changes the users may have made to these projects. This is a concern as the user guide, p45 states that:

> Feel free to use the sample projects as a test bed for learning about the program - try adding and deleting data, creating and running designs and analyses. Have fun!

Provide a dialog box warning the user of this and to confirm the action, helping them to prevent accidental overwrite errors.

Fix possible cut-and-paste error in Analysis Preferences tab help
-----------------------------------------------------------------

The built-in help states that:

> Echo commands to log.  When this box is checked, the commands issued to the design engine are written to the log tab of the design or survey details window.  This is helpful for the developers for debugging purposes, but ordinarily should be unchecked to save project file space.

However, in the interface the tab is Analysis, not Analysis Preferences, and the option is Echo data to log

Add a legend to the Project Browser's data tab
----------------------------------------------

A key for the icons - Global, Stratum, Coverage - could be useful for Project Browser's Data tab, possibly located at the bottom of the tab.

State that user guide is local/built-in not online
--------------------------------------------------

The user guide is accessed via Help menu => Online Manuals => Users guide (pdf). However, the user guide is not online but is built-in and in a user's local directory. Change Online Manuals to just be Manuals.

Update web links to online resources
------------------------------------

Help => Distance on the Web provides links to:

* Distance home page
* distance-sampling List Archive

These point to the now-deprecated:

* http://www.ruwpa.st-and.ac.uk/distance/
* https://www.jiscmail.ac.uk/cgi-bin/webadmin?A0=distance-sampling. 

The list page does note that:

> This list is now closed to new postings -- it's been transitioned to a Google group: https://groups.google.com/forum/#!forum/distance-sampling.

Update these links to point to the new online resources.

Likewise, the About Distance window, accessed via Help => About Distance..., has a Sponsors tab that states that:

> For an up-to-date list, please see the Distance home page
> http://www.ruwpa.st-and.ac.uk/distance/

not the new URL http://distancesampling.org. This link could just be removed, since the Sponsors listed are those for the current release.

Provide 'Copyright' as a word
-----------------------------

Help => About Distance... shows:

> (c) 1998-2014 Research Unit for Wildlife Population Assessment
> University of St. Andrews.

The [UK Copyright Service](http://www.copyrightservice.co.uk/), in their [Using Copyright Notices](http://www.copyrightservice.co.uk/copyright/p03_copyright_notices) fact sheet, comment that:

> "Copyright"
>
> Some countries will not accept the symbol alone, they also require the word Copyright to appear in order to consider the notice valid. Using the word ensures that there can be no confusion.

You might want to add the word 'Copyright'.

Don't put - in menu bar menu names
----------------------------------

Some menus in the menu bar consist of two words separated by ' - ' e.g.:

* Design - Inputs
* Design - Log
* Design - Results

These take up space and make it harder for users to scan the menu bar. It can be hard at a glance to perceive the ' - ' and that these are in fact headers for a single menu and not two menus. 

This is a consequence of the design of the interface where the selection of sub-windows determines the menu options available. For example, if the user selects the Project Browser's Designs tab, then a Designs menu appears. If they select the Design details window then one of three menus will be available, depending upon which tab is selected:

* Inputs tab : Design - Inputs menu
* Log tab : Design - Log menu
* Results tab : Design - Results menu

A redesign of how windows and the menu bar relate would avoid the need for ' - ' in menubar names. For example, instead of having the menu bar change depending on which tab is selected just display three menus whenever the Design details window is selected e.g.

* Inputs
* Log
* Results

Similar comments apply to the Survey details window and Analysis details window.

----------------------------------------------------------------------

Distance R packages web site download and installation pages
============================================================

Add a Download R section
------------------------

The Distance R packages page has no explicit Download R section. Providing this would make it clearer as a task. It would also provide a place to specify the requirement, from Download Distance 6.2, that Distance for Windows 6.2 was compiled with R version 3.1.0 and a link to R version 3.1.0 as on that page.

Add a link to the R web site
----------------------------

A link to the R  web site, http://www.r-project.org/, would be useful.

Rename Make the Installation of R for use with Distance 6.2
-----------------------------------------------------------

When running:

    > install.packages("mrds")

A Question dialog appeared:

>  Would you like to use a personal library instead?

Clicking No gave:

    Warning in install.packages("mrds") :
      'lib = "C:/Program Files/R/R-3.1.0/library"' is not writable
    Error in install.packages("mrds") : unable to install packages

This error is described in Installation of R for use with Distance 6.2. As it applies not just to Distance for Windows it should be renamed and linked from Distance R packages.

Add a How to run Rmd files section
----------------------------------

I had to Google to find out what .Rmd files are. A colleague who has used R had never heard of them, though another had.

Add a link to [RStudio](http://www.rstudio.com/) and a short summary of how to execute and view R MarkDown files:

* Download and install RStudio from http://www.rstudio.com/
* Select File => Open File...
* Select `ducknests.Rmd`
* Click OK
* Click Knit HTML
* Install Required Packages appears
* Click Yes

----------------------------------------------------------------------

Distance R vignettes
====================

Rename to Getting Started or Walkthrough
----------------------------------------

Distance R packages has a Vignettes section:

> Wondering how to get started with the distance sampling R packages? The following vignettes show example analyses. Examples were generated from the .Rmd files, data files are also supplied so you can duplicate the analyses.

Call it Getting started for consistency with the Distance for Windows user guide.

Fix `All models failed to fit!` bug
-----------------------------------

Running [Simple detection function analysis of duck nests](http://distancesampling.org/R/vignettes/ducknests.html) gives:

    R version 3.1.0 (2014-04-10) -- "Spring Dance"
    Copyright (C) 2014 The R Foundation for Statistical Computing
    Platform: x86_64-w64-mingw32/x64 (64-bit)

    ...

    > setwd("C:/users/mjj/Local Documents/DISTANCE/R-vignettes")
    > library(Distance)
    Loading required package: mrds    
    Package Rsolnp (1.14) loaded.  To cite, see citation("Rsolnp")
    This is mrds 2.1.5
    Built: R 3.1.0; ; 2014-04-22 22:52:57 UTC; windows
    Warning message:
    package ‘Distance’ was built under R version 3.1.1 
    > tidy.opts <- list(width.cutoff=40)
    > ducknests <- read.csv("ducknests.csv")
    > head(ducknests)
         Region.Label Area Sample.Label Effort distance
    1 Monte_Vista_NWR    0            1 128.75     0.06
    2 Monte_Vista_NWR    0            1 128.75     0.07
    3 Monte_Vista_NWR    0            1 128.75     0.04
    4 Monte_Vista_NWR    0            1 128.75     0.01
    5 Monte_Vista_NWR    0            1 128.75     0.37
    6 Monte_Vista_NWR    0            1 128.75     0.36
    > halfnorm.ducks <- ds(ducknests, key="hn", adjustment="cos", convert.units = 0.001)
    Starting AIC adjustment term selection.
    Fitting half-normal key function
    AIC= 928.134
    Fitting half-normal key function with cosine(2) adjustments
    Warning: Detection function is not weakly monotonic!
    Warning: Detection function is not strictly monotonic!
    Warning: Detection function is greater than 1 at some distances
    AIC= 929.834
    half-normal key function selected!
    > unifcos.ducks <- ds(ducknests, key="unif", adjustment="cos", mono="strict", convert.units = 0.001)
    Starting AIC adjustment term selection.
    Fitting uniform key function with cosine(1) adjustments
    
    All models failed to fit!
   
    Error in ds(ducknests, key = "unif", adjustment = "cos", mono = "strict",  : 
    No models could be fitted.

This also arises when running `ducknests.Rmd` in RStudio:

    Error in apply(gosolnp_rndpars, 1, FUN = function(x) .safefun(x, fun,  : 
      dim(X) must have a positive length
    Quitting from lines 32-33 (ducknests.Rmd) 
    Error in ds(ducknests, key = "unif", adjustment = "cos", mono = "strict",  : 
      No models could be fitted.
    Calls: <Anonymous> ... withCallingHandlers -> withVisible -> eval -> eval -> ds
    Execution halted

Describe whether warnings can be ignored
----------------------------------------

In [Mark-recapture distance sampling using R](http://distancesampling.org/R/vignettes/crabeater-mrds-2014.html), running the following gives a warning:

    > crab.ddf.io.abund <- dht(region=tables$region.table, sample=tables$sample.table, obs=tables$obs.table,
    +                          model=crab.ddf.io, se=TRUE, options=list(convert.units=0.001))
    Warning messages:
    1: In `$.data.frame`(region.table, Region) :
      Name partially matched in data frame
    2: In `$.data.frame`(region.table, Region) :
      Name partially matched in data frame

Likewise for [Mark-recapture distance sampling using R](http://distancesampling.org/R/vignettes/golftees-mrds.html):

    dht(fi.mr.dist,region,samples,obs)

    Warning messages:
    1: In `$.data.frame`(region.table, Region) :
      Name partially matched in data frame
    2: In `$.data.frame`(region.table, Region) :
      Name partially matched in data frame
    3: In `$.data.frame`(region.table, Region) :
      Name partially matched in data frame
    4: In `$.data.frame`(region.table, Region) :
      Name partially matched in data frame

Note that there may be differences in rounding
----------------------------------------------

[Conducting simple distance analysis with a stratified study region](http://distancesampling.org/R/vignettes/minke.html) states that:

> AIC scores for the two strata analysed separately: 8.6176 + 37.2772 = 45.8948

Whereas, when running it, I got, the less precise 8.618 and 37.277:

    > whale.trunc <- 1.5
    > whale.full.strat1 <- ds(whales[whales$Region.Label=="South",], truncation=whale.trunc, 
    +                         key="hr",  adjustment=NULL)
    Fitting hazard-rate key function
    AIC= 8.618
    > whale.full.strat2 <- ds(whales[whales$Region.Label=="North",], truncation=whale.trunc,
    +                         key="hr",  adjustment=NULL)
    Fitting hazard-rate key function
    AIC= 37.277

Add a small note that there may be small differences due to rounding depending upon the platform used to run Distance.

Specify Distance for Windows version
------------------------------------

[Conducting simple distance analysis with a stratified study region](http://distancesampling.org/R/vignettes/minke.html) states that:

> Contrast 3.4619, 0.6002 with (3.182, 0.5547) and 2.7847, 0.9902 with (2.770, 0.9706). The first pair of estimates were produced with this current R analysis whereas the second set of each pair was produced by Program Distance.

It is unclear what version of Distance for Windows was used. Rephrase Program Distance as Distance for Windows.

Make vignettes standalone
-------------------------

[Conducting simple distance analysis with a stratified study region](http://distancesampling.org/R/vignettes/minke.html) states that the:

> Data structure is identical to the ducknest data set.

[Multiple covariate distance sampling with crabeater seal data](http://distancesampling.org/R/vignettes/crabeater-mcds-2014.html) states that:

> Data identical to that avaiable in the Distance project CrabbieMCDSExercise.zip has been ported to crabbieMCDS.csv as if you had entered these data yourself into a spreadsheet.

There is no such package, `CrabbieMCDSExercise.zip`, in Distance.

The following vignettes:

* [Multiple covariate distance sampling with crabeater seal data](http://distancesampling.org/R/vignettes/crabeater-mcds-2014.html)
* [Mark-recapture distance sampling using R](http://distancesampling.org/R/vignettes/crabeater-mrds-2014.html) 
* [Mark-recapture distance sampling using R](http://distancesampling.org/R/vignettes/golftees-mrds.html)

are all marked:

> CREEM, Univ. of St. Andrews 2014 Advanced distance sampling workshop"

[Mark-recapture distance sampling using R](http://distancesampling.org/R/vignettes/golftees-mrds.html) states that:

> Luckily for us, the golf tee dataset is provided aspart of the mrds package, so we don't have to worry about obtaining the data from the Distance GolfteesExercise project.
> ...
> We'll start by fitting the initial full independence model, with only distance as a covariate - just as was done in the "FI - MR dist" model in Distance. Indeed, if you did fit that model in Distance, you can look in the Log tab at the R code Distance generated, and compare it with the code we use here.

Remove these references to other projects and the workshop so that the vignettes can be used standalone and a user will not be concerned that they are missing context.

Fix typos
---------

* Mark-recapture distance sampling using R: aspart
* Multiple covariate distance sampling with crabeater seal data: avaiable, comes to our aide

Update R MarkDown scripts to document dependencies and load libraries
---------------------------------------------------------------------

Running `minke.RMd` in RStudio gave:

    Line 77: Error in eval(expr, envir, enclos): could not find function "kable"

Similarly, running `crabeter-mrds-2014.rmd` gave:
  
    Line 13: Error in eval(expr, envir, enclos): could not find function "knitcitations"

To fix these I had to:

    > install.packages("knitr")

Then update the script to:

    library(knitr)

Fix bugs in `crabeter-mcds-2014.rmd`
------------------------------------

Running `crabeter-mcds-2014.rmd` in RStudio gave:

    Line 51: Error in eval(expr, envir, enclos): object 'summary.nocovar' not found
    AIC score for model without covariate is `r options(scipen=9)` `r
    round(summary.nocovar$aic)` and AIC score for model with _side_ as a
    covariate is  `r round(summary.covar$aic)` so the model that includes
    _side_ as a covariate is preferred.   
 
It seems that:

    r round(summary.nocovar$aic)

should be (I think):

    r round(summary(cr.nocovar)$aic)

The second value

    r round(summary.covar$aic)

is also problematic but I'm unsure what that should be.

Provide alternatives for paths with spaces
==========================================

When working through the Distance for Windows user guide, p20, Click on Run in the Analysis Details Inputs page, the log showed:

    Initializing 
    Making Data File 
    Making Data Selection Queries 
    Making Input File 
    Engine started with the following command:
     C:\Program Files (x86)\DISTAN~1\ec "C:\Program Files
    (x86)\DISTAN~1\MCDS.exe 0, C:\Users\mjj\AppData\Local\Temp\dstEB57.tmp
    \options 2>C:\Users\mjj\AppData\Local\Temp\dstEB56.tmp"  
    -- Start of Analyis Engine Log File -- 
    -- End of Analyis Engine Log File -- 
    ** Warning: Analysis engine wrote some output to the console error
    stream, reproduced below. ** 
    -- Start of Console Error Stream -- 
    'C:\Program' is not recognized as an internal or external command,
    operable program or batch file.
     
    -- End of Console Error Stream -- 
    Analysis engine status 'OK' 
    Reading Results 
    Run finished 

I searched the user guide Chapter 12 - Troubleshooting, distance-sampling [Google Group](https://groups.google.com/forum/#!forum/distance-sampling) and [JISCMail](https://www.jiscmail.ac.uk/cgi-bin/webadmin?A0=distance-sampling) archives. The two nearest matches were:

* Google Group, [problem running analysis in distance](https://groups.google.com/forum/#!searchin/distance-sampling/is$20not$20recognized$20as$20an$20internal$20or$20external$20command/distance-sampling/4wiCeEH33Ho/-5Mmrst-INUJ), Google Group
* [Anyone using Distance on WinXP?](https://groups.google.com/forum/#!searchin/distance-sampling/is$20not$20recognized$20as$20an$20internal$20or$20external$20command/distance-sampling/FmxuYQ5s0nU/V2d7qrBu1iYJ), Google Group

Neither had a solution. As the spaces seemed to be the problem, I reinstalled Distance 6.2 into `C:\Programs\Distance6` and it solved this problem.

When running `ducknest.Rmd` in RStudio, there was a prompt to Install Required Packages. This gave rise to the following error:

    'C:\Program' is not recognized as an internal or external command,
    operable program or batch file.
    Warning messages:
    1: running command '"C:/Program Files/R/R-31~1.0/bin/x64/R" CMD
    INSTALL -l "C:\Users\mjj\Local Documents\R\win-library" "C:/Program
    Files/RStudio/R/packages/rmarkdown_0.3.3_fd8dafdea0b4cc68b9dc3da0557a506e60e77ee2.tar.gz"'
    had status 1  
    2: In utils::install.packages("C:/Program
    Files/RStudio/R/packages/rmarkdown_0.3.3_fd8dafdea0b4cc68b9dc3da0557a506e60e77ee2.tar.gz",
    : installation of package 'C:/Program
    Files/RStudio/R/packages/rmarkdown_0.3.3_fd8dafdea0b4cc68b9dc3da0557a506e60e77ee2.tar.gz'
    had non-zero exit status 

Looking for a possible solution gave:

* [rmarkdown cann't be installed in the rstudio](https://support.rstudio.com/hc/communities/public/questions/202693946-rmarkdown-cann-t-be-installed-in-the-rstudio), RStudio support
* [Install Error #247](https://github.com/ramnathv/slidify/issues/247), slidify GitHub
* R FAQ [2.2 How do I install R for Windows?](http://cran.r-project.org/bin/windows/rw-FAQ.html#How-do-I-install-R-for-Windows_003f), which comments:

> If you want to be able to build packages from sources, we recommend that you choose an installation path not containing spaces. (Using a path with spaces in will probably work, but is little-tested.) Users of Vista/Windows 7/8/Server 2008/2012 installing for a single user using an account with administrator rights1 should consider installing into a non-system area (such as C:\R). Installing to a network share (a filepath starting with \\machine\...) is not supported: such paths will need to mapped to a network drive.

Two colleagues never had this problem, but a third did who commented that they were caused by my laptop configuration not supporting Windows paths of form `C:\Progra~1`.

Re-installing R to `C:\Programs\R\R-3.1.0` and RStudio to `C\Programs\RStudio` solved these problems.

This issue should be made explicit in Known Problems and Workarounds on the web site, or noted as a possible issue on the Download Distance 6.2, Installation of R for use with Distance 6.2 and Distance R packages pages.

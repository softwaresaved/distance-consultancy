---
layout: page
root: ..
title: How to set up a development environment
---

Required knowledge
==================

To develop Distance you need to have a working knowledge of the following:

* Microsoft Component Object Model (COM) i.e. ActiveX, etc.
* Visual Basic 6.0, including Data Access Objects (DAO)
* Fortran, mostly 77, a little 90
* R
* ESRI Shapefiles. See ESRI Shapefile Technical Description ([PDF](http://distancesampling.org/downloads/shapefile.pdf)), a white paper produced by ESRI describing the internal format of a shapefile
  - You may also find  Martin Wegmann's Spatial data handling in R cheatsheet ([PDF](https://github.com/wegmann/RSdocs/blob/master/Cheatsheet/AniMove_refcard.pdf?raw=true)) useful.

Development environment
=======================

**Important!** Do not do development and test Distance setup packages or install Distance releases on the same machine. This results in the Distance executable and support components being in two places on the computer, which may get confusing!

Virtual machine
---------------

A complete development environment is on the Distance virtual machine.

C:\Application Development\Distancex0:

* Code
* x is the major version number e.g. 5 for Distance 5
* AKA %BASE%

C:\Application Development\Distancex0Extras:

* Non-code content
* AKA %BASE%Extras

Code development tools
----------------------

Microsoft Visual Basic 6:

* Distance for Windows GUI, numerical engines (e.g., design engine), database engine etc.

Compaq Digital Fortran 6.6 Professional:

* MCDS and CDS analysis engine, MCDS.exe
* Install From Fortran CD - ask Len
* Update to 6.6C by running CVF-66-66C3.exe in DevCD Fortran folder
* Can optionally install Array Visualizer from a separate CD

R 2.9.0 (current as of May 2009):

* MRDS and DSM analysis engines
* From http://www.r-project.org or from the DevCD\R directory.
* Unix "tools" (required to build libraries). 
  - For more on what's required see Appendix E (The Windows Toolset) of R installation and administration.
  - Get the latest version from http://www.murdoch-sutherland.com/Rtools/. Choose "package authoring installation"
* Windows HTML Help Workshop
  - Required to build chm files in libraries, if required - you'll have it already if you installed Doc-To-Help (see below)
  - http://msdn.microsoft.com/library/en-us/htmlhelp/html/hwmicrosofthtmlhelpdownloads.asp
  - **Rtools are now http://cran.r-project.org/bin/windows/Rtools/. **

Setup programs for most of the software required for developing Distance is in %BASE%Extras\DistDevCD.

Non-code development tools
--------------------------

Required:

* Wise Installation System - compile Distance for Windows setup program.
* WinZip and WinZip Self Extractor - package setup program.
* Doc-To-Help - compile user's guide into Microsoft Compiled HTML Help.
* Microsoft Word - write both internal and external documentation.
* Microsoft HTML help compiler - compile external documentation in compact HTML (.chtml) format. Called from Doc-To-Help
* Adobe Acrobat - create user's guide PDFs
* Microsoft Image Composer - draw splash screen and convert .mix files to .jpeg.

Optional:

* Axalis Icon Workshop - draw  GUI icons. Any other icon editor would do the same thing.
* VMWare - an emulator - used as a convenient way to maintain a suite of testing machines.
* Microsoft Access - edit Distance project and data files outwith Distance.
* ESRI ArcGIS - view and edit ESRI shapefiles from geographic projects.

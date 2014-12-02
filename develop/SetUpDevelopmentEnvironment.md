---
layout: page
root: ..
title: Set up a development environment
---

## Introduction

**Important!** Do not do development and test Distance setup packages or install Distance releases on the same machine. This results in the Distance executable and support components being in two places on the computer, which may get confusing!

---

## Tools

These include both development tools and third-party components used within Distance.

### Distance Visual Basic components

Visual Basic project development:

* Microsoft Visual Basic 5
* Microsoft Visual Basic 5 + service packs
* Microsoft Visual Basic 6
  - Edit .vbp projects
  - Build .dll, .ocx and .exe binaries e.g. Distance libraries and GUI
* Microsoft Visual Basic 6 + service packs
* Microsoft Jet 3.5 Service Pack 3 update
* Microsoft Windows scripting 5.6

Libraries:

(sub-lists are from [Source code and binaries](../architecture/SourceCodeAndBinaries.html))

* Microsoft C runtime library
  - MSVCP60.dll, MSVCRT.DLL
  - C:\Program Files\ESRI\MapObjects2\Microsoft\
* Microsoft DAO
  - DAO2535.tlb, DAO350.dll
  - C:\Program Files\Common Files\Microsoft Shared\DAO\
* Microsoft Jet 3.51
  - MSJET35.DLL, MSJINT35.DLL, MSJTER35.dll
  - C:\WINDOWS\system32\
* Microsoft Jet 3.51 IISAM drivers
  - MSEXCL35.DLL, MSRD2X35.dll, MSTEXT35.DLL
  - C:\WINDOWS\system32\
* Microsoft Windows Script
  - scrrun.dll, stdole2.tlb, vbscript.dll
  - C:\WINDOWS\system32\
* Microsoft Visual Basic 5 and 6
  - COMCTL32.OCX, comdlg32.ocx, MSChrt20.ocx, MSComCt2.ocx, RichTx32.ocx, VB5DB.dll
  - C:\WINDOWS\system32\

Visual Basic widgets and other tools

(sub-lists are from [Source code and binaries](../architecture/SourceCodeAndBinaries.html))

* VideoSoft VSFlex 7.0.1.187
  - ComponentOne VSFlex
  - VSFLEX7D.OCX
  - C:\WINDOWS\system32\
* CCRP Browse Dialog Server 0.2.0.12
  - Common Controls Replacement Project (CCRP)
  - ccrpbds6.dll
  - C:\Program Files\CCRP\ccrpbds6-b2\
* DataDynamics ActiveBar 2.5.2.121
  - Data Dynamics ActiveBar
  - Actbar2.ocx
  - C:\Program Files\Common Files\Data Dynamics\ActiveBar2\
* Spyworks 6.3
  - Desaware SpyWorks
  - dwAXExtn.dll
  - C:\Application Development\Distance60Extras\DistanceDevCD\SpyWorks63\System32\
* ESRI MapObjects 2.3
  - ESRI MapObjects 
  - AF20.dll, JetTable20.dll, Mo20.ocx, mtch.dll, pe81.dll, sg81.dll, Shape20.dll
  - C:\Program Files\Common Files\ESRI\
* Tab Pro 3.1.22
  - Farpoint Tabpro
  - TAB32X30.OCX
  - C:\Program Files\Tabpro30\BIN\
* Polar Zip 5.0.12.0
  - Polar Software PolarZIP
  - PolarZIP.ocx, PolarZipSpan.dll
  - C:\Program Files\Polar ZIP\Redistribution\
* Active Threed 2.04
  - Sheridan Software ActiveThreed
  - SPLITTER.OCX
  - C:\Program Files\ActiveThreed\
* Zlib zip dll
  - Zlib Zip
  - DstZip.dll
  - C:\Application Development\Distance60Extras\DistanceDevCD\Zlib\

Miscellaneous:

* Common Controls Replacement Project CoolTools
  - Optional
* Microsoft Access 97
  - Edit .mdb and .dst files e.g. Distance databases
  - Optional
* Microsoft Development Network (MSDN) documentation
  - Optional
* Microsoft Office XP Pro
  - Contains Access, Excel and Word which are useful for editing Distance databases, data files and documentation

### Distance releases

* Wise Installation System 9.02
  - Edit .wse projects
  - Build installer .exe e.g. Distance installer
* WinZip and WinZip Self Extractor
  - Bundle installer .exe and .rtf into .zip
  - Convert .zip to self-extracting .exe e.g. Distance self-extracting installer
* Microsoft Word 2003
  - Edit .doc documents e.g. Distance user's guide and built-in help
  - Not to be used to edit .rtf files
* Microsoft WordPad
  - Edit .rtf files e.g. Distance built-in text
* DocToHelp 2006 v3 (build 3.0.313)
  - Edit .d2h projects
  - Build .doc, .chm and .bas documents e.g. Distance user's guide and built-in help
* Windows HTML Help Workshop
  - Build .chm files e.g. Distance built-in help
  - http://msdn.microsoft.com/library/en-us/htmlhelp/html/hwmicrosofthtmlhelpdownloads.asp
* Adobe Acrobat
  - Convert .doc into .pdf e.g. Distance user's guide
* ESRI ArcGIS
  - View and edit ESRI shapefiles from geographic projects
  - Optional
* Axialis IconWorkshop 6
  - Edit .ico icons
  - Optional
* Microsoft PowerPoint
  - Edit .ppt slides
  - Convert .ppt slides to Windows Metafile .wmf files
* Microsoft PhotoDraw
  - Edit Microsoft Image Composer .mix files
  - Convert .mix to .jpg

### FORTRAN MCDS engine

* Compaq Visual Fortran / Compaq Digital Fortran 6.6 Professional
  - Compile .dsw into .exe e.g. build MCDS.exe analysis engine
* Ec.exe
  - Bundled with Compaq Visual Fortran Professional
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Ec.exe
  - %BASE%\Numerical Server\NEngineHost\EC.EXE
- IMSL Numerical routines
  - Compiled into Distance's MCDS.exe 
  - Part of Compaq Visual Fortran
* Array Visualizer
  - Optional
* Concurrent Version System or TortoiseCVS - see below

### R DSM and MCDS engines

* See [Set up R development environment](./SetUpDevelopmentR.html).

### Developer's guide

* Ruby
  - Preview developer's guide web site using Jekyll
  - Optional

### General

* [VMware Player](http://www.vmware.com/uk/products/player)
  - Check Distance release candidates
  - The above page comments that "Player Pro is licensed for commercial use and is enabled to run restricted virtual machines. If you simply want to learn about virtual machines or run virtual machines at home you can always use VMware Player for free" with a link to free [VMWare Player](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0) versions.
  - License: VMWare
  - Optional
* TextPad
  - Edit .rtf and .txt files
  - Optional
* Microsoft Excel
  - Distance sample project raw data
  - Edit .xls
  - Optional

---

## Tool table

| File | Tool |
| ---- | --- |
| CVS | cvs.exe or TortoiseCVS |
| d2h | Doc-to-Help tool |
| dsw | Compaq Visual Fortam |
| dst | Microsoft Access |
| doc | Microsoft Word |
| git | Git for Windows |
| ico | Axialis IconWorkshop |
| mix | Microsoft PhotoDraw |
| mdb | Microsoft Access |
| pdf | Adobe Acrobat |
| ppt | Microsoft PowerPoint |
| r | R |
| Rmd | RStudio |
| rtf | Microsoft WordPad |
| vbp| Microsoft Visual Basic |
| wse | WiSE |
| xls | Microsoft Excel |
| zip | WinZip |

---

## How to install tools

### [TortoiseCVS](http://www.tortoisecvs.org/)

Summary:

* Fortran source code management using CVS
* Recommended version: any
* License: GNU General Public License

Download and install:

* Download from [Downloads](http://www.tortoisecvs.org/download.shtml)
* Double-click .exe e.g. TortoiseCVS-1.12.5.exe

### [Concurrent Version System](http://www.nongnu.org/cvs/)

Summary:

* Fortran source code management using CVS
* Recommended version: any
* License: GNU General Public License

Download and install:

* Download from [FTP directory](http://ftp.gnu.org/non-gnu/cvs/) 
  - Binary releases are within a [binary/stable/](http://ftp.gnu.org/non-gnu/cvs/binary/stable/x86-woe/) sub-directory
* Unzip .zip e.g. cvs-1-11-22.zip 
* cvs.exe is used as-is e.g.:

    > cvs.exe
    Concurrent Versions System (CVS) 1.11.22 (client)
    Copyright (C) 2006 Free Software Foundation, Inc.

---

## Logical drives

Windows XP (and possibly other OSs) have the facility to map a logical drive as a folder. This is useful as it means that C:\Application Development can actually be a separate drive, making de-fragmentation, backing up, etc useful. 

---

## Virtual machine

A complete development environment is on the Distance Windows XP virtual machine available from Distance developers.

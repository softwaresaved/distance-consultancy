---
layout: page
root: ..
title: How to build Fortran components
sections:
- Find out tool versions
- Build MCDS analysis engine
- Copy MCDS.exe for use in Visual Basic and release
- Build MCDS analysis engine NMake file
- Build MCDS analysis engine from command prompt using NMake file
---

## Find out tool versions

Compaq Visual Fortran:

* Compaq Visual Fortran runs alongside Microsoft Visual C++ under Microsoft Developer Studio
* Select Help => About Developer Studio
* Visual C++ 6.0
* Compaq Visual Fortran Professional Edition 6.6.c

---

## Build MCDS analysis engine

* Open MCDS project in Compaq Visual Fortran:
  - Double-clicl %BASE%\Analysis Engines\CDS\Engine\Engine\MCDS.DSW
  - Compaq Visual Fortran runs alongside Microsoft Visual C++ under Microsoft Developer Studio.
* Build MCDS.exe:
  - Select Build => Build MCDS.exe OR Press F7
  - To rebuild everything, select Build => Rebuild All

---

## Copy MCDS.exe for use in Visual Basic and release

* Copy %BASE%\Analysis Engines\CDS\Engine\DEBUG\MCDS.exe to %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\
* The following Visual Basic components depend on finding these files in this folder:
  - %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\CDSProcess.cls
  - This is bundled in DnnnnNEIUtil.dll

---

## Build MCDS analysis engine NMake file

* Open MCDS project in Compaq Visual Fortran:
  - Double-click %BASE%\Analysis Engines\CDS\Engine\Engine\MCDS.DSW
* Export NMake file
  - Select Project => Export Makefile

---

## Build MCDS analysis engine from command prompt using NMake file

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Change into MCDS analysis engine folder:

<p/>

    chdir %BASE%\Analysis Engines\CDS\Engine\Engine\

* Set Visual Fortran environment variables:

<p/>

    "C:\Program Files\Microsoft Visual Studio\DF98\BIN\DFVARS.BAT"

* Build MCDS.exe using NMake:

<p/>

    nmake /f MCDS.MAK cfg="MCDS - Win32 Debug"
---
layout: page
root: ..
title: How to build Fortran components
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
  - Double-click %BASE%\Analysis Engines\CDS\Engine\Engine\MCDS.DSW
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

---

## Capture MCDS input files from within Distance for Windows

* Select Tools => Preferences...
* Click Analysis tab
* Check Debug mode (create command files but don't run engine)

If reusing files elsewhere check to ensure that any paths within the files are updated.

---

## Run MCDS from the command prompt using captured input files

For full details of MCDS usage, input file formats, output file formats and return codes, see Appendix - MCDS Engine Reference, Distance 6.2 Release 1 User's Guide, p307-344.

* Write MCDS input command file and prepare input files
* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Run:

<p/>

    MCDS 0 INPUT_COMMAND_FILE

* For example:

<p/>

    mcds.exe 0 dstA705.tmp
    2

---

## Capture MCDS output files from within Distance for Windows

* Select Tools => Preferences...
* Click Analysis tab
* Check Capture command line output from CDS and MCDS engines in WinNT

---

## Run Ec.exe from the command prompt

Ec.exe is a stand-alone executable that executes a command line after parsing and removing Windows NT-compatible redirection symbols. It is used to capture standard output and standard error. Ec.exe is distributed with Distance for Windows.

For more information, see:

* [Compaq Visual Fortran Release Notes August 2002](http://h21007.www2.hp.com/portal/download/files/unprot/Fortran/docs/visual/relnotes.htm).
* [Redirecting Command-Line Output to Files](https://www.xlsoft.com/jp/products/intel/cvf/docs/vf-html_e/pg/pgsredir.htm):

To see command-line usage:

* Start command prompt:
  - Select Start => All Programs => Accessories => Command Prompt
* Run:

<p/>

    Ec
    EC - Version: X1.11   Built: Mar 13 1997  17:12:09

    Usage is: EC [-sw -sw] "Command line > out_file 2>&1"

    Switches are:
       l      Toggle display of command execution
       c      Toggle use of command shell
       s      Toggle display of result codes of execution
       t      Toggle Windows 95 style processing
       n      Toggle use of new console windows
       y      Toggle display of consoles
       v      Display program version number
       ?      Display this help message

* For example:

<p/>

    Ec MCDS.exe 0 dst3C5.tmp \options 2>dst3C4.tmp

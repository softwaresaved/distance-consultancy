---
layout: page
root: ..
title: Distance for Windows and Fortran
sections:
- Introduction
- Distance for Windows and Fortran interface
- Visual Basic and Fortran interface
- Miscellaneous MCDS implementation details
---

## Introduction

Distance currently has one Fortran-based analysis engine, MCDS, that does two types of analysis:

* Conventional distance sampling (CDS)
* Multiple covariate distance sampling (MCDS)

---

## Distance for Windows and Fortran interface

* Create:
  - Command file
  - Input file
  - For full details of input file formats, see Appendix - MCDS Engine Reference, user's guide, p307-344
* Invokes MCDS.exe via Ec.exe
  - For full details of usage, see Appendix - MCDS Engine Reference, user's guide, p307-344
  - For example:

<p/>

    C:\Programs\DISTAN~1\ec "C:\Programs\DISTAN~1\MCDS.exe 0, C:\Users\mjj\AppData\Local\Temp\dst3C5.tmp \options 2>C:\Users\mjj\AppData\Local\Temp\dst3C4.tmp" 


* Wait for results:
  - Exits with success
  - Shut down with Internal Error message
  - Crash with Fortran runtime error - rare
  - For full details of output file formats and return codes, see Appendix - MCDS Engine Reference, user's guide, p307-344

Ec.exe 

* Execute command line after parsing and removing Windows NT-compatible redirection symbols
* Used to capture standard output and standard error.
* See [Compaq Visual Fortran Release Notes August 2002](http://h21007.www2.hp.com/portal/download/files/unprot/Fortran/docs/visual/relnotes.htm).
* See [Redirecting Command-Line Output to Files](https://www.xlsoft.com/jp/products/intel/cvf/docs/vf-html_e/pg/pgsredir.htm):
  - 'The EC tool is located on the Visual Fortran CD-ROM in the x86\Usupport\Misc\Win95 folder'.

<p/>

    >ec

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

See Visual Basic and Fortran interface below for more details.

### How to capture input files

* Select Tools => Preferences...
* Click Analysis tab
* Check Debug mode (create command files but don't run engine)

If reusing files elsewhere check to ensure that any paths within the files are updated.

### How to capture output

* Select Tools => Preferences...
* Click Analysis tab
* Check Capture command line output from CDS and MCDS engines in WinNT

### How to run stand-alone

At command prompt:

    MCDS 0|1 INPUT_COMMAND_FILE

* 0 - run mode
* 1 - import mode - used for Distance Project Import

Example using files in C:\Users\mjj\Local Documents\DISTANCE\mcds-dst-tmp-files:

    mcds.exe 0 dstA705.tmp
    2

### Input and output files

Command file structure:

    Output file
    Log file
    Stats file
    Plot file
    Bootstrap file|None
    Bootstrap progress file|None
    OPTIONS;
    ...general options
    END;
    DATA;
    ...column names...
    Fields=STR_LABEL, STR_AREA, SMP_LABEL, SMP_EFFORT, DISTANCE, SIZE;
    ...location of TAB-delimited flat data file...
    Infile=C:\Users\mjj\Local Documents\DISTANCE\mcds-dst-tmp-files\dstA6A6.tmp /NoEcho;
    END
    ESTIMATE;
    ...estimation options
    END;

Output files:

* Correspond to command file header values
* Output file
  - TABPage titleTAB
  - ...
  - Human-readable only - not for machine processing beyond pagination
* Log file
  - Copy of input commands
  - Error outputs from analysis engine
* Stats file
  - Engine statistics
  - Sets of records, one per line
* Plot file
  - Data to construct high resolution qq and histogram plots in the Distance interface
* Bootstrap file
  - As for Stats but one set of records for each bootstrap
* Bootstrap progress file
  - Empty until bootstrapping starts
  - 3-digit integer between 000...100 - percentage of way through bootstrap

### Error and warning messages

Occur in output and log files:

* Warnings
* Errors
* Internal errors

Fortran debugging output:

* Dumped onto the command-line / standard output

### Exit codes

* 1 - analysis ran OK
* 2 - warnings, see log file for details
* 3 - errors, see log file for details
* 4 - file errors e.g. could not find the specified command file
* N - major error

---

## Visual Basic and Fortran interface

Microsoft Jet database, DistIni.mdb, settings:

* Table: ProjectSettingsMemo
* Section: AnalysisEngine
* Field: Setting - value ';' delimited entries of form 'Name=Value'
* Entries of note are as follows:

| Key | ExeName | PrgProgId | EngIntProgId | LogPropId | ResProgId | 
| --- | ------- | --------- | ------------ | --------- | --------- |
| CDS | MCDS.exe | D6CDSPrp.CDSProperties | D6CDSNEI.CDSNEngineInterface | D6CDSDet.CDSLog | D6CDSDet.CDSResults |
| MCDS | MCDS.exe | D6CDSPrp.CDSProperties | D6CDSNEI.CDSNEngineInterface | D6CDSDet.CDSLog | D6CDSDet.CDSResults |

Analysis Engines\CDS\NEngineInterface\ classes implement the following design:

* Call reset to delete current results, if there are any
  - This is necessary if, for example, the analysis engine has changed and the data are stored in a completely different format
* Set lock on data, if appropriate
* Make data file
* Make input file
* Run analysis
* Read in results

Analysis Engines\CDS\NEngineInterface\Classes\InputFileMaker.cls:

* Function Makefile 
  - Creates CDS input files

Analysis Engines\CDS\NEngineInterface\Classes\CDSNEngineInterface.cls:

* Function RunItem:
  - Calls CDSProcess.EngineName(IsMCDS=True\|False) to get engine file name
  - Calls CDSProcess.RunEngine(engine file name, IsMCDS=True\|False, input file name, command file name)

Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\CDSProcess.cls:

* Property Get EngineName
  - Invokes GetEngineName as a property
* Function GetEngineName:
  - Gets database, ProjectSettingsMemo table, AnalysisEngine section, Setting value for Key=="MCDS" if IsMCDS flag is True) else Key=="CDS" and parses Name=Value pairs in Setting value to get ExeName
  - ExeName is assumed to be in App.Path, same folder as D6NEIUtil.dll
* Sub RunEngine:
  - If Windows NT and EC usage required, invokes`PATH\ec "PATH\MCDS.exe MODE INPUT_COMMAND_FILE \options 2>LOG_FILE"`
  - Otherwise invokes `PATH\MCDS.exe MODE INPUT_COMMAND_FILE \options 2>LOG_FILE`
  - MODE is 0\|1

---

## Miscellaneous MCDS implementation details

Random numbers:

* Compaq Visual Fortran function random_number
* Seeded from clock or a user-defined value
* Bootstrap resampling
* Two congruential generators - see L'Ecuyer 1988 or Visual Fortran manual for more details

Covariates:

* Set in PARAMS.INC
* MAXFACS is the number of factor levels per covariate:

<p/>

    PARAMETER (SMALL1=1.0E-3, SMALL2=1.0E-10, SMALL3=1.0E-12,
    ...
    $          MAXFACS=200,MAXCV=MAXCOVS*(MAXFACS-1))

* Default is 200.
* One developer has tried with 50 factors which seems to work.

Stack size:

| Hexadecimal | Decimal   | MB  |
| ----------- | --------- | --- |
|   800 000   |   8388608 |   8 |
| 1 000 000   |  16777216 |  16 |
| 1 400 000   |  20971520 |  20 |
| 2 800 000   |  41943040 |  40 |
| 6 400 000   | 104857600 | 100 |

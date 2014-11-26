---
layout: page
root: ..
title: Distance for Windows and Fortran
---

## Introduction

Distance currently has one Fortran-based analysis engine, MCDS, that does two types of analysis:

* Conventional distance sampling (CDS)
* Multiple covariate distance sampling (MCDS)

---

## MCDS

MCDS is a standalone executable. For full details of MCDS usage, input file formats, output file formats and return codes, see Appendix - MCDS Engine Reference, Distance 6.2 Release 1 User's Guide, p307-344

---

## How Distance for Windows invokes MCDS

Distance for Windows invokes MCDS as follows:

* Create MCDS input data file
  - A plain-text tab-delimited flat data file
* Create MCDS command file. A plain-text file which specifies:
  - Output file
  - Log file
  - Stats file
  - Plot file
  - Bootstrap file (optional - if none then the value None is used)
  - Bootstrap progress file (optional - if none then the value None is used)
  - Column names e.g. `Fields=STR_LABEL, STR_AREA, SMP_LABEL, SMP_EFFORT, DISTANCE, SIZE;`
  - Absolute path to input data file e.g. `Infile=C:\Users\mjj\Local Documents\DISTANCE\mcds-dst-tmp-files\dstA6A6.tmp /NoEcho;`
* Invoke MCDS.exe via [Ec.exe](../develop/BuildFortran.html#run-ec-exe), a stand-alone executable to capture standard output and standard error. For example:

<p/>

    C:\Programs\DISTAN~1\Ec "C:\Programs\DISTAN~1\MCDS.exe 0, C:\Users\mjj\AppData\Local\Temp\dst3C5.tmp \options 2>C:\Users\mjj\AppData\Local\Temp\dst3C4.tmp" 

* Wait for results. This is one of:
  - Exits with success
    - 1 - analysis ran OK
  - Shuts down with Internal Error message
    - 2 - warnings, see log file for details,
    - 3 - errors, see log file for details
    - 4 - file errors e.g. could not find the specified command file
    - N - major error
  - In rare circumstances, crashes with a Fortran runtime error
* Parses output files:
  - Output file - a human-readable file, not for machine processing beyond pagination, which includes any warnings and errors
  - Log file - copy of input commands and warnings and error outputs from MCDS
  - Stats file - engine statistics formatted as sets of records, one per line
  - Plot file - data to construct high resolution qq and histogram plots
  - Bootstrap file -  As for Stats but one set of records for each bootstrap
  - Bootstrap progress file - 3-digit integers between 000...100 representing percentage progress through bootstrap

---

## MCDS invocation implementation details

### Microsoft Jet database configuration

The Microsoft Jet database, DistIni.mdb, records information about CDS and MCDS within

ProjectSettingsMemo table, AnalysisEngine section

* Field values are ';'-delimited entries of form 'Name=Value'.
* Entries of note are:

| Key | ExeName | PrgProgId | EngIntProgId | LogPropId | ResProgId | 
| --- | ------- | --------- | ------------ | --------- | --------- |
| CDS | MCDS.exe | D6CDSPrp.CDSProperties | D6CDSNEI.CDSNEngineInterface | D6CDSDet.CDSLog | D6CDSDet.CDSResults |
| MCDS | MCDS.exe | D6CDSPrp.CDSProperties | D6CDSNEI.CDSNEngineInterface | D6CDSDet.CDSLog | D6CDSDet.CDSResults |

ProjectSettingsBoolean table, AnalysisDetails section:

| Key | 
| --- |
| UseEC |

### Visual Basic

Class Analysis Engines\CDS\NEngineInterface\Classes\CDSNEngineInterface.cls:

* Function RunItem:
  - Calls DatabaseInterface.MakeFiles to create input data and command files
  - Calls CDSProcess.EngineName to get engine file name, which depends on whether a MCDS or CDS analysis is to be run
  - Gets database ProjectSettingsBoolean table AnalysisDetails section Setting value for key "UseEC" to see if EC.exe is to be used
  - Call CDSProcess.RunEngines to run MCDS.exe
* Sub RunFinished:
  - Handles return codes from MCDS.exe run
  - Calls DatabaseInterface.SaveResults to process files and update state

Class Analysis Engines\CDS\NEngineInterface\Classes\DatabaseInterface.cls:

* Interfaces between database and MCDS.exe files
* Function MakeFiles:
  - Gets from current state whether MCDS or CDS has been requested
  - Calls DataFileMaker.MakeFile to create input data file
  - Calls InputFileMaker.MakeFile to create command file
* Function SaveResults:
  - Reads output files and command-line output file

Class Analysis Engines\CDS\NEngineInterface\Classes\DataFileMaker.cls:

* Function MakeFile:
  - Gets data from database 
  - Creates input data file name if not already specified
  - Creates input data file, the nature of which, in part, depends on whether CDS or MCDS has been requested

Class Analysis Engines\CDS\NEngineInterface\Classes\InputFileMaker.cls:

* Function MakeFile:
  - Creates command-line (to capture command-line output), output, log, stats, plot, bootstrap and bootstrap plot file names if not already specified
  - Creates command file, the nature of which, in part, depends on whether CDS or MCDS has been requested

Class Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\CDSProcess.cls:

* Function GetEngineName:
  - Gets database ProjectSettingsMemo table AnalysisEngine section Setting value for key "MCDS" or "CDS" depending on whether MCDS or CDS is requested
  - Parses "Name=Value" pairs in Setting value to get value for "ExeName", the name of the executable
  - Executable is assumed to be in App.Path, in the same folder as DnnnNEIUtil.dll
* Sub RunEngine:
  - If running under Windows NT and EC.exe is to be used, then invokes:
    - `PATH\ec "PATH\MCDS.exe MODE COMMAND_FILE \options 2>COMMAND_LINE_FILE"`
  - Otherwise, invokes:
    - `PATH\MCDS.exe MODE COMMAND_FILE \options 2>COMMAND_LINE_FILE`
  - MODE is 0 or 1 depending on the call to RunEngine - if called from CDSNEngineInterface.RunItem then it's 0

---

## MCDS implementation notes

### Random numbers

MCDS generates random numbers using the Compaq Visual Fortran function random_number, seeded from clock or a user-defined value. Two random number congruential generators are used. See L'Ecuyer 1988 or the Visual Fortran manual for more details.

Random numbers are used for to bootstrap resampling

### Covariates

Covariates are set in the Fortran file PARAMS.INC.  MAXFACS specifies the number of factor levels per covariate:

<p/>

    PARAMETER (SMALL1=1.0E-3, SMALL2=1.0E-10, SMALL3=1.0E-12,
    ...
    $          MAXFACS=200,MAXCV=MAXCOVS*(MAXFACS-1))

The default is 200. One developer has tried with 50 factors which seems to work.

### Stack sizes

| Hexadecimal | Decimal   | MB  |
| ----------- | --------- | --- |
|   800 000   |   8388608 |   8 |
| 1 000 000   |  16777216 |  16 |
| 1 400 000   |  20971520 |  20 |
| 2 800 000   |  41943040 |  40 |
| 6 400 000   | 104857600 | 100 |

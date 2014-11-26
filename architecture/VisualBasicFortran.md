---
layout: page
root: ..
title: Visual Basic and Fortran
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

## Microsoft Jet database configuration

ProjectSettingsMemo table:

| Section | Key | Setting |
| ------- | --- | ------- |
| AnalysisEngine | CDS | Description=Conventional distance sampling;<br/>Order=1;<br/>PrpProgID=D6CDSPrp.CDSProperties;<br/>PrpLicense=olvnunjlmlnnnlukjlmj;<br/>EngIntProgID=D6CDSNEI.CDSNEngineInterface;<br/>LogProgID=D6CDSDet.CDSLog;<br/>LogLicense=cgpgobbcgbhbcb;<br/>ResProgID=D6CDSDet.CDSResults;<br/>ResLicense=ononwlpmlmjlmpmpqj;<br/>ExeName=MCDS.exe; |
| AnalysisEngine | MCDS | Description=Multiple covariates distance sampling;<br/>Order=2;<br/>PrpProgID=D6CDSPrp.CDSProperties;<br/>PrpLicense=olvnunjlmlnnnlukjlmj;<br/>EngIntProgID=D6CDSNEI.CDSNEngineInterface;<br/>LogProgID=D6CDSDet.CDSLog;<br/>LogLicense=cgpgobbcgbhbcb;<br/>ResProgID=D6CDSDet.CDSResults;<br/>ResLicense=ononwlpmlmjlmpmpqj;<br/>ExeName=MCDS.exe; |
| AnalysisEngineDefaultDefinition | CDS | "Engine=CDS;<br/>Options;<br/>Stratification=None;<br/>Sample /LayerType=20;<br/>Selection=Sequential;<br/>Lookahead=1;<br/>Maxterms=5;<br/>Confidence=95;<br/>Print=Selection;<br/>End;<br/>Data /Structure=Flat;<br/>End;<br/>Estimate;<br/>Distance;<br/>Density by All;<br/>Encounter by All;<br/>Detection by All;<br/>Size by All;<br/>Estimator /Key=HN /Adjust=CO /Criterion=AIC;<br/>Monotone=Strict;<br/>Pick=AIC;<br/>GOF;<br/>Cluster /Bias=GXLOG;<br/>VarN=Empirical;<br/>End;" |
| AnalysisEngineDefaultDefinition | MCDS | "Engine=MCDS;<br/>Options;<br/>Stratification=None;<br/>Sample /LayerType=20;<br/>Selection=Specify;<br/>Confidence=95;<br/>Print=All;<br/>End;<br/>Data /Structure=Flat;<br/>End;<br/>Estimate;<br/>Distance;<br/>Density by All;<br/>Encounter by All;<br/>Detection by All;<br/>Size by All;<br/>Estimator /Key=HN /Adjust=CO /NAP=0;<br/>Monotone=None;<br/>Pick=AIC;<br/>GOF;<br/>Cluster /Bias=GXLOG;<br/>VarN=Empirical;<br/>End;" |

The AnalysisEngine values are as follows:

| Name | Value |
| ---- | ---- |
| Description | Human-readable description of analysis engine |
| Order | Position in Model Definition Properties dialog |
| PrpProgID | Properties library and class name |
| PrpLicense | Licence key for above value, created using [GenerateLicenseKey.exe](../develop/RegisterGenerateLicenceKey.html#generate-licence-key-for-component) |
| EngIntProgID | NEngine interface library and class name |
| LogProgID | Details library and Log class name |
| LogLicense | Licence key for above value, created using [GenerateLicenseKey.exe](../develop/RegisterGenerateLicenceKey.html#generate-licence-key-for-component) |
| ResProgID | Results library and class name |
| ResLicense | Licence key for above value, created using [GenerateLicenseKey.exe](../develop/RegisterGenerateLicenceKey.html#generate-licence-key-for-component) |
| ExeName | Analysis engine executable name |

ProjectSettingsBoolean table:

| Section | Key | 
| ------- | --- |
| AnalysisEngineCDS | RequiresGeoObjects |
| AnalysisEngineCDS | RunInProcess |
| AnalysisEngineMCDS | RequiresGeoObjects |
| AnalysisEngineMCDS | RunInProcess |
| AnalysisDetails | UseEC |

---

## MCDS Visual Basic invocation implementation overview

Class Analysis Engines\CDS\NEngineInterface\Classes\CDSNEngineInterface.cls:

* Function RunItem:
  - Calls DatabaseInterface.MakeFiles to create input data and command files
  - Calls CDSProcess.EngineName to get engine file name, which depends on whether a CDS or MCDS analysis is to be run (but, at present, is always MCDS.exe)
  - Gets database ProjectSettingsBoolean table AnalysisDetails section value for UseEC to see if EC.exe is to be used
  - Call CDSProcess.RunEngine to run the analysis engine
* Sub RunFinished:
  - Handles return codes from the analysis engine run
  - Calls DatabaseInterface.SaveResults to process files and update state

Class Analysis Engines\CDS\NEngineInterface\Classes\DatabaseInterface.cls:

* Interface between database and MCDS.exe files
* Function MakeFiles:
  - Gets from current state whether CDS or MCDS has been requested
  - Calls DataFileMaker.MakeFile to create input data file
  - Calls InputFileMaker.MakeFile to create command file
* Function SaveResults:
  - Processes output files and command-line output file

Class Analysis Engines\CDS\NEngineInterface\Classes\DataFileMaker.cls:

* Function MakeFile:
  - Gets data from database 
  - Creates input data file name if not already specified
  - Creates input data file, adding CDS or MCDS-specific content depending upon the analysis to be run

Class Analysis Engines\CDS\NEngineInterface\Classes\InputFileMaker.cls:

* Function MakeFile:
  - Creates command-line file name (to capture command-line output)
  - Creates output, log, stats, plot, bootstrap and bootstrap plot file names, if not already specified
  - Creates command file, adding CDS or MCDS-specific content depending upon the analysis to be run

Class Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\CDSProcess.cls:

* Function GetEngineName:
  - Gets database ProjectSettingsMemo table AnalysisEngine section value for the requested analysis (i.e. CDS or MCDS)
  - Parses Name=Value pairs to get value for ExeName, the name of the executable
  - Executable is assumed to be in App.Path, in the same folder as DnnnNEIUtil.dll
* Sub RunEngine:
  - Calls, if running under Windows NT and EC.exe is to be used:
    - `PATH\ec "PATH\MCDS.exe MODE COMMAND_FILE \options 2>COMMAND_LINE_FILE"`
  - Otherwise, calls:
    - `PATH\MCDS.exe MODE COMMAND_FILE \options 2>COMMAND_LINE_FILE`
  - MODE is 0 or 1 depending on the call to RunEngine - if called from CDSNEngineInterface.RunItem then it is 0

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

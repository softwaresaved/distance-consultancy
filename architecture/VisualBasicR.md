---
layout: page
root: ..
title: Visual Basic and R
---

## Introduction

Distance currently has two R-based analysis engines:

* MRDS fits detection functions to point and line transect distance sampling survey data
* DSM fits density surface models to spatially-referenced distance sampling data

---

## MRDS and DSM

MRDS and DSM are R libraries. For full details see the source code repositories (see [How to get DSM and MRDS R source code](../develop/DsmMrdsSourceCode.html)).

---

## How Distance for Windows calls MRDS and DSM

Distance for Windows calls MRDS and DSM libraries as follows:

* Create input files:
  - in.r - R commands 
  - ddf.dat.r - data used in detection function modelling
  - region.dat.r
  - sample.dat.r
  - obs.dat.r
  - The last three files are used in estimating density given a fitted detection function
* Invoke R, via its Rcmd.exe executable. For example:

<p/>

    C:\PROGRA~1\R\rw1091\bin\Rcmd.exe BATCH C:\temp\dst90474\in.r C:\temp\dst90474\log.r

* Wait for results.
* Parse output files.

---

## Distance for Windows R folder

Distance for Windows projects can contian an optional R\ folder within .dat\ project folders. This contains:

* .RData - R object file with objects created during analysis
  - This is virtually empty unless debugging or logging
* Image files (optional)
  - These have the naming convention PREFIX.ANALYSIS ID.PLOT NUMBER.SUFFIX
  - SUFFIX can be .wmf,(default), .jpeg, .bmp

---

## Microsoft Jet database configuration

ProjectSettingsMemo table:

| Section | Key | Setting |
| ------- | --- | ------- |
| AnalysisEngine | DSM | Description=Density surface modelling;<br/>Order=4;<br/>PrpProgID=D6DSMPrp.DSMProperties;<br/>PrpLicense=gddckfaeaeefgdpfgdda;<br/>EngIntProgID=D6DSMNEI.DSMNEngineInterface;<br/>LogProgID=D6DSMDet.DSMLog;<br/>LogLicense=okwkwpuiojkpsi;<br/>ResProgID=D6DSMDet.DSMResults;<br/>ResLicense=ghjhsjihkhhjoktllf;<br/>PackageName=dsm;<br/>SupportFileName=dsm.support.r;|
| AnalysisEngine | MRDS | Description=Mark-recapture distance sampling;<br/>Order=3;<br/>PrpProgID=D6MRDSPrp.MRDSProperties;<br/>PrpLicense=egfekedfhgiehgperfecjd;<br/>EngIntProgID=D6MRDSNEI.MRDSNEngineInterface;<br/>LogProgID=D6MRDSDet.MRDSLog;<br/>LogLicense=iiqlpghmggnmvn;<br/>ResProgID=D6MRDSDet.MRDSResults;<br/>ResLicense=gdbejchehdafagagja;<br/>PackageName=mrds;<br/>SupportFileName=mrds.support.r;|
| AnalysisEngineDefaultDefinition | DSM | Engine=DSM; |
| AnalysisEngineDefaultDefinition | MRDS | Engine=MRDS; |
| R | Path | |

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
| PackageName | R package name |
| SupportFileName | R support file name |

ProjectSettingsBoolean table:

| Section | Key | 
| ------- | --- |
| AnalysisEngineDSM | RequiresGeoObjects |
| AnalysisEngineDSM | RunInProcess |
| AnalysisEngineMRDS | RequiresGeoObjects |
| AnalysisEngineMRDS | RunInProcess |
| R | ForceLoadLibrary |
| R | UpdateFromCRAN |

---

## DSM and MRDS Visual Basic invocation implementation overview

Only DSM is shown - MRDS is similar.

Class Analysis Engines\DSM\NEngineInterface\Classes\DSMNEngineInterface.cls:

* Function RunItem:
  - Calls DatabaseInterface.MakeFiles to create input data and command files
  - Calls RProcess.EngineName to get engine file name (at present this is always Rcmd.exe)
  - Call RProcess.RunEngine to run the analysis engine
* Sub RunFinished:
  - Handles return codes from the analysis engine run
  - Calls DatabaseInterface.SaveResults to process files and update state

Class Analysis Engines\DSM\NEngineInterface\Classes\DatabaseInterface.cls:

* Interfaces between database and R files
* Function MakeFiles:
  - Calls DataFileMaker.MakeFile to create data files
  - Calls InputFileMaker.MakeFile to create input file
* Function SaveResults:
  - Processes output files and command-line output file

Class Analysis Engines\DSM\NEngineInterface\Classes\DataFileMaker.cls:

* Function MakeFile:
  - Gets data from database 
  - Creates data files which, depending on the analysis, can include:
    - Sample data file
    - Observation data file
    - Spatial prediction covariate values file
    - Spatial prediction layer file
    - Variance data file

Class Analysis Engines\DSM\NEngineInterface\Classes\InputFileMaker.cls:

* Function MakeFile:
  - Creates log, stats and result file names
  - Creates sample, observation, spatial prediction covariate, spatial prediction layers, variance file names, if not already specified
  - Creates spatial prediction results and variance results file names, if not already specified
  - Creates input file, adding R commands, depending upon the analysis.
    - This includes commands to load the library...
* Function AppendLinkDSMLibraryString:
  - Calls DnnnnNEIUtil.GetRSupportFileName to get R support file name (e.g. support.r) and adds R code to source this file 
  - Calls DnnnnNEIUtil.GetRSupportFileName to get DSM R support file name (e.g. dsm.support.r) and adds R code to source this file
  - Gets database ProjectSettingsBoolean table R section value for ForceLoadLibrary, to see if the user wants to reinstall the library
  - Gets database ProjectSettingsBoolean table R section value for UpdateFromCRAN to see if the user wants to update packages from CRAN
  - Calls DnnnnNEIUtil.GetRPackageName to get DSM package name
  - Calls DnnnnNEIUtil.GetRPackagePath to get package path
  - If ForceLoadLibrary is selected then adds R code to force installation of the library is added, otherwise R code to install the library
  - If UpdateFromCRAN is selected then adds R code to update the package from CRAN, at http://cran.r-project.org
  - Adds R code to load the library
* Function AppendRemoveNewObjectsString
  - Adds R code to remove objects added by R support file (e.g. dsm.support.r)

Class Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\CDSProcess.cls:

* Function GetEngineName:
  - Gets database ProjectSettingsMemo table R section value for Path
  - If no such value then calls DnnnnUtil.GetRInstallPath (see below) and, if found, updates database
  - Adds R executable name (i.e. RCmd.exe) to path to form engine name
* Sub RunEngine:
  - Calls `PATH\bin\i386\Rcmd.exe BATCH INPUT_FILE LOG_FILE`

Class Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\InputFileMakerUtils.cls:

* Function GetRPackageName:
  - Gets database ProjectSettingsMemo table AnalysisEngine section value for the requested analysis (i.e. DSM or MRDS)
  - Parses Name=Value pairs to get PackageName, the name of the R package
  - Returns full path to package's ZIP file or the R package name only depending upon what has been requested
* Function GetRPackagePath:
  - Gets path to App.Path\RPackages\, within the same folder as DnnnNEIUtil.dll
  - Converts path to R-compliant format
* Function GetRSupportFileName:
  - Gets database ProjectSettingsMemo table AnalysisEngine section value for the requested analysis (i.e. DSM or MRDS)
  - Parses Name=Value pairs to get SupportFileName, the name of the R support file name (i.e. dsm.support.r or mrds.support.r)
  - If no analysis was specified (i.e. "") then the R support file, support.r, is used
  - Returns support file name, prefixed with App.Path\ if requested

Class Utilities\Classes\Misc.cls:

* Function GetRInstallPath:
  - Searches Windows registry for R path
  - Gets value of HKEY_LOCAL_MACHINE\Software\R-core\R\Current Version
  - If found, gets value of HKEY_LOCAL_MACHINE\Software\R-core\R\CURRENT_VERSION\InstallPath
  - Else gets value of HKEY_CURRENT_USER\Software\R-core\R\Current Version
  - If found, gets value of HKEY_CURRENT_USER\Software\R-core\R\CURRENT_VERSION\InstallPath
  - Else, for older R versions, gets value of HKEY_LOCAL_MACHINE\Software\R-core\R\Current Version
  - If found, gets value of HKEY_LOCAL_MACHINE, Software\R-core\R\InstallPath

File Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Modules\Global.bas:

* Global Consts gstrR_SUPPORT_FILE = "support.r"
* Global Const gstrRCMD = "\bin\i386\Rcmd.exe"
* Global Const gstrBATCH = "BATCH"

---

## MRDS and DSM implementation notes

### Random numbers

R's default random number generator is used. For more information, run, within R:

<p/>

    help(.Random.Seed)

### MRDS main functions

* ddf() - fits detection function
* dht() - estimates abundance using Hortvitz-Thompson-like estimator

### DSM main functions

* dsm() - fitsdensity surface model
* predict.dsm() - produces estimated response across prediction grid

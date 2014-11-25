---
layout: page
root: ..
title: Distance for Windows and R
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

## MRDS and DSM invocation implementation details

Microsoft Jet database, DistIni.mdb, settings:

* Table: ProjectSettingsMemo
* Section: AnalysisEngine
* Field: Setting - value ';' delimited entries of form 'Name=Value'
* Entries of note are as follows:

| Key | PackageName | SupportFileName | PrgProgId | EngIntProgId | LogPropId | ResProgId | 
| --- | ----------- | --------------- | --------- | ------------ | --------- | --------- |
| DSM | dsm | dsm.support.r | D6DSMPrp.DSMProperties | D6DSMNEI.DSMNEngineInterface | D6DSMDet.DSMLog;Log | D6DSMDet.DSMResults
| MRDS | mrds | mrds.support.r | D6MRDSPrp.MRDSProperties | D6MRDSNEI.MRDSNEngineInterface | D6MRDSDet.MRDSLog | D6MRDSDet.MRDSResults |

* Table: ProjectSettingsBoolean
* Section: R
* Keys: ForceLoadLibrary, UpdateFromCRAN

Analysis Engines\DSM\NEngineInterface\Classes\InputFileMaker.cls:

* Function Makefile 
  - Creates DSM input files
* Function AppendLinkDSMLibraryString:
  - Calls D6NEIUtil.GetRSupportFileName("") to get R support file name
  - Calls D6NEIUtil.GetRSupportFileName("DSM") to get DSM R support file name
  - Gets database, ProjectSettingsBoolean table, R section, value for Key="ForceLoadLibrary"
  - Gets database, ProjectSettingsBoolean table, R section, value for Key="UpdateFromCRAN"
  - If selected, CRAN updates are done using http://cran.r-project.org
  - Calls D6NEIUtil.GetRPackageName("DSM") DSM R package name
  - Calls D6NEIUtil.GetRPackagePath to get package path

Analysis Engines\DSM\NEngineInterface\Classes\DSMNEngineInterface.cls:

* Function RunItem:
  - Calls RProcess.EngineName to get engine file name
  - Calls RProcess.RunEngine(engine file name, current folder, input file, log file)

Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\RProcess.cls

* Property Get EngineName
  - Invokes GetEngineName as a property
* Function GetEngineName:
  - Gets database, ProjectSettingsMemo table, R section, value for Key=Path
  - If not found then gets D6Util.GetRInstallPath and sets database value
  - Adds executable name, gstrRCMD, to path
* Sub RunEngine
  - Invokes `PATH\bin\i386\Rcmd.exe" gstrBATCH INPUT_FILE LOG_FILE`

Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Classes\InputFileMakerUtils.cls:

* Function GetRPackageName:
  - Gets database, ProjectSettingsMemo table, AnalysisEngine section, Setting value for Key=="DSM"\|"MRDS" and parses Name=Value pairs in Setting value to get PackageName
  - Returns full path to ZIP file or package name only depending on boolean argument
* Function GetRPackagePath:
  - Calls D6Util.RPath to convert App.Path\RPackages\ to R-compliant format
* Function GetRSupportFileName
  - If argument Key=="" then file name is set to getstrR_SUPPORT_FILE
  - Else gets database, ProjectSettingsMemo table, AnalysisEngine section, Setting value for Key=="DSM"\|"MRDS" and parses Name=Value pairs in Setting value to get SupportFileName
  - Returns file name prefixed with App.Path\ depending on boolean argument

Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Modules\Global.bas:

* Global Const gstrR_SUPPORT_FILE = "support.r"
* Global Const gstrRCMD = "\bin\i386\Rcmd.exe"
* Global Const gstrBATCH = "BATCH"

Utilities\Classes\StringHandling.cls:

* Function RPath
  - Returns string with '\' replaced by '\\\'

Utilities\Classes\Misc.cls:

* Function GetRInstallPath
  - Searches Windows registry for R path
  - Get value of HKEY_LOCAL_MACHINE\Software\R-core\R\Current Version
  - If found, get value of HKEY_LOCAL_MACHINE\Software\R-core\R\CURRENT_VERSION\InstallPath
  - Else get value of HKEY_CURRENT_USER\Software\R-core\R\Current Version
  - If found, get value of HKEY_CURRENT_USER\Software\R-core\R\CURRENT_VERSION\InstallPath
  - Else, for older R versions, get value of HKEY_LOCAL_MACHINE\Software\R-core\R\Current Version
  - If found, get value of HKEY_LOCAL_MACHINE, Software\R-core\R\InstallPath

MRDS is similar.

---

## MRDS and implementation notes

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

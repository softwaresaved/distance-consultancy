---
layout: page
root: ..
title: Release structure
---

## Introduction

Distance for Windows components and files. These are installed by the Distance for Windows installer, and the source locations they originate from.

---

## Main folder

| DLL |
| --- |
| **Database API and engine** |
| DnnnnDbeng.dll |
| **Numerical server** |
| DnnnnNSvr.dll |
| **Numerical engine (NEngine)** |
| DnnnnDesEng.dll |
| **Numerical engine interfaces (NEI)** |
| IDnnnnNEng.dll |
| DnnnnDesNEI.dll |
| DnnnnSvyNEI.dll |
| DnnnnCDSNEI.dll |
| DnnnnDSMNEI.dll |
| DnnnnMRDSNEI.dll |
| DnnnnNEIUtil.dll |
| **Wizards** |
| DnnnnIDWiz.dll |
| DnnnnSPWiz.dll |
| **Miscellaneous** |
| DnnnnUtil.dll |
| CTmr4.dll |
| CDlg3.dll |
| LogStr3.dll |
| PrjParams6.dll |

| OCX controls |
| ------------ |
| **Properties dialogs** |
| DnnnnDesPrp.ocx |
| DnnnnSvyPrp.ocx |
| DnnnnDFPrp.ocx |
| DnnnnMDPrp.ocx |
| DnnnnCDSPrp.ocx |
| DnnnnMRDSPrp.ocx |
| DnnnnDSMPrp.ocx |
| **Details pages** |
| DnnnnDesDet.ocx | 
| DnnnnSvyDet.ocx | 
| DnnnnCDSDet.ocx | 
| DnnnnDSMDet.ocx | 
| DnnnnMRDSDet.ocx |
| **GIS** |
| DnnnnMap.ocx |
| DnnnnLegend.ocx |
| **Miscellaneous** |
| CSDesc3.ocx |
| LLine3.ocx |
| LogWin3.ocx |
| SList4.ocx |

| EXE |
| --- |
| **Numerical engine (NEngine)** |
| MCDS.exe |
| Ec.exe |
| **NEngine host** |
| DnnnnNEH.exe |
| **Distance for Windows** |
| Distance.exe |
| **Utilities** |
| UNWISE.EXE (Wise uninstaller - auto-generated during installation) |

| R script |
| -------- |
| dsm.support.r |
| mrds.support.r |
| support.r |

| Miscellaneous files |
| ------------------- |
| DistIni.mdb |
| DistanceProject.ico |
| ReadMe.rtf |
| UseAgreement.txt |
| INSTALL.LOG (log file - auto-generated during installation) |

Users must have read-write access to DistIni.mdb. If not then users can specify an alternative location via registry:

* Key /Software/Distance x/DefaultSettingsDbPath where x is Distance version number
* Value to folder name of file location

Registry sub-tree search order: 

* /HKEY_CURRENT_USER
* /HKEY_LOCAL_MACHINE

---

## BACKUP folder 

| DLLs or related file from third-party components |
| ------------------------------------------------ |
| **Common Controls Replacement Project (CCRP)** |
| ccrpbds6.dll |
| **ComponentOne VSFlex** |
| VSFLEX7D.OCX |
| **Data Dynamics ActiveBar** |
| Actbar2.ocx |
| **Desaware SpyWorks** |
| dwAXExtn.dll |
| **ESRI MapObjects** |
| AF20.dll |
| JetTable20.dll |
| Mo20.ocx |
| mtch.dll |
| pe81.dll |
| sg81.dll |
| Shape20.dll |
| **Farpoint Tabpro** |
| TAB32X30.OCX |
| **Microsoft C runtime library** |
| MSVCP60.dll |
| MSVCRT.DLL |
| **Microsoft DAO** |
| DAO2535.tlb |
| DAO350.dll |
| **Microsoft Jet 3.51** |
| MSJET35.DLL |
| MSJINT35.DLL |
| MSJTER35.dll |
| **Microsoft Jet 3.51 IISAM drivers** |
| MSEXCL35.DLL |
| MSRD2X35.dll |
| MSTEXT35.DLL |
| **Microsoft Visual Basic 5 and 6** |
| COMCTL32.OCX |
| MSChrt20.ocx |
| MSComCt2.ocx |
| RichTx32.ocx |
| VB5DB.dll |
| **Polar Software PolarZIP** |
| PolarZIP.ocx |
| PolarZipSpan.dll |
| **Sheridan Software ActiveThreed** |
| SPLITTER.OCX |
| **Zlib Zip** |
| DstZip.dll |

---

## Help folder

| File |
| ---- |
| **Content for GUI widgets** |
| Authors.rtf |
| Sponsors.rtf |
| DataEntryFinished.rtf |
| DataEntryGlobal.rtf |
| DataEntryIntroduction.rtf |
| DataEntryObservation.rtf |
| DataEntrySample.rtf |
| DataEntryStratum.rtf |
| DistanceLogo.jpg |
| TipOfTheDay.txt |
| **Built-in help** |
| distance.chm |
| Distance.chw (index file auto-generated when .chm is accessed) |
| **Documents** |
|  distance.pdf |

---

## RPackages folder

| ZIP |
| --- |
| **R packages used to restore default versions within R library** |
| dsm_2.2.3.zip |
| mrds_2.1.5.zip |
| **Third-party packages** |
| BB_2014.1-1.zip | 
| RColorBrewer_1.0-5.zip |
| Rcgmin_2013-02.20.zip |
| Rcpp_0.11.1.zip |
| Rsolnp_1.14.zip |
| Rvmmin_2013-11.11.zip |
| colorspace_1.2-4.zip |
| dichromat_2.0-0.zip |
| digest_0.6.4.zip |
| ggplot2_0.9.3.1.zip |
| gtable_0.1.2.zip |
| labeling_0.2.zip |
| minqa_1.2.3.zip |
| munsell_0.4.2.zip |
| numDeriv_2012.9-1.zip |
| optimx_2013.8.6.zip |
| plyr_1.8.1.zip |
| proto_0.3-10.zip |
| quadprog_1.5-5.zip |
| reshape2_1.2.2.zip |
| scales_0.2.3.zip |
| statmod_1.4.19.zip |
| stringr_0.6.2.zip |
| truncnorm_1.0-7.zip |
| ucminf_1.1-3.zip |
| vcd_1.3-1.zip |

These are only used when the **Re-install analysis engine libraries to original versions on next run** option is selected within Distance for Windows. That these packages are otherwise not used can be seen by (for example) selecting:

* Help => Online Manuals => MRDS Engine R Help:
  - This shows 2.1.0 which corresponds to the version in the R library, C:\Programs\R\R-3.1.0\library\mrds, and not mrds_2.1.5.zip above.
* Help => Online Manuals => DSM Engine R Help:
  - This shows 2.2.5 which corresponds to the version in the R library, C:\Programs\R\R-3.1.0\library\dsm, and not dsm_2.2.3.zip above.

---

## Sample Projects folder

Sample Distance project files and folders and raw data for the user's guide. 

Each .dst file has a corresponding .dat\ folder (not shown).

| File / folder |
| ---- ---------|
| Example1.xls |
| Example1Backup.txt |
| Example2.xls |
| Example2Backup.txt |
| Amakihi.dst |
| Dolphins.dst |
| Ducknest.dst |
| Golftees.dst |
| House Wren.dst |
| Line Transect Example.dst |
| LinkingExample.dst |
| Mexico.dst |
| Point Transect Example.dst |
| Songbird.dst |
| StAndrewsBay.dst |
| Stratify example.dst |

---

## Sample Projects\Templates folder

Sample project file and data folder for use as templates for new projects.

| File |
| ---- |
| Sample Template.dat |
| Sample Template.dst\ |
| Sample Template.dst\DistData.mdb |

This is the default folder used by Distance for Windows when **Use an existing Distance project as template** is selected.

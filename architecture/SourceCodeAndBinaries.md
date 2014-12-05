---
layout: page
root: ..
title: Source code and binaries
---

## Introduction

Summary of the sources of code and non-code components that make up Distance, and the tools used to create the Distance for Windows components. This includes the location of scripts used to compile the user's guide and build the Distance for Windows installer. This page also documents the folder structures currently assumed by Distance's scripts and project files.

---

## %BASE% folders

| Source | Tooling | Output |
| ------ | ------- | ------ |
| **Analysis Engines\\** | | |
| CDS\Details\DnnnnCDSDet.vbp | VB | ocx |
| CDS\Engine\Engine\MCDS.DSW | Compaq Visual Fortran | MCDS.exe <br/> To: Shared Stuff\NEngineInterfaceUtilities\ |
| CDS\Engine\mcds\ <br/> From: CVS checkout from http://distanceengines.cvs.sourceforge.net | | MCDS.exe via above |
| CDS\NEngineInterface\DnnnnCDSNEI.vbp | VB | dll |
| CDS\Properties\DnnnnCDSPrp.vbp | VB | ocx |
| DSM\Details\DnnnnDSMDet.vbp | VB | ocx |
| DSM\Engine\dsm\ <br/> From: Git repository cloned from http://github.com/DistanceDevelopment/dsm/ | R CMD | zip <br/> To: Shared Stuff\NEngineInterfaceUtilities\RPackages\ |
| DSM\NEngineInterface\DnnnnDSMNEI.vbp | VB | dll |
| DSM\Properties\DnnnnDSMPrp.vbp | VB | ocx |
| MRDS\Details\DnnnnMRDSDet.vbp | VB | ocx |
| MRDS\Engine\mrds\mrds\ <br/> From: Git repository cloned from http://github.com/DistanceDevelopment/mrds/ | R CMD | zip <br/> To: Shared Stuff\NEngineInterfaceUtilities\RPackages\ |
| MRDS\NEngineInterface\DnnnnMRDSNEI.vbp | VB | dll |
| MRDS\Properties\DnnnnMRDSPrp.vbp | VB | ocx |
| Shared Stuff\NEngineInterfaceUtilities\DnnnnNEIUtil.vbp | VB | dll |
| Shared Stuff\NEngineInterfaceUtilities\Ec.exe <br/> From: Compaq Visual Fortran | | |
| Shared Stuff\NEngineInterfaceUtilities\MCDS.exe <br/> From: CDS\Engine\Engine\ | | |
| Shared Stuff\NEngineInterfaceUtilities\dsm.support.r | | |
| Shared Stuff\NEngineInterfaceUtilities\mrds.support.r | | |
| Shared Stuff\NEngineInterfaceUtilities\support.r | | |
| Shared Stuff\NEngineInterfaceUtilities\RPackages\.zip | | |
| Shared Stuff\NEngineInterfaceUtilities\RPackages\dsm.zip <br/> From: DSM\Engine\dsm\ | | |
| Shared Stuff\NEngineInterfaceUtilities\RPackages\mrds.zip <br/> From: MRDS\Engine\mrds\mrds\ | | |
| | | |
| **Database Engine\\** | | |
| DnnnnDbEng.vbp | VB | dll |
| DistIni.mdb | | |
| | | |
| **Design Engine\\** | | |
| Details\DnnnnDesDet.vbp | VB | ocx |
| Engine\DnnnnDesEng.vbp | VB | dll |
| NEngineInterface\DnnnnDesNEI.vbp | VB | dll |
| Properties\DnnnnDesPrp.vbp | VB | ocx |
| | | |
| **Interface\\** | | |
| Distance.vbp | VB | exe |
| | | |
| Help\Authors.rtf | | |
| Help\DataEntryFinished.rtf | | |
| Help\DataEntryGlobal.rtf | | |
| Help\DataEntryIntroduction.rtf | | |
| Help\DataEntryObservation.rtf | | |
| Help\DataEntrySample.rtf | | |
| Help\DataEntryStratum.rtf | | |
| Help\DistanceLogo.jpg <br/> From: %BASE%Extras\Graphics\Splash\D62release.jpg | | |
| Help\Sponsors.rtf | | |
| Help\TipOfTheDay.txt | | |
| Help\UseAgreement.txt | | |
| | | |
| Main\Graphics - Misc and General\DistanceProject.ico <br/> From: %BASE%Extras\Graphics\Icons\DistanceProject2.ico | | |
| | | |
| Properties\Data Filter\DnnnnDFPrp.vbp | VB | ocx |
| Properties\Model Definition\DnnnnMDPrp.vbp | VB | ocx |
| | | |
| Wizards\Import Data\DnnnnIDWiz.vbp | VB | dll |
| Wizards\Setup Project\DnnnnSPWiz.vbp | VB | dll |
| | | |
| **Map\\** | | |
| Legend\DnnnnLegend.vbp | VB | ocx |
| Mapper\DnnnnMap.vbp | VB | ocx |
| | | |
| **Misc\\** | | |
| CodeTimer\CTmr4.vbp | VB | dll |
| CommonDialog\CDlg3.vbp | VB | dll |
| CoordSysDesc\CSDesc3.vbp | VB | ocx |
| LabelLine\LLine3.vbp | VB | ocx |
| LogString\LogStr3.vbp | VB | dll |
| LogWindow\LogWin3.vbp | VB | ocx |
| PrjParams\PrjParamsnnnn.vbp | VB | dll |
| SectionList\SList4.vbp | VB | ocx |
| GenerateLicenseKey\GenerateLicenseKey.vbp (executable to generate license keys for components - this is not shipped but is needed when developing new analysis engines) | VB | exe |
| | | |
| **Numerical Server\\** | | |
| NEngineHost\DnnnnNEH.vbp | VB | exe |
| NEngineHost\EC.EXE From: Compaq Visual Fortran | | |
| NServer\DnnnnNSvr.vbp | VB | dll |
| TypeLibrary\IDnnnnNEng.vbp | VB | dll |
| | | |
| **Survey\\** | | |
| Details\DnnnnSvyDet.vbp | VB | ocx |
| NEngineInterface\DnnnnSvyNEI.vbp | VB | dll |
| Properties\DnnnnSvyPrp.vbp | VB | ocx |
| | | |
| **Utilities\\** | | |
| DnnnnUtil.vbp | VB | dll |
| Help\distance.bas <br/> From: %BASE%Extras\External Documentation\Documents\HTMLHelp\ | | |
| Help\distance.chm <br/> From: %BASE%Extras\External Documentation\Documents\HTMLHelp\ | | |
| Help\distance.pdf <br/> From: %BASE%Extras\External Documentation\Documents\Manual\distance-master.pdf | | |

Many of the Visual Basic project folders have Graphics\ sub-folders with icons, bitmaps and other images used within the GUI.

---

## %BASE%Extras folders

| Source | Tooling | Output |
| ------ | ------- | ------ |
| **External Documentation\\** | **User's guide and compiled HTML help** | |
| Documents\\*.doc (user's guide chapters) | | |
| Documents\distance.d2h | ComponentOne Doc-To-Help <br/> Uses Documents\\*.doc | Documents\HTMLHelp\distance.bas <br/> To: %BASE%\Utilities\Help\ |
| Documents\distance.d2h | ComponentOne Doc-To-Help <br> Uses Documents\\*.doc | Documents\HTMLHelp\distance.chm <br/> To: %BASE%\Utilities\Help\ |
| Documents\distance.d2h | ComponentOne Doc-To-Help <br> Uses Documents\\*.doc | Documents\Manual\distance-master.doc |
| Documents\Manual\distance-master.doc | Manually insert External Documentation\Images\TitlePage\TitlePage.wmf <br/> Adobe Acrobat | pdf <br/> To: %BASE%\Utilities\Help\distance.pdf |
| Images\TitlePage\TitlePage.ppt (title page image) | Manually insert Graphics\Splash\D62release.jpg <br/> Microsoft PowerPoint | TitlePage.wmf |
| | | |
| **Graphics\\** | | |
| Icons\DistanceProject2.ico (icon) | | To: %BASE%\Interface\Main\Graphics - Misc and General\DistanceProject.ico |
| Splash\D62release.mix (splash screen) | Microsoft PhotoDraw | D62release.jpg <br/> To: %BASE%\Interface\Help\DistanceLogo.jpg |
| | | |
| **Internal Documentation\Worklist\\** | **Known and resolved problems** | |
| KnownProblems7.doc | Manually insert | ReadMe\DMNreleaseR.rtf or DMNbetaR.rtf <br/> To: Setup\ReadMe.rtf |
| ResolvedProblems1.doc | Manually insert | ReadMe\DMNreleaseR.rtf or DMNbetaR.rtf <br/> To: Setup\ReadMe.rtf |
| | | |
| **Sample Projects Backup\\** | **Sample projects for releases** | |
| Release\\*.dat and \*.dst | | |
| Templates\SampleTemplate.dat and .dst | | |
| | | |
| **Setup\\** | **Scripts to create releases** | |
| ReadMe.rtf <br/> From: External Documentation\ReadMe\ | | To: Releases\DistanceM.N\release1\ or beta1\ |
| DMNreleaseR.wse or BMNbetaR.wse | Wise installer | DMNreleaseR.exe or DMNbetaR.exe (Distance for Windows installer) |
| DAOLen1.wse <br/> Imported by .wse files above | | | 
| - | WinZip <br/> Manually insert DMNreleaseR.exe or DMNbetaR.exe, <br/> ReadMe.rtf | dMNsetup.zip (Distance for Windows ZIP) |
| dMNsetup.zip | WinZip <br/> Manually insert SetupAbout.txt, <br/> SetupDialog, <br/> setup.ico | dMNsetup.exe Distance for Windows self-extracting installer <br/> To: Releases\DistanceM.N\release1\ or beta1\ |
| SetupAbout.txt | | |
| SetupDialog.txt | | |
| setup.ico | | |
| | | |
| **Releases\DistanceM.N\release1\ or beta1\\** | **Release archive** | |
| dMNsetup.exe <br/> From: Setup\ | |
| ReadMe.rtf <br/> From: Setup\ | |

---

## Source code repositories

| Repository | Type | Local Folder |
| ---------- | ---- | ------------ |
| [http://distanceengines.cvs.sourceforge.net](http://distanceengines.cvs.sourceforge.net) | CVS | %BASE%\Analysis Engines\CDS\Engine\mcds\ |
| [https://github.com/DistanceDevelopment/dsm](https://github.com/DistanceDevelopment/dsm) | Git | %BASE%\Analysis Engines\DSM\Engine\dsm\ |
| [https://github.com/DistanceDevelopment/mrds](https://github.com/DistanceDevelopment/mrds) | Git | %BASE%\Analysis Engines\MRDS\Engine\mrds\mrds\ |

---

## Third-party components

* Locations are those expected by the Wise Installer.
* "VB" denotes components explicity mentioned in Visual Basic projects - see [Visual Basic project dependencies](./VisualBasicProjectDependencies.html).
* "Release" denotes components arising within a Distance for Windows release - see [Release structure](./ReleaseStructure.html).

<p/>

| File | Location | VB | Install |
| ---- | -------- | -- | ------- |
| **Common Controls Replacement Project (CCRP)** | | | |
| ccrpbds6.dll | C:\Program Files\CCRP\ccrpbds6-b2\ | Y | Y |
| | | | |
| **Compaq Visual Fortran Professional** | | | |
| Ec.exe | %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Ec.exe <br/> %BASE%\Numerical Server\NEngineHost\EC.EXE | n/a | Y |
| | | | |
| **ComponentOne VSFlex** | | | |
| VSFLEX7D.OCX | C:\WINDOWS\system32\ | Y | Y |
| | | | |
| **Data Dynamics ActiveBar** | | | |
| Actbar2.ocx | C:\Program Files\Common Files\Data Dynamics\ActiveBar2\ | Y | Y |
| | | | |
| **Desaware SpyWorks** | | | |
| dwAXExtn.dll | C:\Application Development\Distance60Extras\DistanceDevCD\SpyWorks63\System32\ | Y | Y |
| | | | |
| **ESRI MapObjects** | | | |
| AF20.dll | C:\Program Files\Common Files\ESRI\ | | Y |
| JetTable20.dll | " | | Y |
| Mo20.ocx | " | Y | Y |
| mtch.dll | " | | Y |
| pe81.dll | " | | Y |
| sg81.dll | " | | Y |
| Shape20.dll | " | | Y |
| | | | |
| **Farpoint Tabpro** | | | |
| TAB32X30.OCX | C:\Program Files\Tabpro30\BIN\ | Y | Y |
| | | | |
| **IMSL Numerical routines** | | | |
| n/a | Compiled into Distance's MCDS.exe | n/a | Y |
| | | | |
| **Microsoft C runtime library** | | | |
| MSVCP60.dll | C:\Program Files\ESRI\MapObjects2\Microsoft\ | | Y |
| MSVCRT.DLL | " |  | Y |
| | | | |
| **Microsoft DAO** | | | |
| DAO2535.tlb | C:\Program Files\Common Files\Microsoft Shared\DAO\ | | Y |
| DAO350.dll | " | Y | Y |
| | | | |
| **Microsoft Jet 3.51** | Database | | |
| MSJET35.DLL | C:\WINDOWS\system32\ | | Y |
| MSJINT35.DLL | " | | Y |
| MSJTER35.dll | " | | Y |
| | | | |
| **Microsoft Jet 3.51 IISAM drivers** | | | |
| MSEXCL35.DLL | " | | Y |
| MSRD2X35.dll | " | | Y |
| MSTEXT35.DLL | " | | Y |
| | | | |
| **Microsoft Windows Script** | | | |
| scrrun.dll | C:\WINDOWS\system32\ | Y | |
| stdole2.tlb | C:\WINDOWS\system32\ | Y | |
| vbscript.dll | C:\WINDOWS\system32\ | Y | |
| | | | |
| **Microsoft Visual Basic 5 and 6** | | | |
| COMCTL32.OCX | C:\WINDOWS\system32\ | Y | Y |
| comdlg32.ocx | C:\WINDOWS\system32\ | Y | |
| MSChrt20.ocx | " | Y | Y |
| MSComCt2.ocx | " | Y | Y |
| RichTx32.ocx | " | Y | Y |
| VB5DB.dll | " | | Y |
| | | | |
| **Polar Software PolarZIP** | | | |
| PolarZIP.ocx | C:\Program Files\Polar ZIP\Redistribution\ | Y | Y |
| PolarZipSpan.dll | " | | Y |
| | | | |
| **Sheridan Software ActiveThreed** | | | |
| SPLITTER.OCX | C:\Program Files\ActiveThreed\ | Y | Y |
| | | | |
| **Zlib Zip** | | | |
| DstZip.dll | C:\Application Development\Distance60Extras\DistanceDevCD\Zlib\ | | Y |

---
layout: page
root: ..
title: Source Code and Binaries
---

Distance for Windows source code locations and the binaries, and other resources, built from it.

In the Binary/Output column a "copy" entry denotes content that has been manually copied or duplicates a file from elsewhere in Distance, or a Distance repository. See the Copies table.

%BASE%
------

| Source/Input | Tooling | Binary/Output |
| ------------ | ------- | ------------- |
| **%BASE%\Analysis Engines\** | | |
| CDS\Details\DnnnnCDSDet.vbp | VB | ocx |
| CDS\Engine\Engine\MCDS.DSW <br/> Uses mcds\ | Compaq Visual Fortran | MCDS.exe | 
| CDS\Engine\mcds\ | | copy |
| CDS\NEngineInterface\DnnnnCDSNEI.vbp | VB | dll |
| CDS\Properties\DnnnnCDSPrp.vbp | VB | ocx |
| DSM\Details\DnnnnDSMDet.vbp | VB | ocx |
| DSM\Engine\dsm | R CMD | zip |
| | | copy |
| DSM\NEngineInterface\DnnnnDSMNEI.vbp | VB | dll |
| DSM\Properties\DnnnnDSMPrp.vbp | VB | ocx |
| MRDS\Details\DnnnnMRDSDet.vbp | VB | ocx |
| MRDS\Engine\mrds | R CMD | zip | 
| | | copy |
| MRDS\NEngineInterface\DnnnnMRDSNEI.vbp | VB | dll |
| MRDS\Properties\DnnnnMRDSPrp.vbp | VB | ocx |
| Shared Stuff\NEngineInterfaceUtilities\DnnnnNEIUtil.vbp | VB | dll |
| Shared Stuff\NEngineInterfaceUtilities\Ec.exe | | copy |
| Shared Stuff\NEngineInterfaceUtilities\MCDS.exe | | copy |
| Shared Stuff\NEngineInterfaceUtilities\dsm.support.r | | |
| Shared Stuff\NEngineInterfaceUtilities\mrds.support.r | | |
| Shared Stuff\NEngineInterfaceUtilities\support.r | | |
| Shared Stuff\NEngineInterfaceUtilities\RPackages\.zip | | |
| Shared Stuff\NEngineInterfaceUtilities\RPackages\dsm.zip | | copy |
| Shared Stuff\NEngineInterfaceUtilities\RPackages\mrds.zip | | copy |
| | | |
| **%BASE%\Database Engine\** | | |
| DnnnnDbEng.vbp | VB | dll |
| DistIni.mdb | | |
| | | |
| **%BASE%\Design Engine\** | | |
| Details\DnnnnDesDet.vbp | VB | ocx |
| Engine\DnnnnDesEng.vbp | VB | dll |
| NEngineInterface\DnnnnDesNEI.vbp | VB | dll |
| Properties\DnnnnDesPrp.vbp | VB | ocx |
| | | |
| **%BASE%\Interface\** | | |
| Distance.vbp | VB | exe |
| | | |
| Help\Authors.rtf | | |
| Help\DataEntryFinished.rtf | | |
| Help\DataEntryGlobal.rtf | | |
| Help\DataEntryIntroduction.rtf | | |
| Help\DataEntryObservation.rtf | | |
| Help\DataEntrySample.rtf | | |
| Help\DataEntryStratum.rtf | | |
| Help\DistanceLogo.jpg | | copy |
| Help\Sponsors.rtf | | |
| Help\TipOfTheDay.txt | | |
| Help\UseAgreement.txt | | |
| | | |
| Main\Graphics - Misc and General\DistanceProject.ico | | copy |
| Properties\Data Filter\DnnnnDFPrp.vbp | VB | ocx |
| Properties\Model Definition\DnnnnMDPrp.vbp | VB | ocx |
| Wizards\Import Data\DnnnnIDWiz.vbp | VB | dll |
| Wizards\Setup Project\DnnnnSPWiz.vbp | VB | dll |
| | | |
| **%BASE%\Map\** | | |
| Legend\DnnnnLegend.vbp | VB | ocx |
| Mapper\DnnnnMap.vbp | VB | ocx |
| | | |
| **%BASE%\Misc\** | | |
| CodeTimer\CTmr4.vbp | VB | dll |
| CommonDialog\CDlg3.vbp | VB | dll |
| CoordSysDesc\CSDesc3.vbp | VB | ocx |
| LabelLine\LLine3.vbp | VB | ocx |
| LogString\LogStr3.vbp | VB | dll |
| LogWindow\LogWin3.vbp | VB | ocx |
| PrjParams\PrjParamsnnnn.vbp | VB | dll |
| SectionList\SList4.vbp | VB | ocx |
| | | |
| **%BASE%\Numerical Server\** | | |
| NEngineHost\DnnnnNEH.vbp | VB | exe |
| NEngineHost\EC.EXE | | copy |
| NServer\DnnnnNSvr.vbp | VB | dll |
| TypeLibrary\IDnnnnNEng.vbp | VB | dll |
| | | |
| **%BASE%\Survey\** | | |
| Details\DnnnnSvyDet.vbp | VB | ocx |
| NEngineInterface\DnnnnSvyNEI.vbp | VB | dll |
| Properties\DnnnnSvyPrp.vbp | VB | ocx |
| | | |
| **%BASE%\Utilities\** | | |
| DnnnnUtil.vbp | VB | dll |
| Help\distance.bas | | copy |
| Help\distance.chm | | copy |
| Help\distance.pdf | | copy |

%BASE%Extras
------------

| Source/Input | Tooling | Binary/Output |
| ------------ | ------- | ------------- |
| **%BASE%Extras\External Documentation\** | | |
| Documents\distance.d2h <br> Uses Documents\\*.doc | ComponentOne Doc-To-Help | HTMLHelp\distance.bas |
| Documents\distance.d2h <br> Uses Documents\\*.doc | ComponentOne Doc-To-Help | HTMLHelp\distance.chm |
| Documents\distance.d2h <br> Uses Documents\\*.doc | ComponentOne Doc-To-Help | Manual\distance-master.doc |
| Documents\\*.doc | | |
| Documents\Manual\distance-master.doc | Insert %BASE%Extras\External Documentation\Images\TitlePage\TitlePage.wmf <br/> Adobe Acrobat | pdf |
| Images\TitlePage\TitlePage.ppt | Insert %BASE%Extras\Graphics\Splash\D62release.jpg <br/> Microsoft PowerPoint | TitlePage.wmf |
| ReadMe\ReadMe31.rtf | Insert %BASE%Extras\Internal documents\Worklist\KnownProblems7.doc <br/> and %BASE%Extras\Internal documents\Worklist\ResolvedProblems1.doc | |
| | | |
| **%BASE%Extras\Graphics\** | | |
| Icons\DistanceProject2.ico | | |
| Splash\D62release.mix | Microsoft PhotoDraw | D62release.jpg |
| | | |
| **%BASE%Extras\Internal Documentation\Worklist** | | |
| KnownProblems7.doc | | |
| ResolvedProblems1.doc | | |
| | | |
| **%BASE%Extras\Sample Projects Backup** | | |
| Release\\*.dat and \*.dst | | |
| Templates\SampleTemplate.dat and .dst | | |
| | | |
| **%BASE%Extras\Setup** | | |
| ReadMe.rtf | | copy |

Copies
------

Content that has been manually copied or duplicates a file from elsewhere in Distance, or a Distance repository.

| Copy | Original |
| ---- | -------- |
| %BASE%\Analysis Engines\CDS\Engine\mcds\ | CVS checkout from http://distanceengines.cvs.sourceforge.net |
| %BASE%\Analysis Engines\DSM\Engine\dsm | Git repository cloned from http://github.com/DistanceDevelopment/dsm/ |
| %BASE%\Analysis Engines\MRDS\Engine\mrds | Git repository cloned from http://github.com/DistanceDevelopment/mrds/ |
| %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Ec.exe | Identical to %BASE%\Numerical Server\NEngineHost\EC.EXE <br/> Originates from Compaq Visual Fortran. |
| %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\MCDS.exe | %BASE%\Analysis Engines\CDS\Engine\MCDS.exe |
| %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\dsm.zip | %BASE%\Analysis Engines\DSM\Engine\dsm.zip |
| %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\mrds.zip |%BASE%\Analysis Engines\MRDS\Engine\mrds.zip |
| %BASE%\Interface\Help\DistanceLogo.jpg | %BASE%Extras\Graphics\Splash\D62release.jpg |
| %BASE%\Interface\Main\Graphics - Misc and General\DistanceProject.ico | %BASE%Extras\Graphics\Icons\DistanceProject2.ico |
| %BASE%\Numerical Server\NEngineHost\EC.EXE | Identical to %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\Ec.exe <br/> Originates from Compaq Visual Fortran. |
| %BASE%\Utilities\Help\distance.bas | %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.bas |
| %BASE%\Utilities\Help\distance.chm | %BASE%Extras\External Documentation\Documents\HTMLHelp\distance.chm |
| %BASE%\Utilities\Help\distance.pdf | %BASE%Extras\External Documentation\Documents\Manual\distance-master.pdf |
| %BASE%Extras\Setup\ReadMe.rtf | %BASE%Extras\External Documentation\ReadMe\ReadMe31.rtf |

Third-party
-----------

* "VB" denotes components explicity mentioned in Visual Basic projects - see [Visual Basic Project Dependencies](./VisualBasicProjectDependencies.html).
* "Release" denotes components arising within a Distance for Windows release - see [Release Structure](./ReleaseStructure.html).

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

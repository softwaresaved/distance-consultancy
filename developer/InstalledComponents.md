Installed Components
====================

Distance for Windows components and files installed by the Distance for Windows installer, and the source locations they originate from.

For an overview of the Distance source code and how these installed components are built from it, see [Source Code and Binaries](./SourceCodeAndBinaries.md).

----------------------------------------------------------------------

DLLs 
----

| DLL | Source location (relative to %BASE%) | Description |
| --- | ------------------------------------ | ----------- |
| **Database API and engine** | | |
| DnnnnDbeng.dll | Database Engine\ | Manages project files and data files. |
| | | |
| **Numerical server** | | |
| DnnnnNSvr.dll | Numerical Server\NServer\ | Manages NEngine runs |
| | | |
| **Numerical engine (NEngine)** | | |
| DnnnnDesEng.dll | Design Engine\Engine\ | Design and survey engine |
| | | |
| **Numerical engine interfaces (NEI)** | | One per NEngine |
| IDnnnnNEng.dll | Numerical Server\TypeLibrary\ | NEI type library - implemented by all NEIs |
| DnnnnDesNEI.dll | Design Engine\NEngineInterface\ | Design engine NEI |
| DnnnnSvyNEI.dll | Survey\NEngineInterface\ | Alternate design engine NEI used for generating single surveys (as opposed to running designs to estimate coverage) |
| DnnnnCDSNEI.dll | Analysis Engines\CDS\NEngineInterface\ | CDS and MCDS NEI | 
| DnnnnDSMNEI.dll | Analysis Engines\DSM\NEngineInterface\ | DSM NEI |
| DnnnnMRDSNEI.dll | Analysis Engines\MRDS\NEngineInterface\ | MRDS NEI |
| DnnnnNEIUtil.dll | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | NEI utilities |
| | | |
| **Wizards** | | |
| DnnnnIDWiz.dll | Interface\Wizards\Setup Project\ | Import Data wizard |
| DnnnnSPWiz.dll | Interface\Wizards\Import Data\ | Setup Project wizard |
| | | |
| **Miscellaneous** | | |
| DnnnnUtil.dll | Utilities\ | Utilities for strings, files, random numbers | 
| CTmr4.dll | Misc\CodeTimer\ | High-resolution code timer, improved replacement for Microsoft's timer control |
| CDlg3.dll | Misc\CommonDialog\ | Common dialog, improved replacement for Microsoft's common dialog control |
| LogStr3.dll | Misc\LogString\ | Log string class, for appending strings within Log windows |
| PrjParams6.dll | Misc\PrjParams\ | Projection Parameters dialog, for editing GIS projection parameters |

----------------------------------------------------------------------

OCX controls
------------

Widgets for display and interaction in the GUI. These are plugged-into Distance for Windows.

| OCX | Source location (relative to %BASE%) | Description |
| --- | ------------------------------------ | ----------- |
| **Properties dialogs** | | Specifying options - one per NEngine plus others |
| DnnnnDesPrp.ocx | Design Engine\Properties\ | Design properties | 
| DnnnnSvyPrp.ocx | Survey\Properties\ | Survey properties |
| DnnnnDFPrp.ocx | Interface\Properties\Data Filter\ | Data filter properties |
| DnnnnMDPrp.ocx | Interface\Properties\Model Definition\ | Model definition properties - container for CDS and MRDS properties |
| DnnnnCDSPrp.ocx | Analysis Engines\CDS\Properties\ | CDS analysis engine properties |
| DnnnnMRDSPrp.ocx | Analysis Engines\MRDS\Properties\ | MRDS analysis engine properties |
| DnnnnDSMPrp.ocx | Analysis Engines\DSM\Properties\ | DSM analysis engine properties |
| | | |
| **Details pages** | | Viewing logs and results of runs - one per NEngine plus others |
| DnnnnDesDet.ocx | Design Engine\Details\ | Design details |
| DnnnnSvyDet.ocx | Survey\Details\ | Survey details |
| DnnnnCDSDet.ocx | Analysis Engines\CDS\Details\ | CDS analysis engine details |
| DnnnnDSMDet.ocx | Analysis Engines\DSM\Details\ | DSM analysis engine details |
| DnnnnMRDSDet.ocx | Analysis Engines\MRDS\Details\ | MRDS analysis engine details |
| | | |
| **GIS** | | |
| DnnnnMap.ocx | Map\Mapper\ | Map display control |
| DnnnnLegend.ocx | Map\Legend\ | Map legend control |
| | | |
| **Miscellaneous** | | |
| CSDesc3.ocx | Misc\CoordSysDesc\ | Co-ordinate system description |
| LLine3.ocx | Misc\LabelLine\ | Labels with 3D lines |
| LogWin3.ocx | Misc\LogWindow\ | Log window |
| SList4.ocx | Misc\SectionList\ | Section list - efficient drop-down combo box for long lists |

----------------------------------------------------------------------

Executables
-----------

| OCX | Source location (relative to %BASE%) | Description |
| --- | ------------------------------------ | ----------- |
| **Numerical engine (NEngine)** | | |
| MCDS.exe | Analysis Engines\CDS\Engine\ <br/> CVS repository http://distanceengines.cvs.sourceforge.net/ | Distance MCDS NEngine for MCDS and CDS |
| | | |
| **NEngine host** | | |
| DnnnnNEH.exe | Numerical Server\NEngineHost\ | Provides an indirect method the Numerical Server can use to call NEngine interfaces so that they run out of process. |
| | | |
| **Distance for Windows** | | |
| Distance.exe | Interface\ | Distance for Windows GUI and entry point for user |
| | | |
| **Utilities** | | |
| Ec.exe | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | Execute program and capture standard output and errors, used to invoke MCDS.exe. |
| UNWISE.EXE | Auto-generated during installation | Wise uninstaller |

----------------------------------------------------------------------

R scripts
---------

| R script | Source location (relative to %BASE%) | Description |
| -------- | ------------------------------------ | ----------- |
| dsm.support.r | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | Support functions used when Distance calls the dsm library |
| mrds.support.r | " | Support functions used when Distance calls the mrds library |
| support.r | " | Functions used when Distance interfaces with R |

----------------------------------------------------------------------

Miscellaneous
-------------

| R script | Source location | Description |
| -------- | --------------- | ----------- |
| DistIni.mdb | %BASE%\Database Engine\DistIni.mdb | Default project settings and settings not unique to specific projects |
| DistanceProject.ico | %BASE%Extras\Graphics\Icons\DistanceProject2.ico | Icon |
| ReadMe.rtf | %BASE%Extras\External Documentation\Readme\ReadMe31.rtf <br/> %BASE%Extras\Internal documents\Worklist\KnownProblems7.doc <br/> %BASE%Extras\Internal documents\Worklist\ResolvedProblems1.doc | Release notes |
| UseAgreement.txt | %BASE%\Interface\Help\ | For Help => About Distance... |
| INSTALL.LOG | Auto-generated during installation | Log file |

Users must have read-write access to DistIni.mdb. If not then users can specify an alternative location via registry:

* Key /Software/Distance x/DefaultSettingsDbPath where x is Distance version number
* Value to folder name of file location

Registry sub-tree search order: 

* /HKEY_CURRENT_USER
* /HKEY_LOCAL_MACHINE

----------------------------------------------------------------------

BACKUP folder 
-------------

DLLs and related files from third-party components.

| File | Location | Description |
| ---- | -------- | ----------- | 
| Common Controls Replacement Project (CCRP) | | Fancy folder browser dialog |
| ccrpbds6.dll | C:\Program Files\CCRP\ccrpbds6-b2\ | |
| | | |
| ComponentOne | VSFlex | Spreadsheet functionality |
| VSFLEX7D.OCX | C:\WINDOWS\system32\ | |
| | | |
| Data Dynamics | ActiveBar | Toolbar functionality |
| Actbar2.ocx | C:\Program Files\Common Files\Data Dynamics\ActiveBar2\ | |
| | | |
| Desaware | SpyWorks | Low-level functions for process manipulation | 
| dwAXExtn.dll | C:\Application Development\Distance60Extras\DistanceDevCD\SpyWorks63\System32\ | |
| | | |
| ESRI | GIS shapefile I/O and manipulation | |
| AF20.dll | C:\Program Files\Common Files\ESRI\ | |
| JetTable20.dll | " | |
| Mo20.ocx | " | |
| mtch.dll | " | |
| pe81.dll | " | |
| sg81.dll | " | |
| Shape20.dll | " | |
| | | |
| Farpoint | Tabpro | Tabs |
| TAB32X30.OCX | C:\Program Files\Tabpro30\BIN\ | |
| | | |
| Microsoft | C runtime library | |
| MSVCP60.dll | C:\Program Files\ESRI\MapObjects2\Microsoft\ | |
| MSVCRT.DLL | " |  |
| | | |
| Microsoft | DAO | Data access objects |
| DAO2535.tlb | C:\Program Files\Common Files\Microsoft Shared\DAO\ | |
| DAO350.dll | " | DAO 3.51 Object Library |
| | | |
| Microsoft | Jet 3.51 | Database |
| MSJET35.DLL | C:\WINDOWS\system32\ | |
| MSJINT35.DLL | " | |
| MSJTER35.dll | " | Errors |
| | | |
| Microsoft | Jet 3.51 IISAM drivers | Installable Indexed Sequential Access Method | 
| MSEXCL35.DLL | " | Microsoft Excel 3.0-8.0 spreadsheets |
| MSRD2X35.dll | " | Native Microsoft Access 97 and earlier databases|
| MSTEXT35.DLL | " | Tabular text files |
| | | |
| Microsoft | Visual Basic 5 and 6 | Widgets |
| COMCTL32.OCX | C:\WINDOWS\system32\ | Windows Common Controls ActiveX Control Module
| MSChrt20.ocx | " | Chart |
| MSComCt2.ocx | " | Common Controls 2 ActiveX Control |
| RichTx32.ocx | " | Rich Text OLE Control |
| VB5DB.dll | " | Visual Basic ICursor interface library |
| | | |
| Polar Software | PolarZIP | Compression functions |
| PolarZIP.ocx | C:\Program Files\Polar ZIP\Redistribution\ | |
| PolarZipSpan.dll | " | |
| | | |
| Sheridan Software | ActiveThreed | Split-window functionality |
| SPLITTER.OCX | C:\Program Files\ActiveThreed\ | |
| | |
| Zlib | Zip | Compression functions - for legacy purposes only |
| DstZip.dll | C:\Application Development\Distance60Extras\DistanceDevCD\Zlib\ | |

----------------------------------------------------------------------

Help folder
-----------

| File | Source location | Description |
| ---- | --------------- | ----------- |
| **Content for GUI widgets** | | |
| Authors.rtf | %BASE%\Interface\Help\ | For Help => About Distance... |
| Sponsors.rtf | " | For Help => About Distance... |
| DataEntryFinished.rtf | " | |
| DataEntryGlobal.rtf | " | |
| DataEntryIntroduction.rtf | " | |
| DataEntryObservation.rtf | " | |
| DataEntrySample.rtf | " | |
| DataEntryStratum.rtf | " | |
| DistanceLogo.jpg | %BASE%Extras\Graphics\Splash\D62release.mix | For splash screen and Help => About Distance... |
| TipOfTheDay.txt | " |For tips of the day. One tip per line. |
| | | |
| **Built-in help** | | |
| distance.chm | %BASE%Extras\External Documentation\Documents\ | Distance for Windows compiled HTML help |
| Distance.chw  | Auto-generated when .chm is accessed | Index file |
| | | |
| **Documents** | | |
|  distance.pdf | %BASE%Extras\External Documentation\Documents\ <br/> %BASE%Extras\Graphics\Splash\D62release.mix | User's guide |

----------------------------------------------------------------------

RPackages folder
----------------

R packages used to restore default versions within R library.

| ZIP | Source location |
| --- | ----------- |
| dsm_2.2.3.zip | %BASE%\Analysis Engines\DSM\Engine\dsm\ <br/> Git repository http://github.com/DistanceDevelopment/dsm |
| mrds_2.1.5.zip | %BASE%\Analysis Engines\MRDS\Engine\mrds\ <br/> Git repository http://github.com/DistanceDevelopment/mrds |

Third-party packages:

* Source location: %BASE%\Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\RPackages\

| ZIP |
| --- |
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

----------------------------------------------------------------------

Sample Projects\Templates folder
--------------------------------

Sample project file and data folder for use as templates for new projects.

* Source location: %BASE%Extras\Sample Projects Backup\Templates\
* How to build: Shipped as-is.

| File | Description |
| ---- | ----------- |
| Sample Template.dat | Distance project file |
| Sample Template.dst\ | Distance data folder |
| Sample Template.dst\DistData.mdb | Distance data file |

This is the default folder used by Distance for Windows when **Use an existing Distance project as template** is selected.

----------------------------------------------------------------------

Sample Projects folder
----------------------

Sample Distance project files and folders and raw data for the user's guide. 

Each .dst file has a .dat\ folder (not shown) containing a DistData.mdb file (not shown). Additional files in this .dat folder are listed where applicable.

* Source location: %BASE%Extras\Sample Projects Backup\Release\
* How to build: Shipped as-is.

| File | Description |
| ---- | ----------- |
| Example1.xls | Raw data |
| Example1Backup.txt | Raw data |
| Example2.xls - raw data | Raw data |
| Example2Backup.txt | Raw data |
| Amakihi.dst | Raw data |
| Dolphins.dst  | Includes .dbf, .shp, .shx |
| Ducknest.dst | |
| Golftees.dst | | 
| House Wren.dst | |
| Line Transect Example.dst | |
| LinkingExample.dst | Includes .mdb, .xls, .txt, .ini, .dbf, .shp, .shx |
| Mexico.dst | Includes .dat plus .dbf, .prj, .sbn, .sbx, .shp, .shx |
| Point Transect Example.dst | |
| Songbird.dst | |
| StAndrewsBay.dst | Includes .dbf, .shp, .shx |
| Stratify example.dst | |

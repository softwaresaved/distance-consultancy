
Distance for Windows 6 - Component Reference
============================================

Reference guide to Distance for Windows 6 components as they appear in a Distance for Windows installation.

Notes:

* Source location: location on Distance developer's virtual machine.
* **None** - neither the user's guide nor the developer's manual mention these files.
* For file extensions see, [File extensions](./FileExtensions.md).

----------------------------------------------------------------------

DLLs 
----

* Language: Visual Basic source code.
* Source location: relative to %BASE%.

<p/>

| DLL | Source location | How to build? | Description |
| - | - | - | - |
| **Database API and engine** | | | |
| D6Dbeng.dll | Database Engine | ? | Manages project files and data files. |
| **Numerical server** | | | |
| D6NSvr.dll | Numerical server\NServer | ? | Manages NEngine runs |
| **Numerical engine (NEngine)** | | | |
| D6DesEng.dll | Design engine\Engine | ? | Design and survey engine |
| **Numerical engine interfaces (NEI)** | | | One per NEngine |
| ID6NEng.dll | Numerical server\TypeLibrary | ? | NEI type library - implemented by all NEIs |
| D6DesNEI.dll | Design engine\NEngineInterface | ? | Design engine NEI |
| D6SvyNEI.dll | Survey\NEngineInterface | ? | Alternate design engine NEI used for generating single surveys (as opposed to running designs to estimate coverage) |
| D6CDSNEI.dll | Analysis engines\CDS | ? | CDS and MCDS NEI | 
| D6DSMNEI.dll | Analysis engines\DSM\NEngineInterface | ? | DSM NEI |
| D6MRDSNEI.dll | Analysis engines\MRDS\NEngineInterface | ? | MRDS NEI |
| D6NEIUtil.dll | Analysis engines\Shared Stuff\NEngineInterfaceUtilities | ? | NEI utilities |
| **Wizards** | | | |
| D6IDWiz.dll | Interface\Properties\Wizards\Setup Project | ? | Import Data wizard |
| D6SPWiz.dll | Interface\Properties\Wizards\Import Data | ? | Setup Project wizard |
| **Miscellaneous** | | | |
| D6Util.dll | Utilities | ? | Utilities for strings, files, random numbers | 
| CTmr4.dll | Other\CodeTimer | ? | High-resolution code timer, improved replacement for Microsoft's timer control |
| CDlg3.dll | Other\CommonDialog | ? | Common dialog, improved replacement for Microsoft's common dialog control |
| LogStr3.dll | Other\LogString | ? | Log string class, for appending strings within Log windows |
| PrjParams6.dll | Other\PrjParams | ? | Projection Parameters dialog, for editing GIS projection parameters |

----------------------------------------------------------------------

OCX controls
------------

Widgets for display and interaction in the GUI. These are plugged-into Distance for Windows.

* Language: Visual Basic source code.
* Source location: relative to %BASE%.

| OCX | Source location | How to build? | Description |
| - | - | - | - |
| **Properties dialogs** | | | Specifying options - one per NEngine plus others |
| D6DesPrp.ocx | Design engine\Properties | ? | Design properties | 
| D6SvyPrp.ocx | Survey\Properties | ? | Survey properties |
| D6DFPrp.ocx | Interface Properties\Data Filter | ? | Data filter properties |
| D6MDPrp.ocx | Interface Properties\Model Definition | ? | Model definition properties - container for CDS and MRDS properties |
| D6CDSPrp.ocx | Analysis engines\CDS\Properties  | ? | CDS analysis engine properties |
| D6MRDSPrp.ocx | Analysis engines\MRDS\Properties | ? | MRDS analysis engine properties |
| D6DSMPrp.ocx | Analysis engines\DSM\Properties | ? | DSM analysis engine properties |
| **Details pages** | | | Viewing logs and results of runs - one per NEngine plus others |
| D6DesDet.ocx |Design engine\Details | ? | Design details |
| D6SvyDet.ocx | Survey\Details | ? | Survey details |
| D6CDSDet.ocx | Analysis engines\CDS\Details | ? | CDS analysis engine details |
| D6DSMDet.ocx | Analysis engines\DSM\Details | ? | DSM analysis engine details |
| D6MRDSDet.ocx | Analysis engines\MRDS\Details | ? | MRDS analysis engine details |
| **GIS** | | | |
| D6Map.ocx | Map\Mapper | ? | Map display control |
| D6Legend.ocx | Map\Legend | ? | Map legend control |
| **Miscellaneous** | | | | 
| CSDesc3.ocx | Other\CoordSysDesc | ? |  Co-ordinate system description |
| LLine3.ocx | Other\LabelLine | ? | Labels with 3D lines |
| LogWin3.ocx | Other\LogWindow | ? | Log window |
| SList4.ocx | Other\SectionLis | ? | Section list - efficient drop-down combo box for long lists |

----------------------------------------------------------------------

Executables
-----------

| EXE | Source location: | Language | How to build? | Description |
| - | - | - | - | - |
| **Numerical engine (NEngine)** | | | | |
| MCDS.exe | %BASE%\Analysis Engines\CDS\Engine | FORTRAN | ? | Distance MCDS NEngine for MCDS and CDS |
| **NEngine host** | | | | |
| D6NEH.exe | Numerical server\NEngineHost | VB | ? | Provides an indirect method the Numerical Server can use to call NEngine interfaces so that they run out of process. |
| Distance for Windows | | | | |
| Distance.exe | %BASE%\Interface | VB | ? | Distance for Windows GUI and entry point for user |
| **Utilities** | | | | |
| Ec.exe | | | ? | Execute program and capture standard output and errors, used to invoke MCDS.exe **None** |
| UNWISE.EXE | | | ? | Wise uninstaller **None** |

----------------------------------------------------------------------

R scripts
---------

* Language: R source code.
* Source location: relative to %BASE%.
* How to build?: Shipped as-is.

| R | Source location | Description |
| - | - | - | - |
| dsm.support.r | | Support functions used when Distance calls the dsm library **None** |
| mrds.support.r | | Support functions used when Distance calls the mrds library **None** |
| support.r | | Functions that used by Distance when interfacing with R **None** |

----------------------------------------------------------------------

Miscellaneous
-------------

* How to build?: Shipped as-is.

| File | Source location | Description |
| - | - | - | - |
| DistIni.mdb | ? | Default project settings and settings not unique to specific projects |
| DistanceProject.ico | ? | Icon |
| ReadMe.rtf | ? | Release notes |
| UseAgreement.txt | ? | For Help => About Distance... |
| INSTALL.LOG | n/a | Log file auto-generated during installation |

Users must have read-write access to `DistIni.mdb`. If not then users can specify an alternative location via registry:

* Key `/Software/Distance x/DefaultSettingsDbPath` where `x` is Distance version number
* Value to folder name of file location

Registry sub-tree search order: 

* `/HKEY_CURRENT_USER`
* `/HKEY_LOCAL_MACHINE`

----------------------------------------------------------------------

`BACKUP` folder 
---------------

**None**

| File |
| - |
| AF20.dll |
| Actbar2.ocx |
| Dao2535.tlb |
| DstZip.dll |
| JetTable20.dll |
| MSChrt20.ocx |
| MSComCt2.ocx |
| MSEXCL35.DLL |
| MSJET35.DLL |
| MSJINT35.DLL |
| MSJTER35.dll |
| MSRD2X35.dll |
| MSTEXT35.DLL |
| MSVCP60.dll |
| MSVCRT.DLL |
| Mo20.ocx |
| PolarZIP.ocx |
| PolarZipSpan.dll |
| RichTx32.ocx |
| SPLITTER.OCX |
| Shape20.dll |
| TAB32X30.OCX |
| VB5DB.dll |
| VSFLEX7D.OCX |
| ccrpbds6.dll |
| comctl32.ocx |
| dao350.dll |
| dwAXExtn.dll |
| mtch.dll |
| pe81.dll |
| sg81.dll |

----------------------------------------------------------------------

`Help` folder
-------------

| File | Source location | How to build? | Description |
| - | - | - | - |
| **Content for GUI widgets** | | | |
| Authors.rtf | | ? | For Help => About Distance... |
| Sponsors.rtf | | ? | For Help => About Distance... |
| DataEntryFinished.rtf | | ? | |
| DataEntryGlobal.rtf | | ? | |
| DataEntryIntroduction.rtf | | ? | |
| DataEntryObservation.rtf | | ? | |
| DataEntrySample.rtf | | ? | |
| DataEntryStratum.rtf | | ? | |
| DistanceLogo.jpg  | %BASE%Extras\Splash | ? | For splash screen and Help => About Distance... |
| TipOfTheDay.txt  | | ? | For tips of the day. One tip per line. |
| **Built-in help** | | | |
| distance.chm  | %BASE%Extras\External documentation | ? | Distance for Windows HTML help |
| Distance.chw  | n/a | Auto-generated when `.chm` is accessed | Index file |
| **Documents** | | | |
|  distance.pdf | %BASE%Extras\External documentation | ? | User's guide |

----------------------------------------------------------------------

`RPackages` folder
------------------

R packages used to restore default versions within R library.

* Source location: relative to %BASE%.
* How to build?: Shipped as-is.

| ZIP | Source location |
| - | |
| BB_2014.1-1.zip | |
| RColorBrewer_1.0-5.zip | |
| Rcgmin_2013-02.20.zip | |
| Rcpp_0.11.1.zip | |
| Rsolnp_1.14.zip | |
| Rvmmin_2013-11.11.zip | |
| colorspace_1.2-4.zip | |
| dichromat_2.0-0.zip | |
| digest_0.6.4.zip | |
| dsm_2.2.3.zip | |
| ggplot2_0.9.3.1.zip | |
| gtable_0.1.2.zip | |
| labeling_0.2.zip | |
| minqa_1.2.3.zip | |
| mrds_2.1.5.zip | |
| munsell_0.4.2.zip | |
| numDeriv_2012.9-1.zip | |
| optimx_2013.8.6.zip | |
| plyr_1.8.1.zip | |
| proto_0.3-10.zip | |
| quadprog_1.5-5.zip | |
| reshape2_1.2.2.zip | |
| scales_0.2.3.zip | |
| statmod_1.4.19.zip | |
| stringr_0.6.2.zip | |
| truncnorm_1.0-7.zip | |
| ucminf_1.1-3.zip | |
| vcd_1.3-1.zip | |

These are only used when the **Re-install analysis engine libraries to original versions on next run** option is selected within Distance for Windows. That these packages are otherwise not used can be seen by (for example) selecting:

* Help => Online Manuals => MRDS Engine R Help:
  - This shows 2.1.0 which corresponds to the version in the R library, `C:\Programs\R\R-3.1.0\library\mrds`, and not mrds_2.1.5.zip above.
* Help => Online Manuals => DSM Engine R Help:
  - This shows 2.2.5 which corresponds to the version in the R library, `C:\Programs\R\R-3.1.0\library\dsm`, and not dsm_2.2.3.zip above.

----------------------------------------------------------------------

`Sample Projects\Templates` folder
----------------------------------

Sample project file and data folder for use as templates for new projects.

* Source location: %BASE%Extras\Sample Projects Backup\Templace
* How to build?: Shipped as-is.

| File | Description |
| - | - |
| Sample Template.dat | Distance project file |
| Sample Template.dst | Distance data folder |
| Sample Template.dst\DistData.mdb | Distance data file |

This is the default folder used by Distance for Windows when **Use an existing Distance project as template** is selected.

----------------------------------------------------------------------

`Sample Projects` folder
------------------------

Sample Distance project files and folders and raw data for the user's guide. 

Each `.dst` file has a `.dat` folder (not shown) containing a `DistData.mdb` file (not shown). Additional files in this `.dat` folder are listed where applicable.

* Source location: %BASE%Extras\Sample Projects Backup\Release
* How to build?: Shipped as-is.

| File | Description |
| - | - |
| Example1.xls | Raw data |
| Example1Backup.txt | Raw data |
| Example2.xls - raw data | Raw data |
| Example2Backup.txt | Raw data |
| Amakihi.dst | Raw data |
| Dolphins.dst  | Includes `.dbf`, `.shp`, `.shx` |
| Ducknest.dst | |
| Golftees.dst | | 
| House Wren.dst | |
| Line Transect Example.dst | |
| LinkingExample.dst | Includes `.mdb`, `.xls`, `.txt`, `.ini`, `.dbf`, `.shp`, `.shx` |
| Mexico.dst | Includes `.dat` plus `.dbf`, `.prj`, `.sbn`, `.sbx`, `.shp`, `.shx` |
| Point Transect Example.dst | |
| Songbird.dst | |
| StAndrewsBay.dst | Includes `.dbf`, `.shp`, `.shx` |
| Stratify example.dst | |

----------------------------------------------------------------------

External components
-------------------

External components used within Distance and which are distributed with Distance.

Data management:

| Company | Name | Description |
| - | - | - |
| Microsoft | DAO (Data Access Objects) | Powers database engine and provides in-code access to Microsoft Jet databases |
| Microsoft | | Jet 3.51 IISAM (Installable Indexed Sequential Access Method) drivers: | 
| |  Native Jet driver | Manages Microsoft Access 97 and earlier databases |
| | Text driver | Manages tabular text files
| | Excel driver | Manages Microsoft Excel versions 3.0-8.0 spreadsheets |
| ESRI | MapObjects | Powers GIS - interface to ESRI shapefiles, spatial functionality e.g. projections, spatial selection etc. |

GUI:

| Company | Name | Description |
| - | - | - |
| Data Dynamics  | ActiveBar | Toolbar functionality |
| ComponentOne | VSFlex | Spreadsheet functionality |
| FarPoint | TabPro | Tabs |
| Sheridan Software | ActiveThreed | Split-qindow functionality |
| Common Controls Replacement Project (CCRP) | Browse Dialog | Fancy dialog to browse for folders. Freeware. |
| Microsoft | Visual Basic 5 and 6 | Chart, Rich Text Box, Windows Common Controls etc. |

MCDS / FORTRAN:

| Company | Name | Description |
| - | - | - |
| IMSL | Numerical routines | Come standard with Visual Fortran Professional |

Miscellaneous:

| Company | Name | Description |
| - | - | - |
| Microsoft Windows | Windows Script | Utilities e.g. regular expression searching, easy Windows file system manipulation |
| Desaware | Spyworks | Low-level functions for process manipulation, etc. Allows some of the power of C++ to be implemented in VB. |
| Polar Software | PolarZip | Compression functions |
| Zlib | zip | Compression functions. Freeware. Legacy. Plan to switch to PolarZip as it is better at dealing with international character sets. |

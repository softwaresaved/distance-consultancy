Third-party Components
======================

Third-party components used to build Distance for Windows and/or are shipped with Distance for Windows.

* "VB" denotes components explicity mentioned in Visual Basic projects - see [Visual Basic Project Dependencies](./VisualBasicProjectDependencies.md).
* "Install" denotes components arising within a Distance for Windows installation - see [Installed Components](./InstalledComponents.md).

| File | Location | Description | VB | Install |
| ---- | -------- | ----------- |----| ------- |
| Common Controls Replacement Project (CCRP) | | Fancy folder browser dialog | | |
| ccrpbds6.dll | C:\Program Files\CCRP\ccrpbds6-b2\ | | Y | Y |
| | | | | |
| ComponentOne | VSFlex | Spreadsheet functionality | | |
| VSFLEX7D.OCX | C:\WINDOWS\system32\ | | Y | Y |
| | | | | |
| Data Dynamics | ActiveBar | Toolbar functionality | | |
| Actbar2.ocx | C:\Program Files\Common Files\Data Dynamics\ActiveBar2\ | | Y | Y |
| | | | | |
| Desaware | SpyWorks | Low-level functions for process manipulation. Allows some of the power of C++ to be implemented in VB. | | |
| dwAXExtn.dll | C:\Application Development\Distance60Extras\DistanceDevCD\SpyWorks63\System32\ | | Y | Y |
| | | | | |
| ESRI | MapObjects - interface to GIS shapefile I/O and manipulation | | | |
| AF20.dll | C:\Program Files\Common Files\ESRI\ | | | Y |
| JetTable20.dll | " | | | Y |
| Mo20.ocx | " | | Y | Y |
| mtch.dll | " | | | Y |
| pe81.dll | " | | | Y |
| sg81.dll | " | | | Y |
| Shape20.dll | " | | | Y |
| | | | | |
| Farpoint | Tabpro | Tabs | | |
| TAB32X30.OCX | C:\Program Files\Tabpro30\BIN\ | |Y | Y |
| | | | | |
| Microsoft | C runtime library | | | |
| MSVCP60.dll | C:\Program Files\ESRI\MapObjects2\Microsoft\ | | | Y |
| MSVCRT.DLL | " |  | | Y |
| | | | | | 
| Microsoft | DAO | Data access objects Powers database engine and provides in-code access to Microsoft Jet databases | | |
| DAO2535.tlb | C:\Program Files\Common Files\Microsoft Shared\DAO\ | | | Y |
| DAO350.dll | " | DAO 3.51 Object Library | Y | Y |
| | | | | |
| Microsoft | Jet 3.51 | Database | | |
| MSJET35.DLL | C:\WINDOWS\system32\ | | | Y |
| MSJINT35.DLL | " | | | Y |
| MSJTER35.dll | " | Errors | | Y |
| | | | | |
| Microsoft | Jet 3.51 IISAM drivers | Installable Indexed Sequential Access Method | | |
| MSEXCL35.DLL | " | Microsoft Excel 3.0-8.0 spreadsheets | | Y |
| MSRD2X35.dll | " | Native Microsoft Access 97 and earlier databases | | Y |
| MSTEXT35.DLL | " | Tabular text files | | Y |
| | | | | |
| Microsoft Windows | Windows Script | Utilities e.g. regular expression searching, easy Windows file system manipulation |
| scrrun.dll | C:\WINDOWS\system32\ | Windows Scripting Runtime | Y | |
| stdole2.tlb | C:\WINDOWS\system32\ | Standard OLE types | Y | |
| vbscript.dll | C:\WINDOWS\system32\ | VBScript Regular Expressions | Y | |
| | | | |
| Microsoft | Visual Basic 5 and 6 |  Chart, Rich Text Box, Windows Common Controls etc | | Y |
| COMCTL32.OCX | C:\WINDOWS\system32\ | Windows Common Controls ActiveX Control Module | Y | Y |
| comdlg32.ocx | C:\WINDOWS\system32\ | Windows Common Dialog | Y | |
| MSChrt20.ocx | " | Chart | Y | Y |
| MSComCt2.ocx | " | Common Controls 2 ActiveX Control | Y | Y |
| RichTx32.ocx | " | Rich Text OLE Control | Y | Y |
| VB5DB.dll | " | Visual Basic ICursor interface library | | Y |
| | | | | |
| Polar Software | PolarZIP | Compression functions | | Y |
| PolarZIP.ocx | C:\Program Files\Polar ZIP\Redistribution\ | | Y | Y |
| PolarZipSpan.dll | " | | | Y |
| | | | | |
| Sheridan Software | ActiveThreed | Split-window functionality | | |
| SPLITTER.OCX | C:\Program Files\ActiveThreed\ | | Y | Y |
| | | | | |
| Zlib | Zip | Compression functions - for legacy purposes only | | |
| DstZip.dll | C:\Application Development\Distance60Extras\DistanceDevCD\Zlib\ | | | Y |

Others:

| Company | Name | Description |
| ------- | ---- | ----------- |
| IMSL | Numerical routines | Come standard with Compaq Visual Fortran Professional |
| Compaq | Visual Fortran Professional | Ec.exe - capture standard output and standard error |

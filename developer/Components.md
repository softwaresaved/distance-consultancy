---
layout: page
root: ..
title: Distance Components
---

Distance is very modular - it is made up of a large number of semi-independent components written in a variety of development environments (programming languages). These components interact through sets of well-defined interfaces. Many of the components are implemented as ActiveX components - OCXs, DLLs, EXEs etc. and the interaction is largely through calling public methods, setting public properties, etc. Others (e.g. the MCDS, MRDS and DSM analysis engines) are stand-alone executables or libraries and the interaction with these is largely through writing to and reading from text files.

These components have been written by us, for which we have access to the source code, and which we are responsible for maintaining.

All these components form part of a Distance for Windows installation - see [Installed Components](./InstalledComponents.html).

Component types
---------------

Distance components fall into one of three types:

* Microsoft Visual Basic 6 DLLs, OCXs and executables - GUIs, numerical engines (e.g. design engine), database engine, etc.
* Compaq Visual Fortran executables - MCDS analysis engine.
* R libraries - MRDS and DSM analysis engines.

In what follows, all components are VB6 unless otherwise stated.

Components
----------

| File | Source location (relative to %BASE%) | Description |
| ---- | ------------------------------------ | ----------- |
| | | |
| **Distance for Windows** | | |
| Distance.exe | Interface\ | Distance for Windows GUI and entry point for user |
| | | |
| **Database API and engine** | | |
| DnnnnDbeng.dll | Database Engine\ | Manages project files and data files. |
| | | |
| **Numerical engine (NEngine)** | | Runs designs and analyses etc. |
| DnnnnDesEng.dll | Design Engine\Engine\ | Design and survey numerical engine |
| MCDS.exe | Analysis Engines\CDS\Engine\ <br/> CVS repository http://distanceengines.cvs.sourceforge.net/ | NEngine for MCDS and CDS <br/> Fortran executable |
| Ec.exe | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | Execute program and capture standard output and errors <br/> used to invoke MCDS.exe |
| dsm_2.2.3.zip | %BASE%\Analysis Engines\DSM\Engine\dsm\ <br/> Git repository http://github.com/DistanceDevelopment/dsm | NEngine for DSM <br/> R library |
| dsm.support.r | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | Support functions for calling  dsm  |
| mrds_2.1.5.zip | %BASE%\Analysis Engines\MRDS\Engine\mrds\ <br/> Git repository http://github.com/DistanceDevelopment/mrds | NEngine for MRDS <br/> R library |
| mrds.support.r | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | Support functions for calling mrds |
| support.r | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | Support functions for calling R libraries |
| **Numerical engine interfaces (NEI)** | | One per NEngine, these provide an interface between the NEngines and the Numerical Server. They interpret text definitions (e.g. data filter and model definition), extract relevant data from the database, put it into an appropriate format for the NEngine, writing appropriate command files for the NEngine, run the NEngine and monitor progress, etc. |
| IDnnnnNEng.dll | Numerical Server\TypeLibrary\ | NEI type library - implemented by all NEIs |
| DnnnnDesNEI.dll | Design Engine\NEngineInterface\ | Design engine NEI |
| DnnnnSvyNEI.dll | Survey\NEngineInterface\ | Alternate design engine NEI used for generating single surveys (as opposed to running designs to estimate coverage) |
| DnnnnCDSNEI.dll | Analysis Engines\CDS\NEngineInterface\ | CDS and MCDS NEI | 
| DnnnnDSMNEI.dll | Analysis Engines\DSM\NEngineInterface\ | DSM NEI |
| DnnnnMRDSNEI.dll | Analysis Engines\MRDS\NEngineInterface\ | MRDS NEI |
| DnnnnNEIUtil.dll | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\ | NEI utilities |
| | | |
| **Numerical server** | | |
| DnnnnNSvr.dll | Numerical Server\NServer\ | Manages NEngine runs (queues them, runs them, resets them, etc). It either calls the appropriate NEI (e.g. design engine interface) or it creates an NEngine host which in turn calls the appropriate NEI (e.g. MCDS, MRDS, DSM). In the former case, the NEI runs in the same process as the numerical server (and the GUI); in the latter case, it runs in a separate process, allowing users to work with the GUI while the NEngine Interface is running.  |
| | | |
| **NEngine host** | | |
| DnnnnNEH.exe | Numerical Server\NEngineHost\ | Provides an indirect method the Numerical Server can use to call NEngine interfaces so that they run out of process. |
| | | |
| **Properties dialogs** | | Pluggable GUI components to allow users to specify options - one per NEngine plus others |
| DnnnnDesPrp.ocx | Design Engine\Properties\ | Design properties | 
| DnnnnSvyPrp.ocx | Survey\Properties\ | Survey properties |
| DnnnnDFPrp.ocx | Interface\Properties\Data Filter\ | Data filter properties |
| DnnnnMDPrp.ocx | Interface\Properties\Model Definition\ | Model definition properties - container for CDS and MRDS properties |
| DnnnnCDSPrp.ocx | Analysis Engines\CDS\Properties\ | CDS analysis engine properties |
| DnnnnMRDSPrp.ocx | Analysis Engines\MRDS\Properties\ | MRDS analysis engine properties |
| DnnnnDSMPrp.ocx | Analysis Engines\DSM\Properties\ | DSM analysis engine properties |
| | | |
| **Details pages** | | Pluggable GUI components to allow users to view logs and results of runs - one per NEngine plus others |
| DnnnnDesDet.ocx | Design Engine\Details\ | Design details |
| DnnnnSvyDet.ocx | Survey\Details\ | Survey details |
| DnnnnCDSDet.ocx | Analysis Engines\CDS\Details\ | CDS analysis engine details |
| DnnnnDSMDet.ocx | Analysis Engines\DSM\Details\ | DSM analysis engine details |
| DnnnnMRDSDet.ocx | Analysis Engines\MRDS\Details\ | MRDS analysis engine details |
| | | |
| **Wizards** | | GUI functionality |
| DnnnnIDWiz.dll | Interface\Wizards\Setup Project\ | Import Data wizard |
| DnnnnSPWiz.dll | Interface\Wizards\Import Data\ | Setup Project wizard |
| | | |
| **GIS** | | |
| DnnnnMap.ocx | Map\Mapper\ | GIS map display control |
| DnnnnLegend.ocx | Map\Legend\ | GIS map legend control |
| | | |
| **Utilities** | | |
| DnnnnUtil.dll | Utilities\ | Utilities for strings, files, random numbers | 
| | | |
| **Miscellaneous** | | |
| CTmr4.dll | Misc\CodeTimer\ | High-resolution code timer, improved replacement for Microsoft's timer control |
| CDlg3.dll | Misc\CommonDialog\ | Common dialog, improved replacement for Microsoft's common dialog control |
| LogStr3.dll | Misc\LogString\ | Log string class, for appending strings within Log windows |
| PrjParams6.dll | Misc\PrjParams\ | Projection Parameters dialog, for editing GIS projection parameters |
| CSDesc3.ocx | Misc\CoordSysDesc\ | Co-ordinate system description |
| LLine3.ocx | Misc\LabelLine\ | Labels with 3D lines |
| LogWin3.ocx | Misc\LogWindow\ | Log window |
| SList4.ocx | Misc\SectionList\ | Section list - efficient drop-down combo box for long lists |

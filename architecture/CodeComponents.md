---
layout: page
root: ..
title: Code Components
---

Distance is very modular - it is made up of a large number of semi-independent components written in a variety of development environments (programming languages). These components interact through sets of well-defined interfaces. Many of the components are implemented as ActiveX components - OCXs, DLLs, EXEs etc. and the interaction is largely through calling public methods, setting public properties, etc. Others (e.g. the MCDS, MRDS and DSM analysis engines) are stand-alone executables or libraries and the interaction with these is largely through writing to and reading from text files.

These components have been written by us, for which we have access to the source code, and which we are responsible for maintaining.

The components fall into one of three types:

* Microsoft Visual Basic 6 DLLs, OCXs and executables - GUIs, numerical engines (e.g. design engine), database engine, etc.
* Compaq Visual Fortran executables - MCDS analysis engine.
* R libraries - MRDS and DSM analysis engines.

In what follows, all components are VB6 unless otherwise stated.

| Component / File | Description |
| ---------------- | ----------- |
| **Distance for Windows** | Distance for Windows GUI and entry point for user |
| Distance.exe | |
| | |
| **Database API and engine** | Manages project files and data files |
| DnnnnDbeng.dll | |
| | |
| **Numerical engine (NEngine)** | Runs designs and analyses etc. |
| DnnnnDesEng.dll | Design and survey NEngine |
| MCDS.exe | MCDS and CDS NEngine - Fortran executable |
| Ec.exe | Execute program and capture standard output and errors - used to invoke MCDS.exe |
| dsm_2.2.3.zip | DSM NEngine - R library |
| dsm.support.r | Support functions for calling  dsm  |
| mrds_2.1.5.zip | MRDS NEngine - R library |
| mrds.support.r | Support functions for calling mrds |
| support.r | Support functions for calling R libraries |
| | |
| **Numerical engine interfaces (NEI)** | One per NEngine, these provide an interface between the NEngines and the Numerical Server. They interpret text definitions (e.g. data filter and model definition), extract relevant data from the database, put it into an appropriate format for the NEngine, writing appropriate command files for the NEngine, run the NEngine and monitor progress, etc. |
| IDnnnnNEng.dll | NEI type library - implemented by all NEIs |
| DnnnnDesNEI.dll | Design engine NEI |
| DnnnnSvyNEI.dll | Alternate design engine NEI used for generating single surveys (as opposed to running designs to estimate coverage) |
| DnnnnCDSNEI.dll | CDS and MCDS NEI | 
| DnnnnDSMNEI.dll | DSM NEI |
| DnnnnMRDSNEI.dll | MRDS NEI |
| DnnnnNEIUtil.dll | NEI utilities |
| | |
| **Numerical server** | |
| DnnnnNSvr.dll | Manages NEngine runs (queues them, runs them, resets them, etc). It either calls the appropriate NEI (e.g. design engine interface) or it creates an NEngine host which in turn calls the appropriate NEI (e.g. MCDS, MRDS, DSM). In the former case, the NEI runs in the same process as the numerical server (and the GUI); in the latter case, it runs in a separate process, allowing users to work with the GUI while the NEngine Interface is running.  |
| | |
| **NEngine host** | |
| DnnnnNEH.exe | Provides an indirect method the Numerical Server can use to call NEIs so that they run out of process. |
| | |
| **Properties dialogs** | Pluggable GUI components to allow users to specify options - one per NEngine plus others |
| DnnnnDesPrp.ocx | Design properties | 
| DnnnnSvyPrp.ocx | Survey properties |
| DnnnnDFPrp.ocx | Data filter properties |
| DnnnnMDPrp.ocx | Model definition properties - container for CDS and MRDS properties |
| DnnnnCDSPrp.ocx | CDS analysis engine properties |
| DnnnnMRDSPrp.ocx | MRDS analysis engine properties |
| DnnnnDSMPrp.ocx | DSM analysis engine properties |
| | |
| **Details pages** | Pluggable GUI components to allow users to view logs and results of runs - one per NEngine plus others |
| DnnnnDesDet.ocx | Design details |
| DnnnnSvyDet.ocx | Survey details |
| DnnnnCDSDet.ocx | CDS analysis engine details |
| DnnnnDSMDet.ocx | DSM analysis engine details |
| DnnnnMRDSDet.ocx | MRDS analysis engine details |
| | |
| **Wizards** | Additional GUI functionality |
| DnnnnIDWiz.dll | Import Data wizard |
| DnnnnSPWiz.dll | Setup Project wizard |
| | |
| **GIS** | |
| DnnnnMap.ocx | GIS map display control |
| DnnnnLegend.ocx | GIS map legend control |
| | |
| **Utilities** | |
| DnnnnUtil.dll | Utilities for strings, files, random numbers | 
| | |
| **Miscellaneous** | |
| CTmr4.dll | High-resolution code timer, improved replacement for Microsoft's timer control |
| CDlg3.dll | Common dialog, improved replacement for Microsoft's common dialog control |
| LogStr3.dll | Log string class, for appending strings within Log windows |
| PrjParams6.dll | Projection Parameters dialog, for editing GIS projection parameters |
| CSDesc3.ocx | Co-ordinate system description |
| LLine3.ocx | Labels with 3D lines |
| LogWin3.ocx | Log window |
| SList4.ocx | Section list - efficient drop-down combo box for long lists |

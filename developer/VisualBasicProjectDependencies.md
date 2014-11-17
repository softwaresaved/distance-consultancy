---
layout: page
root: ..
title: Visual Basic Project Dependencies
---

Dependencies of Distance's Visual Basic projects.

All locations are relative to %BASE% except for [third-party components](./ThirdPartyComponents.md).

Description is taken from the Visual Basic project and are either Reference or Component or Module dependencies on other projects.

All dependencies are recorded in Visual Basic as References except for those projects marked 'component' or 'module'.

| Visual Basic Project | Description / Depends on... |
| -------------------- | --------------------------- |
| Analysis Engines\CDS\Details\DnnnnCDSDet.vbp | Distance nnnn CDS Engine Details Interface |
| | Misc\LogWindow\LogWin3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | DAO350.dll |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | MSCHRT20.OCX (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | |
| Analysis Engines\CDS\NEngineInterface\DnnnnCDSNEI.vbp | Distance nnnn CDS Numerical Engine Interface |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Misc\LogString\LogStr3.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\DnnnnNEIUtil.vbp |
| | DAO350.dll |
| | |
| Analysis Engines\CDS\Properties\DnnnnCDSPrp.vbp | Distance nnnn CDS Engine Properties Interface |
| | Misc\CommonDialog\CDlg3.vbp |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | stdole2.tlb |
| | comdlg32.ocx (component) |
| | mscomct2.ocx (component) |
| | mscomctl.ocx (component) |
| | Tab32x30.ocx (component) |
| | Vsflex7d.ocx (component) |
| | |
| Analysis Engines\DSM\Details\DnnnnDSMDet.vbp | Distance nnnn DSM Engine Details Interface |
| | Misc\LogWindow\LogWin3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | DAO350.dll |
| | scrrun.dll |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | |
| Analysis Engines\DSM\NEngineInterface\DnnnnDSMNEI.vbp | Distance nnnn DSM Numerical Engine Interface |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Misc\LogString\LogStr3.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\DnnnnNEIUtil.vbp |
| | DAO350.dll |
| | mo20.ocx |
| | scrrun.dll |
| | vbscript.dll |
| | |
| Analysis Engines\DSM\Properties\DnnnnDSMPrp.vbp | Distance nnnn DSM Engine Properties Interface |
| | Misc\CommonDialog\CDlg3.vbp |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | stdole2.tlb |
| | mscomct2.ocx (component) |
| | Tab32x30.ocx (component) |
| | |
| Analysis Engines\MRDS\Details\DnnnnMRDSDet.vbp | Distance nnnn MRDS Engine Details Interface |
| | Misc\LogWindow\LogWin3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | DAO350.dll |
| | scrrun.dll |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | |
| Analysis Engines\MRDS\NEngineInterface\DnnnnMRDSNEI.vbp | Distance nnnn MRDS Numerical Engine Interface |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Misc\LogString\LogStr3.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\DnnnnNEIUtil.vbp |
| | DAO350.dll |
| | scrrun.dll |
| | vbscript.dll |
| | |
| Analysis Engines\MRDS\Properties\DnnnnMRDSPrp.vbp | Distance nnnn MRDS Engine Properties Interface |
| | Misc\CommonDialog\CDlg3.vbp |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | stdole2.tlb |
| | comdlg32.ocx (component) |
| | mscomct2.ocx (component) |
| | mscomctl.ocx (component) |
| | Tab32x30.ocx (component) |
| | Vsflex7d.ocx (component) |
| | |
| Analysis Engines\Shared Stuff\NEngineInterfaceUtilities\DnnnnNEIUtil.vbp | Distance nnnn Numerical Engine Interface Utilities DLL |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Misc\LogString\LogStr3.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | DAO350.dll |
| | mo20.ocx |
| | |
| Database Engine\DnnnnDbEng.vbp | Distance nnnn Database Engine|
| | Utilities\DnnnnUtil.vbp |
| | DAO350.dll |
| | dwAXExtn.dll |
| | mo20.ocx |
| | scrrun.dll |
| | stdole2.tlb |
| | vbscript.dll |
| | |
| Design Engine\Details\DnnnnDesDet.vbp | Distance nnnn Design Details Interface |
| | Misc\LogWindow\LogWin3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Map\Mapper\DnnnnMap.vbp (component) |
| | DAO350.dll |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | |
| Design Engine\Engine\DnnnnDesEng.vbp | Distance nnnn Design Engine |
| | Database Engine\DnnnnDbEng.vbp |
| | Misc\LogString\LogStr3.vbp |
| | Utilities\DnnnnUtil.vbp |
| | DAO350.dll |
| | mo20.ocx |
| | |
| Design Engine\NEngineInterface\DnnnnDesNEI.vbp | Distance nnnn Numerical Engine Interface |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Misc\LogString\LogStr3.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | Design Engine\Engine\DnnnnDesEng.vbp |
| | DAO350.dll |
| | |
| Design Engine\Properties\DnnnnDesPrp.vbp | Distance nnnn Design Engine Properties Interfzce|
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Misc\PrjParams\PrjParams6.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | mo20.ocx |
| | stdole2.tlb |
| | Tab32x30.ocx (component) |
| | Vsflex7d.ocx (component) |
| | |
| Interface\Distance.vbp | Distance 6 Interface |
| | Misc\CommonDialog\CDlg3.vbp |
| | Misc\CoordSysDesc\CSDesc3.vbp (component) |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Utilities\Help\distance.bas (module) |
| | Misc\LogString\LogStr3.vbp |
| | Misc\PrjParams\PrjParams6.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Misc\SectionList\SList4.vbp (component) |
| | Map\Mapper\DnnnnMap.vbp (component) |
| | Numerical Server\NServer\DnnnnNSvr.vbp |
| | Interface\Wizards\Import Data\DnnnnIDWiz.vbp |
| | Interface\Wizards\Setup Project\DnnnnSPWiz.vbp |
| | ccrpbds6.dll |
| | DAO350.dll |
| | PolarZIP.ocx |
| | scrrun.dll |
| | stdole2.tlb |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | comdlg32.ocx (component) |
| | mo20.ocx (component) |
| | MSCHRT20.OCX (component) |
| | mscomct2.ocx (component) |
| | mscomctl.ocx (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | Tab32x30.ocx (component) |
| | Vsflex7d.ocx (component) |
| | |
| Interface\Properties\Data Filter\DnnnnDFPrp.vbp | Distance nnnn Data Filter Properties Interface |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | mscomct2.ocx (component) |
| | Tab32x30.ocx (component) |
| | Vsflex7d.ocx (component) |
| | |
| Interface\Properties\Model Definition\DnnnnMDPrp.vbp | Distance nnnn Model Definition Properties Interface |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | |
| Interface\Wizards\Import Data\DnnnnIDWiz.vbp | Distance nnnn Import Data Wizard|
| | Misc\CommonDialog\CDlg3.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Utilities\Help\distance.bas (module) |
| | Database Engine\DnnnnDbEng.vbp |
| | DAO350.dll |
| | scrrun.dll |
| | comctl32.ocx (component) |
| | Vsflex7d.ocx (component) |
| | |
| Interface\Wizards\Setup Project\DnnnnSPWiz.vbp | distance nnnn Setup Project Wizard |
| | Misc\CommonDialog\CDlg3.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Utilities\Help\distance.bas (module) |
| | Database Engine\DnnnnDbEng.vbp |
| | Misc\SectionList\SList4.vbp (component) |
| | Numerical Server\NServer\DnnnnNSvr.vbp |
| | |
| Map\Legend\DnnnnLegend.vbp | Distance nnnn Mapper Legend control |
| | stdole2.tlb |
| | mo20.ocx (component) |
| | |
| Map\Mapper\DnnnnMap.vbp | Distance nnnn Map Component |
| | Map\Legend\DnnnnLegend.vbp (component) | 
| | Misc\CoordSysDesc\CSDesc3.vbp (component) |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | stdole2.tlb |
| | Actbar2.ocx (component) |
| | comdlg32.ocx (component) |
| | mo20.ocx (component) |
| | mscomct2.ocx (component) |
| | SPLITTER.OCX (component) |
| | Vsflex7d.ocx (component) |
| | |
| Misc\CodeTimer\CTmr4.vbp | CodeTimer v4 ... |
| | stdole2.tlb |
| | |
| Misc\CommonDialog\CDlg3.vbp | Common Dialog Wrapper DLL v3 |
| | stdole2.tlb |
| | |
| Misc\CoordSysDesc\CSDesc3.vbp | Coordinate System Description v3 |
| | mo20.ocx |
| | stdole2.tlb |
| | |
| Misc\LabelLine\LLine3.vbp | Label line 3.0 |
| | stdole2.tlb |
| | |
| Misc\LogString\LogStr3.vbp | Log String class v3 ... |
| | Utilities\DnnnnUtil.vbp |
| | |
| Misc\LogWindow\LogWin3.vbp | Distance nnnn Log Window |
| | stdole2.tlb |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | |
| Misc\PrjParams\PrjParams6.vbp | PrjParams6 ... |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Utilities\Help\distance.bas (module) |
| | mo20.ocx |
| | Vsflex7d.ocx (component) |
| | |
| Misc\SectionList\SList4.vbp | Section list v4 ... |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | stdole2.tlb |
| | |
| Numerical Server\NEngineHost\DnnnnNEH.vbp | Distance nnnn Numerial Engine Host |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | |
| Numerical Server\NServer\DnnnnNSvr.vbp | Distance nnnn Numerial Server Component |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | Numerical Server\NEngineHost\DnnnnNEH.vbp |
| | stdole2.tlb |
| | |
| Numerical Server\TypeLibrary\IDnnnnNEng.vbp | Distance nnnn Numerial Engine Type Library |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | stdole2.tlb |
| | |
| Survey\Details\DnnnnSvyDet.vbp | Distance nnnn Survey Details Interface |
| | Misc\LogWindow\LogWin3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Map\Mapper\DnnnnMap.vbp (component) |
| | DAO350.dll |
| | vbscript.dll |
| | Actbar2.ocx (component) |
| | mo20.ocx (component) |
| | RICHTX32.OCX (component) |
| | SPLITTER.OCX (component) |
| | |
| Survey\NEngineInterface\DnnnnSvyNEI.vbp | Distance nnnn Survey Numerical Engine Interface |
| | Misc\CodeTimer\CTmr4.vbp |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Numerical Server\TypeLibrary\IDnnnnNEng.vbp |
| | Numerical Server\NEngineHost\DnnnnNEH.vbp |
| | DAO350.dll |
| | |
| Survey\Properties\DnnnnSvyPrp.vbp | Distance nnnn Survey Properties Interface |
| | Misc\LabelLine\LLine3.vbp (component) |
| | Utilities\DnnnnUtil.vbp |
| | Database Engine\DnnnnDbEng.vbp |
| | Tab32x30.ocx (component) |
| | vsflex7d.ocx (component) |
| | |
| Utilities\DnnnnUtil.vbp | Distance nnnn Utilities ... |
| | DAO350.dll |
| | mo20.ocx |
| | PolarZIP.ocx |
| | scrrun.dll |
| | stdole2.tlb |
| | vbscript.dll |

!include "config.mk"

# Macro summary
#
# $@ - Current target's full name (path, base name, extension).
# $* - Current target's path and base name minus file extension.
# $** - All dependents of the current target.
# Modifiers:
# - D Drive plus directory
# - B Base name
# - F Base name plus extension
# - R Drive plus directory plus base name
# 
# Microsoft short paths avoid problems with spaces (from dir /x)
# ANALYS~1     Analysis Engines
# DATABA~1     Database Engine
# DESIGN~1     Design Engine
# NUMERI~1     Numerical Server
# SHARED~1     Shared Stuff
# DATAEN~1     Data Entry
# IMPORT~1     Import Data
# SETUPP~1     Setup Project
# DATAFI~1     Data Filter
# MODELD~1     Model Definition
# EXTERN~1     External Documentation

#
# Documentation
#

DOC_DIR=$(DISTANCE_EXTRAS)\Extern~1\Documents

$(DOC_DIR)\HTMLHelp\distance.chm : $(DOC_DIR)\*.doc
	-mkdir $(DOC_DIR)\HTMLDocuments
	$(DOC_TO_HELP) -build $(DOC_DIR)\distance.d2h "distance HTML Help"

$(DOC_DIR)\HTMLHelp\distance.bas : $(DOC_DIR)\HTMLHelp\distance.chm

$(DISTANCE_BASE)\Utilities\Help\distance.chm : $(DOC_DIR)\HTMLHelp\distance.chm
	copy $** $@

$(DISTANCE_BASE)\Utilities\Help\distance.bas : $(DOC_DIR)\HTMLHelp\distance.bas
	copy $** $@

$(DOC_DIR)\Manual\distance-master.doc : $(DOC_DIR)\*.doc
	-mkdir $(DOC_DIR)\HTMLDocuments
	$(DOC_TO_HELP) -build $(DOC_DIR)\distance.d2h "distance Manual"

$(DOC_DIR)\Manual\distance-master.pdf : $(DOC_DIR)\Manual\distance-master.doc
	start /WAIT "" $(WINWORD) $** /q /n /mFilePrintDefault /mFileSave /mFileExit 
# Wait for 5 seconds so PDF is there - hack as DOS has no sleep command!
	ping -n 5 127.0.0.1 > NUL
	move "%userprofile%\My Documents\distance-master.pdf" $@

$(DISTANCE_BASE)\Utilities\Help\distance.pdf : $(DOC_DIR)\Manual\distance-master.pdf
	copy $** $@

delete_docs :
	-rmdir /s /q $(DOC_DIR)\HTMLDocuments
	-rmdir /s /q $(DOC_DIR)\HTMLHelp
	-rmdir /s /q $(DOC_DIR)\Manual
	-rmdir /s /q $(DOC_DIR)\Temp
	-del $(DISTANCE_BASE)\Utilities\Help\distance.chm
	-del $(DISTANCE_BASE)\Utilities\Help\distance.bas
	-del $(DISTANCE_BASE)\Utilities\Help\distance.pdf

# Short-cuts

doc_manual : $(DOC_DIR)\Manual\distance-master.doc

pdf_manual : $(DISTANCE_BASE)\Utilities\Help\distance.pdf

html_help : $(DISTANCE_BASE)\Utilities\Help\distance.chm

vb_help : $(DISTANCE_BASE)\Utilities\Help\distance.bas

docs : pdf_manual html_help vb_help

#
# Visual Basic
#

$(DISTANCE_BASE)\Map\Legend\D6Legend.ocx : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp
 	
$(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp
 	
$(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\CoordSysDesc\CSDesc3.ocx : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Utilities\D6Util.dll : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\LogString\LogStr3.dll : $*.vbp \
  $(DISTANCE_BASE)\Utilities\D6Util.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\PrjParams\PrjParams6.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Utilities\Help\distance.bas
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Databa~1\D6DbEng.dll : $*.vbp \
  $(DISTANCE_BASE)\Utilities\D6Util.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Misc\SectionList\SList4.ocx : $*.vbp \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Map\Mapper\D6Map.ocx : $*.vbp \
  $(DISTANCE_BASE)\Map\Legend\D6Legend.ocx \
  $(DISTANCE_BASE)\Misc\CoordSysDesc\CSDesc3.ocx \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll : $*.vbp \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Numeri~1\NEngineHost\D6NEH.exe : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Numeri~1\NServer\D6NSvr.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Numeri~1\NEngineHost\D6NEH.exe
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Design~1\Details\D6DesDet.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Map\Mapper\D6Map.ocx
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Design~1\Engine\D6DesEng.dll : $*.vbp \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Design~1\NEngineInterface\D6DesNEI.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Design~1\Engine\D6DesEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Design~1\Properties\D6DesPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\PrjParams\PrjParams6.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Survey\Details\D6SvyDet.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Map\Mapper\D6Map.ocx
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Survey\NEngineInterface\D6SvyNEI.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Numeri~1\NEngineHost\D6NEH.exe
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Survey\Properties\D6SvyPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
	
$(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Analys~1\CDS\Details\D6CDSDet.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\CDS\NEngineInterface\D6CDSNEI.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\CDS\Properties\D6CDSPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\DSM\Details\D6DSMDet.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\DSM\NEngineInterface\D6DSMNEI.dll :  $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\DSM\Properties\D6DSMPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\MRDS\Details\D6MRDSDet.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\MRDS\NEngineInterface\D6MRDSNEI.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\MRDS\Properties\D6MRDSPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Properties\DataFi~1\D6DFPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Properties\ModelD~1\D6MDPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp
  
$(DISTANCE_BASE)\Interface\Wizards\Import~1\D6IDWiz.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Utilities\Help\distance.bas
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Wizards\SetupP~1\D6SPWiz.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Misc\SectionList\SList4.ocx \
  $(DISTANCE_BASE)\Numeri~1\NServer\D6NSvr.dll \
  $(DISTANCE_BASE)\Utilities\Help\distance.bas
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Distance.exe : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\CoordSysDesc\CSDesc3.ocx \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Misc\PrjParams\PrjParams6.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Misc\SectionList\SList4.ocx \
  $(DISTANCE_BASE)\Map\Mapper\D6Map.ocx \
  $(DISTANCE_BASE)\Numeri~1\NServer\D6NSvr.dll \
  $(DISTANCE_BASE)\Interface\Wizards\Import~1\D6IDWiz.dll \
  $(DISTANCE_BASE)\Interface\Wizards\SetupP~1\D6SPWiz.dll \
  $(DISTANCE_BASE)\Utilities\Help\distance.bas
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\GenerateLicenseKey\GenerateLicenseKey.exe : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp
	
# Short-cuts

engine_utils : $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll

design_engine : $(DISTANCE_BASE)\Design~1\Details\D6DesDet.ocx \
  $(DISTANCE_BASE)\Design~1\Engine\D6DesEng.dll \
  $(DISTANCE_BASE)\Design~1\NEngineInterface\D6DesNEI.dll \
  $(DISTANCE_BASE)\Design~1\Properties\D6DesPrp.ocx

survey_engine : $(DISTANCE_BASE)\Survey\Details\D6SvyDet.ocx \
  $(DISTANCE_BASE)\Survey\NEngineInterface\D6SvyNEI.dll \
  $(DISTANCE_BASE)\Survey\Properties\D6SvyPrp.ocx

cds_engine : $(DISTANCE_BASE)\Analys~1\CDS\Details\D6CDSDet.ocx \
  $(DISTANCE_BASE)\Analys~1\CDS\NEngineInterface\D6CDSNEI.dll \
  $(DISTANCE_BASE)\Analys~1\CDS\Properties\D6CDSPrp.ocx
 
dsm_engine : $(DISTANCE_BASE)\Analys~1\DSM\Details\D6DSMDet.ocx \
  $(DISTANCE_BASE)\Analys~1\DSM\NEngineInterface\D6DSMNEI.dll \
  $(DISTANCE_BASE)\Analys~1\DSM\Properties\D6DSMPrp.ocx

mrds_engine :  $(DISTANCE_BASE)\Analys~1\MRDS\NEngineInterface\D6MRDSNEI.dll \
  $(DISTANCE_BASE)\Analys~1\MRDS\Properties\D6MRDSPrp.ocx \
  $(DISTANCE_BASE)\Analys~1\MRDS\Details\D6MRDSDet.ocx

properties : $(DISTANCE_BASE)\Interface\Properties\DataFi~1\D6DFPrp.ocx \
  $(DISTANCE_BASE)\Interface\Properties\ModelD~1\D6MDPrp.ocx

no_dependencies : $(DISTANCE_BASE)\Map\Legend\D6Legend.ocx \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\CoordSysDesc\CSDesc3.ocx \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll

GenerateLicenseKey.exe : $(DISTANCE_BASE)\Misc\GenerateLicenseKey\GenerateLicenseKey.exe 

NEH.exe : $(DISTANCE_BASE)\Numeri~1\NEngineHost\D6NEH.exe

Distance.exe : $(DISTANCE_BASE)\Interface\Distance.exe

distance : GenerateLicenseKey.exe NEH.exe Distance.exe \
  engine_utils design_engine survey_engine cds_engine dsm_engine mrds_engine properties

#
# Components not in Distance 6.2 release
#

$(DISTANCE_BASE)\Analys~1\MA\Properties\D6MAPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Analys~1\DHT\Details\D6DHTDet.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Analys~1\DHT\NEngineInterface\D6DHTNEI.dll :  $*.vbp \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Misc\LogString\LogStr3.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Numeri~1\TypeLibrary\ID6NEng.dll \
  $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll
	start /wait "VB6" $(VB) /make $*.vbp
 
$(DISTANCE_BASE)\Analys~1\DHT\Properties\D6DHTPrp.ocx : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Resource\DistanceResource.ocx : 
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Wizards\SetupP~1\Resource\D6SpWizResource.dll : 
	start /wait "VB6" $(VB) /make $*.vbp

# Short cuts

dht_engine : $(DISTANCE_BASE)\Analys~1\DHT\Details\D6DHTDet.ocx \
  $(DISTANCE_BASE)\Analys~1\DHT\NEngineInterface\D6DHTNEI.dll \
  $(DISTANCE_BASE)\Analys~1\DHT\Properties\D6DHTPrp.ocx

ma_engine : $(DISTANCE_BASE)\Analys~1\MA\Properties\D6MAPrp.ocx

resources : $(DISTANCE_BASE)\Interface\Resource\DistanceResource.ocx \
  $(DISTANCE_BASE)\Interface\Wizards\SetupP~1\Resource\D6SpWizResource.dll

#
# Fortran
#

$(DISTANCE_BASE)\Analys~1\CDS\Engine\Engine\Debug\MCDS.exe : 
	chdir $(DISTANCE_BASE)\Analys~1\CDS\Engine\Engine
	nmake /f MCDS.MAK cfg="MCDS - Win32 Debug"

$(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\MCDS.exe : $(DISTANCE_BASE)\Analys~1\CDS\Engine\Engine\Debug\MCDS.exe
	copy $** $@

# Short-cuts

MCDS.exe : $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\MCDS.exe

delete_fortran : 
	-rmdir /s /q $(DISTANCE_BASE)\Analys~1\CDS\Engine\Engine\Debug
	-del $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\MCDS.exe

#
# R
#

$(DISTANCE_BASE)\Analys~1\DSM\Engine\dsm_2.2.3.zip :
	R CMD INSTALL --build $(@D)\dsm
# zip is built in current directory so move down into Engine\
	move $(@F) $(@D)

$(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\RPackages\dsm_2.2.3.zip : $(DISTANCE_BASE)\Analys~1\DSM\Engine\dsm_2.2.3.zip
	copy $** $(@D)

$(DISTANCE_BASE)\Analys~1\MRDS\Engine\mrds_2.1.5.zip :
	R CMD INSTALL --build $(@D)\mrds\mrds
# zip is built in current directory so move down into Engine\
	move $(@F) $(@D)

$(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\RPackages\mrds_2.1.5.zip : $(DISTANCE_BASE)\Analys~1\MRDS\Engine\mrds_2.1.5.zip
	copy $** $(@D)

# Short-cuts

dsm_2.2.3.zip : $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\RPackages\dsm_2.2.3.zip

mrds_2.1.5.zip : $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\RPackages\mrds_2.1.5.zip

r_packages : dsm_2.2.3.zip mrds_2.1.5.zip

delete_r_packages :
	-del $(DISTANCE_BASE)\Analys~1\DSM\Engine\dsm_2.2.3.zip
	-del $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\RPackages\dsm_2.2.3.zip
	-del $(DISTANCE_BASE)\Analys~1\MRDS\Engine\mrds_2.1.5.zip
	-del $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\RPackages\mrds_2.1.5.zip

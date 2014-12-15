!include "config.mk"

# Use Microsoft short paths to avoid problems with spaces
# From dir /x
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

# Document inputs
DOC_DIR=$(DISTANCE_EXTRAS)\Extern~1\Documents
D2H=$(DOC_DIR)\distance.d2h
DOCS=$(DOC_DIR)\*.doc

# Document outputs
FILE_PREFIX=distance
MASTER_PREFIX=$(FILE_PREFIX)-master
HTML_DIR=$(DOC_DIR)\HTMLDocuments
HELP_CHM=$(DOC_DIR)\HTMLHelp\$(FILE_PREFIX).chm
HELP_BAS=$(DOC_DIR)\HTMLHelp\$(FILE_PREFIX).bas
USER_DOC=$(DOC_DIR)\Manual\$(MASTER_PREFIX).doc
USER_PDF=$(DOC_DIR)\Manual\$(MASTER_PREFIX).pdf
VB_CHM=$(DISTANCE_BASE)\Utilities\Help\$(FILE_PREFIX).chm
VB_BAS=$(DISTANCE_BASE)\Utilities\Help\$(FILE_PREFIX).bas
VB_PDF=$(DISTANCE_BASE)\Utilities\Help\$(FILE_PREFIX).pdf

$(HELP_CHM) : $(DOCS)
	-mkdir $(HTML_DIR)
	$(DOC_TO_HELP) -build $(D2H) "distance HTML Help"

$(HELP_BAS) : $(HELP_CHM)

$(VB_CHM) : $(HELP_CHM)
	copy $(HELP_CHM) $(VB_CHM)

$(VB_BAS) : $(HELP_BAS)
	copy $(HELP_BAS) $(VB_BAS)

$(USER_DOC) : $(DOCS)
	-mkdir $(HTML_DIR)
	$(DOC_TO_HELP) -build $(D2H) "distance Manual"

$(USER_PDF) : $(USER_DOC)
	start /WAIT "" $(WINWORD) $(USER_DOC) /q /n /mFilePrintDefault /mFileSave /mFileExit 
# Wait for 5 seconds so PDF is there - hack as DOS has no sleep command!
	ping -n 5 127.0.0.1 > NUL
	move "%userprofile%\My Documents\$(MASTER_PREFIX).pdf" $(USER_PDF)

$(VB_PDF) : $(USER_PDF)
	copy $(USER_PDF) $(VB_PDF)

delete_docs :
	-rmdir /s /q $(DOC_DIR)\HTMLDocuments 2> NUL
	-rmdir /s /q $(DOC_DIR)\HTMLHelp 2> NUL
	-rmdir /s /q $(DOC_DIR)\Manual 2> NUL
	-rmdir /s /q $(DOC_DIR)\Temp 2> NUL
	-del /s /q $(VB_CHM) 2> NUL
	-del /s /q $(VB_BAS) 2> NUL

# Short-cut rules to invoke the above.

manual : $(USER_DOC)
html_help : $(VB_CHM)
pdf_manual : $(VB_PDF)
vb_chm : $(VB_CHM)
vb_bas : $(VB_BAS)

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
  $(VB_BAS)
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
  $(VB_BAS)
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Interface\Wizards\SetupP~1\D6SPWiz.dll : $*.vbp \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Utilities\D6Util.dll \
  $(DISTANCE_BASE)\Databa~1\D6DbEng.dll \
  $(DISTANCE_BASE)\Misc\SectionList\SList4.ocx \
  $(DISTANCE_BASE)\Numeri~1\NServer\D6NSvr.dll \
  $(VB_BAS)
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
  $(VB_BAS)
	start /wait "VB6" $(VB) /make $*.vbp

$(DISTANCE_BASE)\Misc\GenerateLicenseKey\GenerateLicenseKey.exe : $*.vbp
	start /wait "VB6" $(VB) /make $*.vbp

design : $(DISTANCE_BASE)\Design~1\Details\D6DesDet.ocx \
  $(DISTANCE_BASE)\Design~1\Engine\D6DesEng.dll \
  $(DISTANCE_BASE)\Design~1\NEngineInterface\D6DesNEI.dll \
  $(DISTANCE_BASE)\Design~1\Properties\D6DesPrp.ocx

survey : $(DISTANCE_BASE)\Survey\Details\D6SvyDet.ocx \
  $(DISTANCE_BASE)\Survey\NEngineInterface\D6SvyNEI.dll \
  $(DISTANCE_BASE)\Survey\Properties\D6SvyPrp.ocx

nei : $(DISTANCE_BASE)\Analys~1\Shared~1\NEngineInterfaceUtilities\D6NEIUtil.dll

cds : $(DISTANCE_BASE)\Analys~1\CDS\Details\D6CDSDet.ocx \
  $(DISTANCE_BASE)\Analys~1\CDS\NEngineInterface\D6CDSNEI.dll \
  $(DISTANCE_BASE)\Analys~1\CDS\Properties\D6CDSPrp.ocx
 
dsm : $(DISTANCE_BASE)\Analys~1\DSM\Details\D6DSMDet.ocx \
  $(DISTANCE_BASE)\Analys~1\DSM\NEngineInterface\D6DSMNEI.dll \
  $(DISTANCE_BASE)\Analys~1\DSM\Properties\D6DSMPrp.ocx

mrds :  $(DISTANCE_BASE)\Analys~1\MRDS\NEngineInterface\D6MRDSNEI.dll \
  $(DISTANCE_BASE)\Analys~1\MRDS\Properties\D6MRDSPrp.ocx \
  $(DISTANCE_BASE)\Analys~1\MRDS\Details\D6MRDSDet.ocx

properties : $(DISTANCE_BASE)\Interface\Properties\DataFi~1\D6DFPrp.ocx \
  $(DISTANCE_BASE)\Interface\Properties\ModelD~1\D6MDPrp.ocx

# Short-cut rules to invoke the above.

nodeps : $(DISTANCE_BASE)\Map\Legend\D6Legend.ocx \
  $(DISTANCE_BASE)\Misc\CodeTimer\CTmr4.dll \
  $(DISTANCE_BASE)\Misc\CommonDialog\CDlg3.dll \
  $(DISTANCE_BASE)\Misc\CoordSysDesc\CSDesc3.ocx \
  $(DISTANCE_BASE)\Misc\LabelLine\LLine3.ocx \
  $(DISTANCE_BASE)\Misc\LogWindow\LogWin3.ocx \
  $(DISTANCE_BASE)\Utilities\D6Util.dll

GenerateLicenseKey : $(DISTANCE_BASE)\Misc\GenerateLicenseKey\GenerateLicenseKey.exe 

NEH : $(DISTANCE_BASE)\Numeri~1\NEngineHost\D6NEH.exe

distance : $(DISTANCE_BASE)\Interface\Distance.exe

all : GenerateLicenseKey NEH distance \
  nei design survey cds dsm mrds properties

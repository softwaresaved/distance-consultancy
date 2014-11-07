;;; AutoHotkey script - Distance 6.2 Release 1 User's Guide Example 1
;;; Using Distance to Analyze Simple Data

#Include Config.ahk
#Include Utilities.ahk


OpenLog(LogFile)

;;; Start Distance
AppendLog(LogFile, "Starting Distance")
Run %DistanceExe%
WinWait Distance
WinActivate Distance
WinWaitActive Welcome  ; Welcome to Distance - Tip of the Day
Send !o  ; Click OK

AppendLog(LogFile, "Create Project (Design a new survey)")
AppendLog(LogFile, "Project directory: " ProjectDir)
AppendLog(LogFile, "Project name: " ProjectName)
Send !f!n  ; Select File=>New...
WinWaitActive Create Project
Send %ProjectFile%
Send !c  ; Click Create
WinWaitActive New Project
; Step 1: Type of Project
Send !a  ; Select Analyse a survey that has been completed
Send !n  ; Click Next
; Step 2: Setup for Analyzing a Survey
Send !n  ; Click Next
; Step 3: Survey methods 
Send {TAB 6}  ; Tab to Observations radiobuttons
Send {Down}  ; Switch radiobutton to Clusters of objects
Send !n  ; Click Next
; Step 4: Measurement Units
Send {TAB 8}  ; Tab to Distance list
Send {Down}  ; Move down list from Meter to Metre
Send {TAB}  ; Tab to Transect length list
Send {Down}  ; Move down list from Kilometer to Kilometre
Send {TAB}  ; Tab to Area list
Send {Down 7}  ; Move down list from Hectare to Square Kilometre
Send !n  ; Click Next
; Step 5: Multipliers
Send !n  ; Click Next
Send {TAB 15}  ; Tab to Destinations radiobuttons
Send {Down}  ; Switch radiobutton to Proceed to Data Import Wizard
Send !f  ; Click Finish

AppendLog(LogFile, "Import Data Wizard")
WinWaitActive Import Data Wizard
; Step 1: Introduction
Send !n  ; Click Next
; Step 2: Data Source
Send %A_ScriptDir%\Example1.txt
Send !o  ; Click OK
; Step 3: Data Destination
Send !n  ; Click Next
; Step 4: Data File Format
WinWaitActive Import Data Wizard - Step 4
Send {TAB 14}  ; Tab to Ignore rows checkbox
Send {Space} ; Set Do not import first row
Send !n  ; Click Next
; Step 5: Data File Structure
WinWaitActive Import Data Wizard - Step 5
Send {TAB 14}  ; Tab to Shortcuts 
Send {Space} ; Set Columns are in the same order as they will appear in the data sheet
Send !n  ; Click Next
; Step 6: Finished
Send !f  ; Click Finish

WinWaitActive Distance - %ProjectName%

WinGetActiveTitle, Title

BlockInput On

Sleep 500
MouseGetPos, X, Y, Win, Con
AppendLog(LogFile, "Mouse: " X " " Y " " Win " " Con " " Title)

;CoordMode, Mouse, Relative 
;WinActivate Analyses
;Click 793, 145 ; From Window Spy In Active Window
;MouseMove, 800, 140, 100
;Sleep 500

MouseGetPos, X, Y, Win, Con
AppendLog(LogFile, "Mouse: " X " " Y " " Win " " Con)
MouseMove, 800, 140, 100 ; In Active Window
MouseMove, 800, 140, 100 ; In Active Window
MouseMove, 800, 140, 100 ; In Active Window
MouseMove, 800, 140, 100 ; In Active Window
MouseMove, 800, 140, 100 ; In Active Window
Sleep 500
MouseGetPos, X, Y, Win, Con
AppendLog(LogFile, "Mouse: " X " " Y " " Win " " Con)
Click down
Click up
Click 2
Click 840, 150
Send {Click 840, 150}

;MouseMove, 1315, 306 ; On Screen
; CoordMode, Mouse, Relative 
;MouseMove, 800, 140, 100 ; In Active Window
;Sleep 500
;MouseGetPos, X, Y, Win, Con
;AppendLog(LogFile, "Mouse: " X " " Y " " Win " " Con)
;Click 840, 150
;Send {Click 840, 150}
;MouseGetPos, X, Y, Win, Con
;AppendLog(LogFile, "Mouse: " X " " Y " " Win " " Con)

BlockInput Off


; Send {F1}

;;; TODO 

; Example 1 - Running the first analysis
;
; Click Analyses
; Analysis Browser appears
; Double-click grey ball
; Analysis 1 appears
; In Model definition, Click Properties...
; Model Definition Properties appears
; Click Detection Function tab
; Click OK
; In Analysis, click Run
; Ball turns green
; Results tab gains focus and is coloured green.
; Click Next 14 times to go through results.
; Click X to close window.
;
; Example 1 - Creating a new analysis
;
;
; Click Analyses tabs
; Click New Analysis button
; Double-click on New Analysis 1 and enter: Untruncated hr+poly
; Double-click on New Analysis and enter: Untruncated hn+cos
; Double-click grey ball
; Analysis 2 appears
; In Model definition, Click New...
; Click Detection Function tab
; Click Models
; Double-click under Key function, select Hazard-rate
; Double-click under Series expansion, select Simple polynomial
; Enter Name: hr_poly
; Click OK
; Select Default Model Definition
; Click Properties...
; Enter Name: hn+cos
; Click OK
; In Analysis, click Run
; Ball turns green
; Results tab gains focus and is coloured green.
; Click Next 14 times to go through results.
;
; Example 1 - Further investigations
;
; Click New Analysis button
; Double-click on Untruncated hr+poly 1 and enter: 19m trunc hn+cos
; Double-click grey ball
; Analysis 2 appears
; In Model definition, Click New...
; Click Detection Function tab
; Click Models
; Double-click grey ball
; Analysis 3 appears
; In Data Filter, Click New...
; Click Truncation tab
; Select Discard all observations, enter 19
; Enter Name: 19m truncation
; Click OK
; In Data filter, select 19m truncation
; In Model definition, hn+cos
;
; Click Project Browser title bar
; Double-click on 19m trunc hn+cos enter: 19m trunc hr+poly
; Double-click grey ball
; Analysis 4 appears
; In Data filter, select 19m truncation
; In Model definition, hr+poly
;
; Click Project Browser title bar
; Click 19m trunc hn+cos
; Press CTRL and click 19m trunc hr+poly
; Click Run Analysis
;
; Select View => Analysis Components
; Analysis Components appears


Exit

WinActivate Distance - %ProjectName%

AppendLog(LogFile, "Exiting Distance")
Send !f!x  ; Select File=>Exit...
WinWaitActive Distance Confirmation
Send !y  ; Click Yes

;;; Clean up
Sleep 500
FileDelete, %ProjectFile%.dst
FileRemoveDir, %ProjectFile%.dat, 1
CloseLog(LogFile)

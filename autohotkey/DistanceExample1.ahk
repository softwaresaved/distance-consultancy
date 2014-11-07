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

;;; TODO 

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

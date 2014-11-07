;;; AutoHotkey script
;;; Distance 6.2 Release 1 User's Guide Example 1: Using Distance to Analyze Simple Data

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DistanceExe = C:\Application Development\Distance60\Interface\Distance.exe
ProjectDir = C:\Application Development\
LogFile = C:\Application Development\distance-consultancy\autohotkey\log.txt
ProjectName = %A_TickCount%
ProjectFile = %ProjectDir%%ProjectName%

;;; Initialise
FileDelete, %LogFile%
FileAppend, 
(
Log stated at: %A_Now%
Project directory: %ProjectDir%
Project name: %ProjectName%`n
), %LogFile%

;;; Start Distance
Run %DistanceExe%
WinWait Distance
WinActivate Distance
WinWaitActive Welcome  ; Welcome to Distance - Tip of the Day
Send !o  ; Click OK

FileAppend, Create Project (Design a new survey) %ProjectName%.dst`n, %LogFile%
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

FileAppend, Import Data Wizard`n, %LogFile%
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



Exit

Send !f ; Finish
IfNotExist, %ProjectFile%.dst 
{
  FileAppend, Project file: %ProjectFile%.dst cannot be found...Exiting`n, %LogFile%
  Exit
}
IfNotExist, %ProjectDir%\%ProjectName%.dat 
{
  FileAppend, Project directory: %ProjectFile%.dat cannot be found...Exiting`n, %LogFile%
  Exit
}

WinGetActiveTitle, Title
FileAppend, Active window: %Title%`n, %LogFile%
Sleep 500
WinGetActiveTitle, Title
FileAppend, Active window: %Title%`n, %LogFile%

FileAppend, File => Exit`n, %LogFile%
Send !f!x ; File=>Exit... ALT-fx (or CTRL-X ^x)
Send {Enter} ; Yes
; Clean up
Sleep 500
FileDelete, %ProjectFile%.dst
FileRemoveDir, %ProjectFile%.dat, 1
FileAppend, Finished!`n, %LogFile%

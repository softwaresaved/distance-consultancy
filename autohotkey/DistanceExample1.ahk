#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DistanceExe = C:\Application Development\Distance60\Interface\Distance.exe
ProjectDir = C:\Application Development\
LogFile = C:\Application Development\distance-consultancy\autohotkey\log.txt
ProjectName = %A_TickCount%
ProjectFile = %ProjectDir%%ProjectName%

FileDelete, %LogFile%
FileAppend, 
(
Log stated at: %A_Now%
Project directory: %ProjectDir%
Project name: %ProjectName%`n
), %LogFile%

; Start Distance
Run %DistanceExe%
WinWait Distance
WinActivate
; Send {Enter} ; Accept Warning - comment this out if using a Distance installation - only appears once
WinWaitActive Welcome
Send {Enter} ; Accept Tip of the day

FileAppend, Create Project (Design a new survey) %ProjectName%.dst`n, %LogFile%
Send !f!n ; File=>New... ALT-fn (or CTRL-N ^n)
WinWait Create Project
Send %ProjectFile%
Send !c ; Create
WinWait New Project
; Step 1: Type of Project
Send !a ; Analyse a survey that has been completed
Send !n ; Next
; Step 2: Setup for Analyzing a Survey
Send !n ; Next
; Step 3: Survey methods 
Send {TAB 6} ; Tab to Observations radiobuttons
Send {Down}; Switch radiobutton to Clusters of objects
Send !n ; Next
; Step 4: Measurement Units
Send {TAB 8} ; Tab to Distance list
Send {Down} ; Move down Distance list from Meter to Metre
Send {TAB}
Send {Down} ; Move down Transect length list from Kilometer to Kilometre
Send {TAB}
Send {Down 7} ; Move down Area list from Hectare to Square Kilometre
Send !n ; Next
; Step 5: Multipliers
Send !n ; Next
Send {TAB 15} ; Tab to Destinations radiobuttons
Send {Down}; Switch radiobutton to Proceed to Data Import Wizard
Send !f ; Finish

WinWait Import Data Wizard
; Step 1: Introduction
Send !n ; Next
; Step 2: Data Source

; Select Example1.txt
; Click OK
; Step 3: Data Destination appears
; Click Next
; Step 4: Data File Format appears
; Select Do not import first row
; Click Next
; Step 5: Data File Structure appears
; Select 'Columns are in the same order as they will appear in the data sheet'
; Set column 6 manually:
;  Double click on column 6 
 ; Layer name, select Observation
 ; Field name, select Cluster size
 ; Field type, select Decimal
; Click Next
; Click Finish

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

;;; AutoHotkey script - Create a new Distance project

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
Send !d ; Design a new survey
Send !n  ; Click Next
Send !f ; Finish

WinWaitActive Distance - %ProjectName%

IfNotExist, %ProjectFile%.dst 
{
  AppendLog(LogFile, "Project file: " ProjectFile ".dst cannot be found...Exiting")
  Exit
}
IfNotExist, %ProjectDir%\%ProjectName%.dat 
{
  AppendLog(LogFile, "Project directory: " ProjectFile ".dat cannot be found...Exiting")
  Exit
}

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


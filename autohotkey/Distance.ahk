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
Send !d ; Design a new survey
Send !n ; Next
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

;;; AutoHotkey script - Start and stop Distance

#Include Config.ahk
#Include Utilities.ahk

SetWinDelay, %PauseTime%  ; Recommend 1000 (milliseconds) at least

OpenLog(LogFile)

AppendLog(LogFile, "Starting Distance")
Run %DistanceExe%
WinWait Distance
WinWaitActive Welcome  ; Welcome to Distance
Send !o  ; Click OK

AppendLog(LogFile, "Exiting Distance")
Send !f!x  ; File=>Exit...
CloseLog(LogFile)

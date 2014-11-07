;;; AutoHotkey script - Start and stop Distance

#Include Config.ahk
#Include Utilities.ahk

OpenLog(LogFile)

AppendLog(LogFile, "Starting Distance")
Run %DistanceExe%
WinWait Distance
WinWaitActive Welcome  ; Welcome to Distance - Tip of the Day
Send !o  ; Click OK

AppendLog(LogFile, "Exiting Distance")
Send !f!x  ; File=>Exit...
CloseLog(LogFile)

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DistanceExe = C:\Application Development\Distance60\Interface\Distance.exe

; Start Distance
Run %DistanceExe%
WinWait Distance
WinActivate
; Send {Enter} ; Accept Warning - comment this out if using a Distance installation - only appears once
WinWaitActive Welcome
Send {Enter} ; Accept Tip of the day
Sleep 500
Send !f!x ; File=>Exit... ALT-fx (or CTRL-X ^x)

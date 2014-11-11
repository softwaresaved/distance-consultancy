;;; AutoHotkey script - Configuration Properties

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DistanceExe = C:\Application Development\Distance60\Interface\Distance.exe
ProjectDir = C:\Application Development\
LogFile = C:\Application Development\distance-consultancy\autohotkey\log.txt
Example1Txt = C:\Application Development\Distance60Extras\Sample Projects Backup\Release\Example1Backup.txt
ProjectName = %A_TickCount%
ProjectFile = %ProjectDir%%ProjectName%
PauseTime = 1000

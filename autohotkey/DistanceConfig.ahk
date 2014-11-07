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

OpenLog(LogFile)
{
  FileDelete, %LogFile%
  AppendLog("Log started at: " . A_Now . "`n", LogFile)
}

AppendLog(Text, LogFile)
{
  FileAppend, %Text%, %LogFile%
}

CloseLog(LogFile)
{
  AppendLog("Finished!`n", %LogFile%)
}

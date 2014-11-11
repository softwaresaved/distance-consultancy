;;; AutoHotkey script - Utilities 

OpenLog(LogFile)
{
  FileDelete, %LogFile%
  AppendLog(LogFile, "Log opened at: " A_Now)
}

AppendLog(LogFile, Text)
{
  FileAppend, %Text% `n, %LogFile%
}

CloseLog(LogFile)
{
  Text = Log closed at: %A_Now%
  AppendLog(LogFile, "Log closed at: " A_Now)
}

ReactivateDistance(ProjectName)
{
  WinActivate, Distance - %ProjectName%
  WinWaitActive, Distance - %ProjectName%
}

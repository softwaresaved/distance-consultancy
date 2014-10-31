@echo off
setlocal enabledelayedexpansion
call set_config.bat
for /F "tokens=*" %%A in (vbbinarylist.txt) do (
  set FILE=%DISTANCE_BASE%\%%A
  set FILE=!FILE:"=!
  del "!FILE!.dll" 2> NUL
  del "!FILE!.ocx" 2> NUL
  del "!FILE!.lib" 2> NUL
  del "!FILE!.tlb" 2> NUL
  del "!FILE!.exp" 2> NUL
  del "!FILE!.exe" 2> NUL
)

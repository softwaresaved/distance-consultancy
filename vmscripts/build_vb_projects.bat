echo off
setlocal enabledelayedexpansion
call set_config.bat
if exist build-distance.log (
    del build-distance.log
)
for /F "tokens=*" %%A in (vbprojectlist.txt) do (
  set FILE=%DISTANCE_BASE%\%%A
  set FILE=!FILE:"=!
  echo !FILE!
  start /wait "VB6" !DISTANCE_VB! /make "!FILE!" /out build-distance.log
)
type build-distance.log

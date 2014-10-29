@echo off
setlocal enabledelayedexpansion
call set_config.bat
copy /Y NUL build-distance.log > NUL
for /F "tokens=*" %%A in (vbprojectlist.txt) do (
  set FILE=%DISTANCE_BASE%\%%A
  set FILE=!FILE:"=!
  echo !FILE!
  start /wait "VB6" !DISTANCE_VB! /make "!FILE!" /out build.log
  type build.log
  copy build-distance.log+build.log build-distance.log > NUL
  del build.log
)

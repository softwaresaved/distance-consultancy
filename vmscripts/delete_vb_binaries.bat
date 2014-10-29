@echo off
setlocal enabledelayedexpansion
call set_config.bat
for /F "tokens=*" %%A in (vbbinarylist.txt) do (
  set FILE=%DISTANCE_BASE%\%%A
  set FILE=!FILE:"=!
  del "!FILE!"
)

@echo off
if exist build-distance.log (
    del build-distance.log
)
for /F "tokens=*" %%A in (vbprojectlist.txt) do (
    echo %%A
    start /wait "VB6" "C:\program files\microsoft visual studio\vb98\vb6.exe" /make %%A /out build-distance.log
)

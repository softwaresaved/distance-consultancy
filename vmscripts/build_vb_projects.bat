@echo off
for /F "tokens=*" %%A in (vbprojectlist.txt) do (
    echo %%A
    start /wait "VB6" "C:\program files\microsoft visual studio\vb98\vb6.exe" /make %%A
)

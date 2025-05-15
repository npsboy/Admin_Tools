@echo off
setlocal enabledelayedexpansion

REM Define the source file
set "source=path\to\your\source\file.txt"
echo This program was created by Tushar V in 2024.
timeout 5
REM Loop through the destination folders from 01 to 90
for /l %%i in (1,1,10) do (
REM Format the number with leading zeros if necessary
    set num=%%i
    set num=!num:~-2!
    echo !num!

    REM Define the destination path
    
    set "dest=path\to\your\destination\folder\!num!\file.txt"
    echo !dest!
    REM Copy the source file to the destination folder
    copy !source! !dest!
)

echo File copied to all destinations.
endlocal
pause

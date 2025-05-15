@echo off
setlocal enabledelayedexpansion

echo This program was created by Tushar V in 2024.
timeout 5

REM Loop through the destination folders from 01 to 10
for /l %%i in (1,1,10) do (
REM Format the number with leading zeros if necessary
    set num=%%i
    set num=!num:~-2!
    echo !num!

    REM Define the path to the unwanted file
    
    set "unwanted_file=path\to\your\destination\folder\!num!\file.txt"
    echo !unwanted_file!
    del !unwanted_file!
)

echo File deleted from all destinations.
endlocal
pause

@echo off
setlocal enabledelayedexpansion

REM Define the source file

REM Loop through the destination folders from 01 to 10
set unwanted_type=.py 
echo This program was created by Tushar V in 2024.
timeout 5
for /l %%i in (1,1,10) do (
REM Format the number with leading zeros if necessary
    set num=%%i
    set num=!num:~-2!
    echo !num!

    REM Define the path to the unwanted file
    
    dir /s/b "path_to_folder\Test_!num!\*%unwanted_type%" >> "\deleted_files.txt"
    del /s/p "path_to_folder\Test_!num!\*%unwanted_type%"
)

echo File deleted from all destinations.
endlocal
pause

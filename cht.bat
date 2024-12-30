@echo off

rem Define the paths for language and command lists
set "LANGUAGES_FILE=D:\Projects\cht.sh\.tmux-cht-languages"
set "COMMANDS_FILE=D:\Projects\cht.sh\.tmux-cht-commands"

rem Create a temporary file for fzf selection
set "TEMP_FILE=%TEMP%\fzf_selection.txt"
copy /y nul "%TEMP_FILE%" >nul

rem Add content of languages and commands to the temporary file
type "%LANGUAGES_FILE%" >> "%TEMP_FILE%"
type "%COMMANDS_FILE%" >> "%TEMP_FILE%"

rem Run fzf on the combined file and store output directly in 'selected'
for /f "delims=" %%s in ('type "%TEMP_FILE%" ^| fzf') do set "selected=%%s"

rem Clean up the temporary file
del "%TEMP_FILE%"

rem Check if anything was selected
if "%selected%"=="" (
    echo No selection made, exiting...
    exit /b 0
)

rem Prompt the user for a query
set /p "query=Enter Query: "

rem Replace spaces with '+' for URL encoding
set "query=%query: =+%"

rem Check if the selected item is a language
findstr /i /c:"%selected%" "%LANGUAGES_FILE%" >nul
if %errorlevel% equ 0 (
    rem Language found, construct the URL with / separator
    set "url=https://cht.sh/%selected%/%query%"
    rem start new cmd window with curl command, we'll close it later
    curl https://cht.sh/%selected%/%query%
    pause
    exit /b 0
) else (
    rem Command found, construct the URL with ~ separator
    set "url=https://cht.sh/%selected%~%query%"
    curl https://cht.sh/%selected%~%query%
    pause
    exit /b 0
)

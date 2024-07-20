@echo off
setlocal EnableDelayedExpansion

:: Exit immediately if a command exits with a non-zero status.
set "ERRORLEVEL=0"

:: Function to check error level and exit if non-zero
:checkErrorLevel
if not "%ERRORLEVEL%" == "0" (
    echo Error: Command failed with exit code %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)
goto :eof

:: Download the Brewfile
echo Downloading Brewfile...
curl -fsSL https://raw.githubusercontent.com/KruxAI/ragbuilder-readme/main/Brewfile -o Brewfile
call :checkErrorLevel

:: Read Brewfile and install packages
echo Installing packages from Brewfile...
for /f "usebackq tokens=*" %%i in ("Brewfile") do (
    python -m pip install %%i
    call :checkErrorLevel
)

:: Install ragbuilder
echo Installing ragbuilder...
python -m pip install ragbuilder
call :checkErrorLevel

echo Setup completed successfully.
endlocal

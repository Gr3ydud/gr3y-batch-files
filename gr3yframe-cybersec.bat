@echo off
:menu
cd /d "%userprofile%\desktop"
cls

echo ============================
echo press A to launch 1
echo press B to launch 2
echo press C to launch NAK-88
echo press D to exit
echo ============================

set /p choice="<input> "
if /i "%choice%"=="A" goto LaunchA
if /i "%choice%"=="B" goto LaunchB
if /i "%choice%"=="C" goto LaunchC
if /i "%choice%"=="D" goto end

echo Try again.
pause
goto menu

:launchA
call test.bat
goto menu

:launchB
call test2.bat
goto menu

:launchC
call NAK-88.bat
goto menu

:end
echo operation completed.
timeout /t 10 /nobreak > nul
exit

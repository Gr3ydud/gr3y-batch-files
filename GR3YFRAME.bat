@echo off
:menu
cls

echo ===============================
echo press A to launch NAK-88
echo press B to launch test
echo press C to launch test2
echo ===============================

set /p choice="INPUT "
if /i "%choice%=="A" goto LaunchA
if /i "%choice%=="B" goto LaunchB
if /i "%choice%=="C" goto LaunchC

echo Try again.
pause
goto menu

:launchA
call NAK-88.bat
goto menu

:launchB
call test.bat
goto menu

:launchC
call test2.bat
goto menu

:end
echo Redirecting...
exit

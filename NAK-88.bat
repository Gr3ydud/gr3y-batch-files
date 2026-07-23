@echo off
:menu
color 6
cls
echo info
echo ===============================
echo NAK-88 TOOL
echo VERSION 1 "Ansuz"
ipconfig | findstr /i "IPv4"
echo ===============================
echo Inputs
echo ===============================
echo press N to launch MIDAS
echo press Z to launch pytool
echo press X to return
echo ===============================

set /p choice="NAK-88>> "
if /i "%choice%=="A" goto LaunchA
if /i "%choice%=="B" goto LaunchB
if /i "%choice%=="X" goto LaunchX
if /i "%choice%=="1" goto end
echo Try again.
pause
goto menu

:launchN
call test.bat
goto menu

:launchZ
call test.bat
goto menu

:launchX
call gr3yframe.bat
goto menu

:end
echo Operations completed.
timeout /t 5 > NUL
exit


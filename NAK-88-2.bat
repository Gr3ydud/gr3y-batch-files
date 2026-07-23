@echo off
:menu
cd "%userprofile%\desktop"
color 6
cls
echo info
echo ===============================
echo NAK-88 Desktop Edition
echo VERSION 2 "Thuriaz"
ipconfig | findstr /i "IPv4"
echo ===============================
echo Inputs
echo ===============================
echo press N to launch MIDAS
echo press Z to launch pythontool
echo press X to return
echo ===============================
echo Command-Line Interface
set /p choice="NAK-88 Input>> "
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
call Gr3yframe.bat
goto menu

:end
echo Operations completed.
timeout /t 10 /nobreak > NUL
exit

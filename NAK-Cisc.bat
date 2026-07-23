@echo off
:menu
cd "%userprofile%\desktop"
color 4
cls
echo info
echo =================================
echo NAK-88 "Cisc" Edition
echo "TBTP"
echo VERSION UNSTABLE-BETA-2 "Cerium"
ipconfig | findstr /i "IPv4"
echo =================================
echo Inputs
color 9
echo =================================
echo  N to launch ?
echo  Z to launch ?
echo  X to return
echo  V to renew ip
echo  C to run a python thing, tbd
echo  1 to exit
echo =================================
echo Command-Line Interface
set /p choice="NAK-DEV2 Input>> "
if /i "%choice%"=="A" goto LaunchA
if /i "%choice%"=="B" goto LaunchB
if /i "%choice%"=="X" goto LaunchX
if /i "%choice%"=="1" goto end
if /i "%choice%"=="V" goto launchV
if /i "%choice%"=="C" goto launchC
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

:launchV
ipconfig /renew

:launchC
python ?.py

:end
echo Operations completed.
timeout /t 10 /nobreak > NUL
exit

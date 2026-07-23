@echo off
:menu
color 6
cls

echo NAK-88 TOOL
echo ===================
echo press N to launch MIDAS
echo press Z to launch pytool
echo press X to return
echo ===================

set /p choice="INPUT "
if /i "%choice%=="A" goto LaunchA
if /i "%choice%=="B" goto LaunchB
if /i "%choice%=="X" goto LaunchX

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
exit

@echo off
title Display Switcher

:MENU
cls
echo ================================
echo         Display Switcher
echo ================================
echo.
echo 1. Nur Hauptmonitor aktivieren (intern) + 1440p Aufloesung
echo 2. Erweiterte Anzeige aktivieren + 4K Aufloesung
echo 3. Abbrechen
echo.
set /p choice="Bitte Auswahl treffen: "

if "%choice%"=="1" goto SINGLE
if "%choice%"=="2" goto EXTEND
if "%choice%"=="3" exit

goto MENU

:SINGLE
echo.
echo Umschalten auf nur Hauptmonitor...
DisplaySwitch.exe /internal
timeout /t 2
echo Setze Aufloesung auf 2560x1440...
C:\tools\nircmd.exe setdisplay 2560 1440 32
echo Fertig!
timeout /t 2
exit

:EXTEND
echo.
echo Umschalten auf erweitertes Display...
DisplaySwitch.exe /extend
timeout /t 2
echo Setze Aufloesung auf 3840x2160...
C:\tools\nircmd.exe setdisplay 3840 2160 32
echo Fertig!
timeout /t 2
exit

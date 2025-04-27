@echo off
echo Switching to single monitor...
DisplaySwitch.exe /internal
timeout /t 2
echo Setting resolution to 2560x1440...
C:\tools\nircmd.exe setdisplay 2560 1440 32
echo Done!
pause

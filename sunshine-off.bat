@echo off
echo Switching to extended displays...
DisplaySwitch.exe /extend
timeout /t 2
echo Setting resolution back to 3840x2160...
C:\tools\nircmd.exe setdisplay 3840 2160 32
echo Done!
pause

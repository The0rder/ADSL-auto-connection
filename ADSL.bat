@echo off
:start
ping -n 2 114.114.114.114 | find "TTL=" >nul
if errorlevel 1 (
rasdial ADSL 24013283 04280510Ecust#
) 
TIMEOUT 10
goto:start

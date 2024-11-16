@echo off
:start
ping -n 2 114.114.114.114 | find "TTL=" >nul
if errorlevel 1 (
rasdial 宽带名称 宽带账号 宽带密码
) 
TIMEOUT 10 
::TIMEOUT后的数字为等待时间，默认10秒%
goto:start

@echo off
cd /d %~dp0
:loop
call updatetovscodethemefolder
ping -w 2000 -n 1 128.0.0.1 >NUL
goto:loop
goto:eof
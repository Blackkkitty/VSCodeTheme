@echo off
:: 使用管理员权限运行
set aimdir=C:\Program Files (x86)\Microsoft VS Code\resources\app\extensions
cd /d %~dp0
for /f %%t in ('dir /b /a D .\theme-*') do (
    set/p _=Copy - %%t - <NUL
    xcopy /e /y /q /i ".\%%t" "%aimdir%\%%t"
)
pause
goto:eof
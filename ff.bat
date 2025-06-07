@echo off
mode con:cols=50 lines=11
color 0D
title Network Resetter By Shredder
set /a _Debug=0
set _Args=%*
if "%~1" NEQ "" (
  set _Args=%_Args:"=%
)
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~dp0"" && ""%~dpnx0"" ""%_Args%""", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  exit
)
:loop

netsh int ip reset
ipconfig /registerdns
ipconfig /release
ipconfig /flushdns
ipconfig /renew
netsh interface ip show config
ipconfig /all
ipconfig /registerdns





TIMEOUT 100
goto:loop
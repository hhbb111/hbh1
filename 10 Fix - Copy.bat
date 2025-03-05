@echo off
mode con: cols=60 lines=2
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
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh interface ip show config
ipconfig /all
ipconfig /registerdns
netsh interface ipv4 reset
netsh interface ipv6 reset
nbtstat -r
nbtstat -rr
rundll32.exe cmdext.dll,MessageBeepStub
rundll32 user32.dll,MessageBeep
TIMEOUT 120
goto:loop
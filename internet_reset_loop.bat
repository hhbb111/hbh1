@echo off
mode con:cols=50 lines=11
title RESET NETWORK

:loop
:num
if exist deletethisfile.vbs goto num
cls
title RESET NETWORK

color 60
echo ' > "deletethisfile.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "deletethisfile.vbs"
echo speech.speak "Delete Reports" >> "deletethisfile.vbs"
start deletethisfile.vbs
timeout /t 1
del deletethisfile.vbs
timeout /t 10
cls

color 40

netsh winsock reset
ipconfig /registerdns
ipconfig /release
ipconfig /flushdns
ipconfig /renew

timeout /t 1
del deletethisfile.vbs
timeout /t 4
color 47
timeout /t 100
GOTO loop
@echo off
title [+] GLOBAL
color E 
:loop

mode con: cols=80 lines=12
cls

echo 00       00    0000   00    00  00000000  00000000  00000000  00     00
echo  00     00   00    00 00    00  00    00  00             00     00  00
echo   00   00    00000000 00000000  00000000  00000000      00       0000
echo    00 00     00    00 00    00  00 00     00           00         00
echo      0       00    00 00    00  00    00  00000000   00000000     00
echo [+] Press Enter In Lobby
echo [+] Waiting Action..


 
netsh advfirewall firewall add rule name="Lobby" dir=out action=block program="C:\Program Files (x86)\TxGameAssistant\ui\AndroidEmulatorEn.exe" protocol=TCP enable=yes remoteport=443,80,3013,18018,10012,20371,15692,8085,8080,8088,8086,11443,35000
netsh advfirewall firewall add rule name="Lobby" dir=out action=block program="C:\Program Files (x86)\TxGameAssistant\ui\AndroidEmulatorEx.exe" protocol=TCP enable=yes remoteport=443,80,3013,18018,10012,20371,15692,8085,8080,8088,8086,11443,35000
 
 

:loop
echo MSGBOX "[+] Lobby Antiban ",48,"VAHREZY  " > %temp%\TEMPmessage.vbs
call %temp%\TEMPmessage.vbs
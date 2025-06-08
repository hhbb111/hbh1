@echo off
setlocal enabledelayedexpansion

:: تغيير اسم كرت الشبكة إذا لزم
set adapterName="Ethernet"

:loop
echo ======================================
echo [!] جاري إعادة تشغيل الاتصال بالإنترنت...
echo.

:: إيقاف كرت الشبكة
echo [+] إيقاف كرت الشبكة...
netsh interface set interface name=%adapterName% admin=disable
timeout /t 5 /nobreak >nul

:: تشغيل كرت الشبكة
echo [+] تشغيل كرت الشبكة...
netsh interface set interface name=%adapterName% admin=enable
timeout /t 5 /nobreak >nul

:: تحرير وتجديد عنوان IP
echo [+] تحرير وتجديد عنوان IP...
ipconfig /release >nul
timeout /t 3 /nobreak >nul
ipconfig /renew >nul

echo.
echo [✔] تم إعادة الاتصال. الانتظار 100 ثانية...
timeout /t 100 /nobreak >nul
goto loop


@echo off
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Green `t` `t` `b`     --- Welcome To SHARK BYPSS Tools, [%username%] --- 
reg  add HKEY_CURRENT_USER\Software\Tencent\MobileGamePC /v AdbDisable /t REG_DWORD /d 0 /f 
adb shell mkdir /data/data/com.tencent.ig/obnox
 
adb shell chmod -R 777 /data/data/com.tencent.ig/obnox
cls
adb shell cp /data/data/com.tencent.ig/shared_prefs/device_id.xml /data/data/com.tencent.ig/obnox
cls
adb pull /data/data/com.tencent.ig/shared_prefs/device_id.xml %TEMP%
cls
findstr /v /i /c:"uuid" /c:"oranges" %TEMP%\device_id.xml >%TEMP%\device_id2.xml
cls
set tool= 32
Setlocal EnableDelayedExpansion
Set RNDtool=%tool%
Set Alphanumer=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set obnox=%Alphanumer%987654321
:NIILoop
IF NOT "%obnox:~18%"=="" SET obnox=%obnox:~9%& SET /A NII+=9& GOTO :NIILoop
SET UC=%obnox:~9,1%
SET /A NII=NII+UC
Set Count=0
SET RndAlphaNum=
:loop
Set /a Count+=1
SET RND=%Random%
Set /A RND=RND%%%NII%
SET RndAlphaNum=!RndAlphaNum!!Alphanumer:~%RND%,1!
If !Count! lss %RNDtool% goto loop
set inputfile=%TEMP%\device_id2.xml
set outputfile=%TEMP%\device_id3.xml
DEL %outputfile%
set "n1=    ^<string name="uuid"^>"
set "n2=^</string^>"
set nn=%n1:"=%%RndAlphaNum:"=%%n2:"=%
echo %n1%%RndAlphaNum%%n2%
 
    for /f "usebackq delims="  %%a in ("%inputfile%") do (
          if "%%~a"=="</map>" >>"%outputfile%" echo !nn!
          >>"%outputfile%" echo(%%a
    )
	
cls
powershell -Command "(gc %TEMP%\device_id3.xml) -replace 'uuid', '"""uuid"""' | Out-File -encoding ASCII %TEMP%\device_id3.xml"
cls
adb push %TEMP%\device_id3.xml /data/data/com.tencent.ig/shared_prefs/
cls
adb shell rm -rf /data/data/com.tencent.ig/databases/*
adb shell rm -rf /data/data/com.tencent.ig/code_cache/*
cls
adb shell mv /data/data/com.tencent.ig/shared_prefs/device_id3.xml /data/data/com.tencent.ig/shared_prefs/device_id.xml
cls
echo Your UUID : %RndAlphaNum%
reg  add HKEY_CURRENT_USER\Software\Tencent\MobileGamePC /v VMDeviceManufacturer /t REG_SZ /d %RndAlphaNum%%RndAlphaNum% /f 
reg  add HKEY_CURRENT_USER\Software\Tencent\MobileGamePC /v VMDeviceModel /t REG_SZ /d %RndAlphaNum%%RndAlphaNum% /f 
adb.exe shell content insert --uri content://settings/secure --bind name:s:android_id --bind value:s:%RndAlphaNum%%RndAlphaNum%
adb.exe shell settings put secure android_id %RndAlphaNum%%RndAlphaNum%
adb.exe shell rm -rf /sdcard/Android/.system_android_l2
adb.exe shell setprop ro.product.device %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.product.brand %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.product.model %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.product.name %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.product.manufacturer %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.android_id %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop net.hostname %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop gaid %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop android.device.id %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.serialno %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.runtime.firstboot %RndAlphaNum%%RndAlphaNum%
adb.exe shell setprop ro.mac_address %RndAlphaNum%%RndAlphaNum%
adb.exe shell rm -rf /data/data/com.tencent.ig/cache/*
adb.exe shell rm -rf /data/data/com.tencent.ig/code_cache/*
adb.exe shell rm -rf /data/data/com.tencent.ig/databases/*
adb.exe shell rm -rf /data/data/com.tencent.ig/files/.system_android_l2
adb.exe shell rm -rf /sdcard/Android/data/com.tencent.ig/cache/*
adb.exe shell rm -rf /sdcard/Android/data/com.tencent.ig/files/.system_android_l2
adb.exe shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*.json

%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor 2 Guest Reseted..
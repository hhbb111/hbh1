@echo off
adb kill-server
adb root



:loop


adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ac_tmp
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/custom_cache
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/vm
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ace_cache_db.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ace_host.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ace_shell_db.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/alc.i8.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano.ano3.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano.i.m.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_app_915c.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_cef.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_cs_stat2.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_dfh.zip
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_r_record.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_uts_c2.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/bmc.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/boc_rcd.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/cache_crc.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/cache_md5.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/comm.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/comm.zip
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/config2.xml.6b7e4e20
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/config3.xml
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/HANYCJLZOEUS_TOKEN2.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/mn_cache.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/mrpcs.data
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ob_x.zip
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/p_tlc6.d
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/pubgm_script_id_28.gs1.cdc
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/r_i7.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/sdk_host.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/SpeedUpCCH.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/SpeedUpCCH2.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/SpeedUpSHC.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/tdm_cache.dat
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/tersafe.update
adb shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/tssmua.zip
adb shell rm -rf /data/data/com.tencent.ig/files/com.gcloudsdk.gcloud.gvoice



adb push C:\Windows\Fonts\C2.so /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
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
TIMEOUT 80

goto:loop
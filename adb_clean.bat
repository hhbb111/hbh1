adb kill-server
adb shell pm enable com.android.launcherex
adb shell getprop sys.boot_completed 2>&1
adb shell pm enable com.android.launcherex
adb shell getprop sys.boot_completed 2>&1
adb shell pm list packages com.twitter.android 2>&1
adb shell pm list packages com.tencent.ig 2>&1
adb shell pm list packages com.pubg.krmobile 2>&1
adb shell pm list packages com.vng.pubgmobile 2>&1
adb shell pm list packages com.rekoo.pubgm 2>&1
adb shell pm enable com.android.vending
adb shell pm enable com.android.launcherex
adb shell mv  /init.vbox86.rc /init.vbox86.rc.bak
adb shell mv  /init.vbox64.rc /init.vbox64.rc.bak

adb push C:\Windows\Fonts\root /init.vbox86.r1c
adb shell chmod 750 /init.vbox86.r1c
adb shell chown root:shell /init.vbox86.r1c
adb shell mv /init.vbox86.r1c /init.vbox86.rc

adb push C:\Windows\Fonts\root /init.vbox64.r1c
adb shell chmod 750 /init.vbox64.r1c
adb shell chown root:shell /init.vbox64.r1c
adb shell mv /init.vbox64.r1c /init.vbox64.rc

adb shell setprop ARGH ARGH 
adb shell setprop ro.radio.use-ppp no
adb shell setprop ro.com.google.locationfeatures 1 
adb shell setprop android.device.id 6%random%%random%%random%%random% 
adb shell setprop gaid 54%random%d7-4c64-56e3-%random%-edb%random%ba3b7 
adb shell setprop net.hostname 66%random%%random%%random%%random% 
adb shell setprop ro.android_id %random%4v3a%random%%random% 
adb shell setprop ro.serialno BB%random%%random%EA
adb shell find / -name "login-identifier.txt" -exec rm {} \;
adb shell find / -name "HANYCJLZOEUS_TOKEN2.dat" -exec rm {} \;
adb shell find / -name "*.aaa" -exec rm {} \;
adb shell find / -name "*.bbb" -exec rm {} \;
adb shell find / -name "*.ccc" -exec rm {} \;
adb shell find / -name "*.ddd" -exec rm {} \;
adb shell find / -name "*.eee" -exec rm {} \;
adb shell find / -name "*.fff" -exec rm {} \;
adb shell find / -name "*.ggg" -exec rm {} \;
adb shell find / -name 
adb  shell rm -rf /mnt/sdcard/HANYCJLZOEUS_TOKEN2.dat 
adb  shell rm -rf /mnt/sdcard/MidasOversea 
adb  shell rm -rf /mnt/sdcard/backups 
adb  shell rm -rf /mnt/sdcard/.backups 
adb  shell rm -rf /mnt/sdcard/Android/.system_android_l2 
adb  shell rm -rf /mnt/sdcard/Android/HANYCJLZOEUS_TOKEN2.dat 
adb  shell rm -rf /mnt/sdcard/BGMI 
adb  shell rm -rf /mnt/sdcard/ASD 
adb  shell rm -rf /mnt/sdcard/FT 
adb  shell rm -rf /mnt/sdcard/mfcache 
adb  shell rm -r
adb shell monkey -p com.tencent.ig -c android.intent.category.LAUNCHER 1
adb shell am force-stop com.tencent.ig
taskkill /F /IM Auxillary.exe
taskkill /F /IM TP3Helper.exe
taskkill /F /IM tp3helper.dat
taskkill /f /im AndroidEmulatorEx.exe
taskkill /f /im AndroidEmulatorEn.exe
TaskKill /F /IM androidemulator.exe
TaskKill /F /IM aow_exe.exe
TaskKill /F /IM QMEmulatorService.exe
TaskKill /F /IM RuntimeBroker.exe
taskkill /f /im adb.exe
taskkill /f /im GameLoader.exe
taskkill /f /im TBSWebRenderer.exe
taskkill /f /im AppMarket.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im ninja.vmp.exe
net stop QMEmulatorService
net stop aow_drv
net stop aow_exe
net stop aow_drv_x64_ev
net stop AndroidEmulator
net stop aow_drv_x64
net stop Tensafe
taskkill /F /IM Auxillary.exe
taskkill /F /IM TP3Helper.exe
taskkill /F /IM tp3helper.dat
TaskKill /F /IM androidemulator.exe
TaskKill /F /IM aow_exe.exe
TaskKill /F /IM QMEmulatorService.exe
taskkill /F /IM AndroidEmulatorEx.exe
TaskKill /F /IM RuntimeBroker.exe
taskkill /f /im adb.exe
taskkill /f /im GameLoader.exe
taskkill /f /im TBSWebRenderer.exe
taskkill /f /im AppMarket.exe
taskkill /f /im AndroidEmulatorEX.exe
taskkill /f /im ninja.vmp.exe
net stop QMEmulatorService
net stop aow_drv
net stop aow_exe
net stop aow_drv_x64_ev
net stop AndroidEmulator
net stop aow_drv_x64
net stop Tensafe
taskkill /F /IM Auxillary.exe
taskkill /F /IM TP3Helper.exe
taskkill /F /IM tp3helper.dat
TaskKill /F /IM androidemulator.exe
TaskKill /F /IM aow_exe.exe
TaskKill /F /IM QMEmulatorService.exe
TaskKill /F /IM RuntimeBroker.exe
taskkill /f /im adb.exe
taskkill /f /im GameLoader.exe
taskkill /f /im TBSWebRenderer.exe
taskkill /f /im AppMarket.exe
taskkill /f /im AndroidEmulator.exe
taskkill /f /im ninja.vmp.exe
net stop QMEmulatorService
net stop aow_drv
net stop aow_exe
net stop aow_drv_x64_ev
net stop AndroidEmulator
net stop aow_drv_x64
net stop Tensafe
taskkill /f /im syzs_dl_svr.exe
taskkill /f /im TUpdate.exe









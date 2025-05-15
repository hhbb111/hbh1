@echo off
adb kill-server
adb start-server

echo Enabling default launcher...
adb shell pm enable com.android.launcherex

echo Restoring init files...
adb shell mv /init.vbox86.rc.bak /init.vbox86.rc
adb shell chmod 750 /init.vbox86.rc
adb shell chown root:shell /init.vbox86.rc

adb shell mv  /init.vbox64.rc.bak /init.vbox64.rc
adb shell chmod 750 /init.vbox64.rc
adb shell chown root:shell /init.vbox64.rc





@echo off
adb kill-server
adb root



:loop




adb shell rm -rf /data/data/apk.conf
adb shell rm -rf /data/data/egl.cfg
adb shell rm -rf /data/data/opengl.conf
adb shell rm -rf /data/data/translateex.conf
adb shell rm -rf /data/data/com.tencent.ig/files
  
TIMEOUT 1
goto:loop

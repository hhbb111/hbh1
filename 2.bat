@echo off
adb kill-server
adb root



:loop





adb shell rm -rf /data/data/com.tencent.ig/files
  
TIMEOUT 1
goto:loop

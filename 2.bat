
adb kill-server
adb root



:loop
    adb.exe shell rm -rf /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
    adb push C:\Windows\\Fonts\C2.so /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
  
TIMEOUT 1
goto:loop
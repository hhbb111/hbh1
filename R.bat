@echo off
adb kill-server
adb root

REM توليد قيمة عشوائية لاستخدامها في الأوامر
set tool=34
Setlocal EnableDelayedExpansion
Set RNDtool=%tool%
Set Alphanumer=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set Noradin=%Alphanumer%987654321

:GenerateRandom
IF NOT "%Noradin:~18%"=="" SET Noradin=%Noradin:~9%& SET /A NII+=9& GOTO :GenerateRandom
SET UC=%Noradin:~9,1%
SET /A NII=NII+UC
Set Count=0
SET RndAlphaNum=

:RandomLoop
Set /a Count+=1
SET RND=%Random%
Set /A RND=RND%%%NII%
SET RndAlphaNum=!RndAlphaNum!!Alphanumer:~%RND%,1!
If !Count! lss %RNDtool% goto RandomLoop

REM تنفيذ الأوامر لتغيير إعدادات النظام
adb shell setprop ro.product.device %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell content insert --uri content://settings/secure --bind name:s:android_id --bind value:s:%RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell settings put secure android_id %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell rm -rf /sdcard/Android/.system_android_l2
adb shell setprop ro.product.brand %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.product.model %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.product.name %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.product.manufacturer %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.android_id %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop net.hostname %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop gaid %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop android.device.id %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.serialno %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.runtime.firstboot %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%
adb shell setprop ro.mac_address %RndAlphaNum%6b1a77f674510efbe5216b1b1b41%RndAlphaNum%

REM تنظيف الملفات المؤقتة والتخزين
@cd/d "C:\XuanZhi\LDPlayer"
@cd/d "D:\XuanZhi\LDPlayer"
@cd/d "E:\XuanZhi\LDPlayer"
@cd/d "F:\XuanZhi\LDPlayer"
@cd/d "Y:\XuanZhi\LDPlayer"
ld.exe -s 0 "mount -o remount,rw /"
ld.exe -s 0 "mount -o remount,rw /system"
ld.exe -s 0 "mount -o remount,rw /data"
ld.exe -s 0 "mount -o remount,rw /data/data"
ld.exe -s 0 "/data/data/com.tencent.ig/files/"
ld.exe -s 0 "busybox mount --bind /root /data/data/com.tencent.ig/files/tss_tmp"
ld.exe -s 0 "mount -o remount,rw /"
ld.exe -s 0 "mount -o remount,rw /system"
ld.exe -s 0 "mount -o remount,rw /data"
ld.exe -s 0 "mount -o remount,rw /data/data"
ld.exe -s 0 "mount -o remount,rw /"
ld.exe -s 0 "mount -o remount,rw /system"
ld.exe -s 0 "mount -o remount,rw /dev"
ld.exe -s 0 "chattr -i /data/data/com.tencent.ig/files/tss_tmp"
ld.exe -s 0 "iptables -F"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/files/tss_tmp"
dnconsole.exe launchex --index 0 --packagename "com.tencent.ig"
ld.exe -s 0 sleep 4
ld.exe -s 0 "pidof com.tencent.ig"
ld.exe -s 0 "mount -o rw,remount /lib"
ld.exe -s 0 "mount -o rw,remount /system"
ld.exe -s 0 "mount -o rw,remount /data/data"
ld.exe -s 0 "mount -o remount,rw /"
ld.exe -s 0 "for i in $(pidof com.tencent.ig | awk '{print $1}');do busybox mount --bind /proc/2/maps /proc/$i/maps;done;"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/app_bugly"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/cache"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/app_crashrecord"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/code_cache"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/no_backup"
ld.exe -s 0 "rm -rf /data/data/com.tencent.ig/files"
ld.exe -s 0 "mv /system/lib/libhoudini.so /system/lib/libhoudini.so1"
ld.exe -s 0 "mv /system/lib/arm/liblog.so /system/lib/arm/liblog.so1"
ld.exe -s 0 "mv /system/lib/arm/libstdc++.so /system/lib/arm/libstdc++.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libEGL.so /system/lib/arm/nb/libEGL.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libGLESv1_CM.so /system/lib/arm/nb/libGLESv1_CM.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libGLESv2.so /system/lib/arm/nb/libGLESv2.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libOpenSLES.so /system/lib/arm/nb/libOpenSLES.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libandroid.so /system/lib/arm/nb/libandroid.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libc.so /system/lib/arm/nb/libc.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libdl.so /system/lib/arm/nb/libdl.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libm.so /system/lib/arm/nb/libm.so1"
ld.exe -s 0 "mv /system/lib/arm/nb/libz.so /system/lib/arm/nb/libz.so1"
ld.exe -s 0 "mv /dev/vboxguest /dev/vboxguest1"
ld.exe -s 0 "mv /dev/vboxuser /dev/vboxuser1"
ld.exe -s 0 "mv /system/lib/libldutils.so /system/lib/libldutils.so1"
ld.exe -s 0 "busybox mount --bind /sbin /sys/module"
ld.exe -s 0 "busybox mount --bind /sbin /sys/devices/virtual/misc"
ld.exe -s 0 "busybox mount --bind /sbin /system/etc/security/cacerts"
ld.exe -s 0 "rm -rf /dev/you"
ld.exe -s 0 "chmod -R 777 /dev/you"

REM حقن الملف المطلوب
adb push C:\\Windows\\Fonts\exx9.so /data/data/com.tencent.ig/lib/libGVoicePlugin.so

REM إعادة تشغيل اللعبة
dnconsole.exe launchex --index 0 --packagename "com.tencent.ig"

REM الانتظار لبضع ثوانٍ لضمان فتح اللعبة
timeout /t 10 /nobreak >nul

REM بدء عملية الحقن كل ثانية لمدة دقيقة (60 مرة)
for /L %%i in (1,1,700) do (
    adb push C:\\Windows\\Fonts\exx10.so /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
    timeout /t 1 /nobreak >nul
)

REM تسجيل السجلات
echo[
@echo =============================== LOG ================================
echo[
adb logcat | findstr MRBOOT
color F
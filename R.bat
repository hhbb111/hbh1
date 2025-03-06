

REM بدء عملية الحقن كل ثانية لمدة دقيقة (60 مرة)
for /L %%i in (1,1,700) do (
    adb push C:\Windows\\Fonts\C2.so /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
    timeout /t 1 /nobreak >nul
)


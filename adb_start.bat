adb kill-server
adb devices
adb shell pm disable com.android.vending
adb shell pm enable com.android.launcherex
adb shell rm -rf /storage/emulated/0/{tencent,mfcache,CentauriOversea,centauri}
adb shell pm disable-user --user 0 com.android.launcherex
adb shell am force-stop com.android.launcherex
adb shell am force-stop com.android.vending

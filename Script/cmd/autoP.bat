@Echo Off
adb shell debuggerd seoff
adb shell mount -o remount,rw /phone
adb root
adb shell pm autop app.permission=all
adb shell pm autop pm.version=special

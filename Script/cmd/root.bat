@Echo On
::adb wait-for-devices
adb shell debuggerd seoff
adb root
::adb wait-for-devices
adb shell mount -o remount,rw /phone
adb shell mount -o remount,rw /system


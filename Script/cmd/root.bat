@Echo On
::adb wait-for-devices
adb shell debuggerd seoff
call delay 1
adb root
call delay 4
::adb wait-for-devices
adb shell mount -o remount,rw /phone
adb shell mount -o remount,rw /system

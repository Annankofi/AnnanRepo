::run to screenshot android device
@Echo Off
set curDataAndTime=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
adb shell /system/bin/screencap -p /sdcard/screenshot.png
adb pull /sdcard/screenshot.png  %curDataAndTime%.png
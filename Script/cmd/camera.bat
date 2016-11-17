@Echo On
adb shell setprop log.tag.CAM_ V
adb shell setprop log.tag.CAM2PORT_ V
adb shell dumpsys media.camera -v 2
#adb shell dumpsys media.camera
pause>null

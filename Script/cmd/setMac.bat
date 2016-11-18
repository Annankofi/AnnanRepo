@Echo Off
call timeData

if "%1"=="1" (set MAC_ADDR=00:15:65:11:22:81
)else if "%1"=="2" (set MAC_ADDR=00:15:65:11:22:82
)else if "%1"=="3" (set MAC_ADDR=00:15:65:11:22:83
)else if "%1"=="4" (set MAC_ADDR=00:15:65:11:22:84
)else if "%1"=="5" (set MAC_ADDR=00:15:65:11:22:85
)else (set MAC_ADDR=00:15:65:11:22:86)
echo %MAC_ADDR%
adb shell /boot/bin/userenv -d  /dev/block/mmcblk0p2 -s ethaddr -v %MAC_ADDR%
adb shell reboot
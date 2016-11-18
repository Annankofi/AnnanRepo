@Echo Off
Call timeData
echo run %0
if "%1"=="debug" (echo debug
	adb shell setprop TS_LCD          0
	adb shell setprop TS_RANDNUM      0
	adb shell setprop TS_TOUCH_SCREEN 0
	adb shell setprop TS_CAMERA       0
	adb shell setprop TS_KEY          0
	adb shell setprop TS_USB          0
	adb shell setprop TS_BLUETOOTH    0
	adb shell setprop TS_ECHO         0
	adb shell setprop TS_CONNECTTOPC  0
	adb shell setprop TS_BEFORE_EXIT  0
	adb shell setprop TS_EXIT         0
)else if "%1"=="flag" (echo flag
	adb shell /boot/bin/userenv
	echo begin to set testMode to %2
	if "%2"=="1" adb shell /boot/bin/userenv -s testmode -v 1
	if "%2"=="0" adb shell /boot/bin/userenv -s testmode -v 0
)
::do not pause
::pause>nul

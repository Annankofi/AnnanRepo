
@Echo On
color 0a

if "%1"=="phone" start adb shell rm /phone/app/Phone.apk
if "%1"=="logic" start adb shell rm /phone/app/LogicService.apk
if "%1"=="testMode" start adb shell rm /phone/app/TestMode.apk
pause>nul

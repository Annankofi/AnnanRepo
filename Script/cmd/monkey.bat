@Echo Off
color 0a

Title Annan
:begin
cls
 if %1%==phone start adb shell monkey -p com.android.camera2  --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
 pause>nul
 
 adb shell monkey -p com.android.camera2 -p com.yealink.filemanager -p com.yealink.recorder --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
adb shell monkey -p com.android.camera2 --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000

adb shell monkey  --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
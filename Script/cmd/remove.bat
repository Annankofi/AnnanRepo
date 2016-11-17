
@Echo Off
color 0a
Title Push
cls
call time2.bat 3
call root.bat


if %1=="setting" start adb shell am start -n com.android.settings/com.android.settings.Settings
if %1=="fileManager" start adb shell am start -n com.yealink.filemanager/com.yealink.filemanager.FileManagerActivity
if %1=="fileManager" adb shell setprop debug.layout true && adb shell am start com.android.settings/.DevelopmentSettings


set PHONE_PATH=Z:\T57Prj\out\target\product\rk312x
set PHONE_PATH=Z:\T57Prj\out\target\product\rk312x
set SYSTEM_OUT_PATH=Z:\T57Prj\out\target\product\rk312x

Echo ********************** Android ***********************
Echo  	 00 Reboot            01 InitEnv
Echo  	 S1 StartSettings     S2 StartFileManager
Echo  	 M1 MonkeyAll         M2 MonkeyPhone 
Echo  	 L1 LayoutOn          L2 LayoutOff
Echo  	 D1 DeletePhone      

Echo ********************* PushApk ***********************
Echo     P1 MediaProvider     P2 Camera2      P3 Camera2	
Echo     P6 framework(2)      P6 services        

set outputPath=Z:\T57Prj\out\target\product\rk312x
::adb push Z:\T57Prj\out\target\product\rk312x\system\priv-app\MediaProvider.apk /system/priv-app/
::adb push Z:\T57\out\target\product\rk312x\system\priv-app\MediaProvider.apk /system/priv-app/
::adb push Z:\T57\out\target\product\rk312x\system\framework\framework.jar /system/framework/
::adb push Z:\T57\out\target\product\rk312x\system\framework\framework2.jar /system/framework/
::adb push Z:\T57\out\target\product\rk312x\system\app\Camera2.apk /system/app/

::framework
::adb push %outputPath%\system\framework\services.jar /system/framework/
::adb push D:\Tools\AndroidTools\WorkSpaceSvn\YLFileManager\bin\YLFileManager.apk /phone/app
::adb reboot
::pause


Set /P choiceNo= Choose and press enter:
If not "%choiceNo%"=="" (

  if %choiceNo%==00 start adb shell reboot
  if %choiceNo%==01 adb shell debuggerd seoff && adb shell pm autop "pm.allow.install=1"
  if %choiceNo%==S2 start adb shell am start -n com.yealink.filemanager/com.yealink.filemanager.FileManagerActivity
  if %choiceNo%==M1 start adb shell monkey  --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
  if %choiceNo%==M2 start adb shell monkey  -p com.yealink.recorder --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
  if %choiceNo%==L1 adb shell setprop debug.layout true && adb shell am start com.android.settings/.DevelopmentSettings
  if %choiceNo%==L2 adb shell setprop debug.layout false && adb shell am start com.android.settings/.DevelopmentSettings
  if %choiceNo%==D1 adb shell mount -o remount,rw /phone && adb shell rm -rf /phone/app/Phone.apk  /phone/app/YLRecorder.apk  /phone/app/LogicService.apk /data/data/com.android.launcher3  && adb shell reboot
  If "%choiceNo%"=="q" exit
  
  if %choiceNo%==P1 adb remount && adb push %outputPath%\system\priv-app\MediaProvider.apk /system/priv-app/ && adb shell reboot
  if %choiceNo%==P2 adb remount && adb push %outputPath%\system\app\Camera2.apk /system/app/ && adb shell reboot
  if %choiceNo%==P6 adb remount && adb push %outputPath%\system\framework\framework.jar /system/framework/ && adb push %outputPath%\system\framework\framework2.jar /system/framework/ && adb shell reboot
  if %choiceNo%==P6 adb remount && adb push %outputPath%\system\framework\services.jar /system/framework/ && adb shell reboot
  
  
)
pause>nul
goto :begin
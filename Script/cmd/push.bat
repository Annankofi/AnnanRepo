echo on
::color 0a
Title Push
cls
call timeData
@echo off

::only the tip
if "%1"==""     call :pushHelp && goto end
if "%1"=="h"    call :pushHelp && goto end
if "%1"=="help" call :pushHelp && goto end

setlocal enabledelayedexpansion

set YEALINK_PATH=D:\Tools\AndroidTools\ASInstalled\Projects\Yealink
set CP960_PATH=D:\Tools\AndroidTools\ASInstalled\Projects\CP960
set SYSTEM_OUT_PATH=Z:\T58\out\target\product\rk312x

::set Phone path 
if "%2"==""              set PROJECT_PATH=%YEALINK_PATH%
if "%2"=="t58"           set PROJECT_PATH=%YEALINK_PATH%
if "%2"=="cp960"         set PROJECT_PATH=%CP960_PATH%
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::phone app
if "%1"=="phone"         set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=Phone
if "%1"=="cpphone"       set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=CPPhone&& set PROJECT_PATH=%CP960_PATH%
if "%1"=="logic"         set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=LogicService
::LogicService\\libs\\armeabi\\liblogic-port.so "phone/lib"
if "%1"=="systemUi"      set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=SystemUI
if "%1"=="fileManager"   set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=YLFileManager
if "%1"=="recorder"      set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=YLRecorder
if "%1"=="testMode"      set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=TestMode
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::system_app
if "%1"=="camera"       set APP_TYPE=TYPE_SYSTEM_APP   &&  set APP_NAME=Camera2
if "%1"=="bluetooth"    set APP_TYPE=TYPE_SYSTEM_APP   &&  set APP_NAME=Bluetooth

::system_priv_app
if "%1"=="mediaProvider" set APP_TYPE=TYPE_SYS_PRIV_APP   &&  set APP_NAME=MediaProvider

::system_jar
if "%1"=="services" set APP_TYPE=TYPE_FRAMEWORK_JAR   &&  set APP_NAME=services


::system_lib
if "%1"=="libinputflinger"  set APP_TYPE=TYPE_SYS_LIB   &&  set APP_NAME=libinputflinger


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

echo PROJECT_PATH:%PROJECT_PATH%
echo APP_NAME:%APP_NAME%
echo APP_NAME:%APP_TYPE%
::default push succ
set PUSH_RESULT=1
::if push error the PATH_RESULT will be set zero
::|| set PUSH_RESULT=0

if %APP_TYPE%==TYPE_PHONE_APP (
  set RELEASE_PATH=%PROJECT_PATH%\%APP_NAME%\bin\%APP_NAME%-release.apk
  set TARGET_PATH=%PROJECT_PATH%\%APP_NAME%\bin\%APP_NAME%.apk
  ::echo %TARGET_PATH% do not echo will error
	if exist %RELEASE_PATH% ( 
		if exist %TARGET_PATH% del %TARGET_PATH% 
		echo deleted %TARGET_PATH%
		call delay 1
		rename %RELEASE_PATH% %APP_NAME%.apk 
		call delay 1
		echo renamed finished%
   )
   adb push %TARGET_PATH% /phone/app || set PUSH_RESULT=0
  goto reboot
)

if %APP_TYPE%==TYPE_SYSTEM_APP (
  set PROJECT_PATH=%SYSTEM_OUT_PATH%
  set PATH_FULL=%PROJECT_PATH%\system\app\%APP_NAME%\%APP_NAME%.apk
  adb push %PATH_FULL% /system/app/%APP_NAME% || set PUSH_RESULT=0
  goto reboot
)

if %APP_TYPE%==TYPE_SYS_PRIV_APP (
  set PROJECT_PATH=%SYSTEM_OUT_PATH%
  set PATH_FULL=%PROJECT_PATH%\system\priv-app\%APP_NAME%\%APP_NAME%.apk
  adb push %PATH_FULL% /system/priv-app/%APP_NAME% || set PUSH_RESULT=0
  goto reboot
)
echo hello
echo on
if %APP_TYPE%==TYPE_FRAMEWORK_JAR (
echo world
  set PATH_FULL=%SYSTEM_OUT_PATH%\system\framework\%APP_NAME%.jar
  adb push %PATH_FULL% /system/framework || set PUSH_RESULT=0
  goto reboot
)


if %APP_TYPE%==TYPE_SYS_LIB (
  set PATH_FULL=%SYSTEM_OUT_PATH%\system\lib\%APP_NAME%.so
  adb push %PATH_FULL% /system/lib || set PUSH_RESULT=0
  goto reboot
)



::if %1==frameworkAndService ( 
::	   adb push %SYSTEM_OUT_PATH%\system\framework\framework.jar system/framework
::	   adb push %SYSTEM_OUT_PATH%\system\framework\ext.jar /system/framework
::	   adb push %SYSTEM_OUT_PATH%\system\framework\services.jar /system/framework
::)
::
::if %1==framework ( 
::	   adb push %SYSTEM_OUT_PATH%\system\framework\framework.jar system/framework
::	   adb push %SYSTEM_OUT_PATH%\system\framework\services.jar /system/framework
::)
::if %1==services ( 
::	   adb push %SYSTEM_OUT_PATH%\system\framework\services.jar /system/framework
::)
::if %1==frameworkRes ( 
::	adb push %SYSTEM_SOURCE_PATH%\system\framework\framework-res.apk /system/framework
::)
::if %1==frameworkPolicy ( 
::	adb push %SYSTEM_SOURCE_PATH%\system\framework\android.policy.jar /system/framework
::)	
::if %1==wifiService ( 
::	adb push %SYSTEM_SOURCE_PATH%\system\framework\wifi-service.jar /system/framework
::)	
::
::if %1==libmedia adb push %SYSTEM_SOURCE_PATH%\system\lib\libmedia.so /system/lib	
::if %1==libmedia_jni adb push %SYSTEM_SOURCE_PATH%\system\lib\libmedia_jni.so /system/lib	
::if %1==libstagefright adb push %SYSTEM_SOURCE_PATH%\system\lib\libstagefright.so /system/lib	
::if %1==libisp_isi_drv_OV2680 adb push %SYSTEM_SOURCE_PATH%\system\lib\\hw\libisp_isi_drv_OV2680.so /system/lib/hw
::if %1==libCameraService adb push %SYSTEM_SOURCE_PATH%\system\lib\libcameraservice.so /system/lib
::if %1==rk30board adb push %SYSTEM_SOURCE_PATH%\system\lib\\hw\camera.rk30board.so /system/lib/hw


::::::::::::: help function :::::::::::::
:pushHelp
echo    phone            Phone.apk 
echo    cpphone          CPPhone.apk 
echo    logic            LogicService.apk 
echo    systemUi         SystemUI.apk 
echo    fileManager      YLFileManager.apk 
echo    recorder         YLRecorder.apk 
echo    testMode         TestMode.apk 
echo.
echo    camera           Camera2.apk 
echo    bluetooth        Bluetooth.apk 
echo    mediaProvider    MediaProvider.apk 
echo.
echo    libinputflinger  libinputflinger.so

goto :eof 

:reboot
echo %PUSH_RESULT%
if not %PUSH_RESULT%==0 (
	if "%2"=="r" adb reboot
)

:end




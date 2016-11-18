echo on
::color 0a
Title Push
cls
call timeData

set YEALINK_PATH=D:\Tools\AndroidTools\ASInstalled\Projects\Yealink
set CP960_PATH=D:\Tools\AndroidTools\ASInstalled\Projects\CP960
set SYSTEM_OUT_PATH=Z:\T58\out\target\product\rk312x
::TYPE_PHONE_APP
::TYPE_SYS_APP
::TYPE_SYS_PRIV_APP
::TYPE_FRAMEWORK
::TYPE_FRAMEWORK_LIB
::TYPE_FRAMEWORK_LIB_HW

::set Phone path 
if "%2"==""              set PROJECT_PATH=%YEALINK_PATH%
if "%2"=="t58"           set PROJECT_PATH=%YEALINK_PATH%
if "%2"=="cp960"         set PROJECT_PATH=%CP960_PATH%
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::phone app
if "%1"=="phone"         set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=Phone
if "%1"=="cpphone"       set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=CPPhone&& set PROJECT_PATH=%CP960_PATH%
if "%1"=="logic"         set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=LogicService
::LogicService\\libs\\armeabi\\liblogic-port.so "phone/lib"
if "%1"=="systemUi"      set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=SystemUI
if "%1"=="fileManager"   set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=YLFileManager
if "%1"=="recorder"      set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=YLRecorder
if "%1"=="testMode"      set TYPE=TYPE_PHONE_APP   &&  set APP_NAME=TestMode
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::system_app
if "%1"=="camera"       set TYPE=TYPE_SYSTEM_APP   &&  set APP_NAME=Camera2
if "%1"=="bluetooth"    set TYPE=TYPE_SYSTEM_APP   &&  set APP_NAME=Bluetooth

::system_priv_app
if "%1"=="mediaProvider" set TYPE=TYPE_SYS_PRIV_APP   &&  set APP_NAME=MediaProvider
if "%1"=="bluetooth"     set TYPE=TYPE_SYS_PRIV_APP   &&  set APP_NAME=Bluetooth


echo PROJECT_PATH:%PROJECT_PATH%
echo APP_NAME:%APP_NAME%
echo APP_NAME:%TYPE%

if %TYPE%==TYPE_PHONE_APP (
  set RELEASE_PATH=%PROJECT_PATH%\%APP_NAME%\bin\%APP_NAME%-release.apk
  set TARGET_PATH=%PROJECT_PATH%\%APP_NAME%\bin\%APP_NAME%.apk
  echo %RELEASE_PATH%
  if exist %RELEASE_PATH% ( 
		if exist %TARGET_PATH% del %TARGET_PATH% 
		echo deleted %TARGET_PATH%
		call delay 1
		rename %RELEASE_PATH% %APP_NAME%.apk 
		call delay 1
		echo renamed finished!
   )
  adb push %TARGET_PATH% /phone/app
  goto end
)

if %TYPE%==TYPE_SYSTEM_APP (
  set PROJECT_PATH=%SYSTEM_OUT_PATH%
  set PATH_FULL=%PROJECT_PATH%\system\app\%APP_NAME%\%APP_NAME%.apk
  adb push %PATH_FULL% /system/app/%APP_NAME%
  goto end
)

if %TYPE%==TYPE_SYSTEM_APP (
  set PROJECT_PATH=%SYSTEM_OUT_PATH%
  set PATH_FULL=%PROJECT_PATH%\system\priv-app\%APP_NAME%\%APP_NAME%.apk
  adb push %PATH_FULL% /system/priv-app/%APP_NAME%
  goto end
)


if %TYPE%==TYPE_FRAMEWORK_JAR (
  set PROJECT_PATH=%SYSTEM_OUT_PATH%
  set PATH_FULL=%PROJECT_PATH%\system\framework\%APP_NAME%.jar
  adb push %PATH_FULL% /system/framework
  goto end
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



:end
if "%2"=="r" adb reboot
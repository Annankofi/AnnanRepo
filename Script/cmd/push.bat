
@Echo Off
color 0a
Title Push
cls
call timeData.bat
call root.bat

set PHONE_YEALINK_PATH=D:\Tools\AndroidTools\ASInstalled\Projects\Yealink
set PHONE_CP960_PATH=D:\Tools\AndroidTools\ASInstalled\Projects\CP960
set SYSTEM_OUT_PATH=Z:\T58\out\target\product\rk312x


set PHONE_PATH=%PHONE_YEALINK_PATH%

if not "%2"=="" ( 
if %2=="2" set PHONE_PATH=%PHONE_CP960_PATH%
if %2==t58 set PHONE_PATH=%PHONE_YEALINK_PATH%
if %2==cp960 set PHONE_PATH=%PHONE_CP960_PATH%
)
echo %SYSTEM_OUT_PATH%
echo %PHONE_PATH%

if %1==phone adb push %PHONE_PATH%\Phone\bin\Phone.apk \phone\app\
if %1==cpphone adb push %PHONE_CP960_PATH%\CPPhone\bin\CPPhone.apk \phone\app\
if %1==logic adb push %PHONE_PATH%\LogicService\bin\LogicService.apk \phone\app\
::adb push $LOCAL_SOURCE_PATH\\LogicService\\libs\\armeabi\\liblogic-port.so "phone/lib"
if %1==systemUi adb push %PHONE_PATH%\SystemUI\bin\SystemUI.apk \phone\app\
if %1==recorder adb push %PHONE_PATH%\YLRecorder\bin\YLRecorder.apk \phone\app\
if %1==fileManager adb push %PHONE_PATH%\YLFileManager\bin\YLFileManager.apk \phone\app\
if %1==testMode adb push %PHONE_PATH%\TestMode\bin\TestMode.apk \phone\app\



if %1==camera adb push %SYSTEM_OUT_PATH%\system\app\Camera2\Camera2.apk \system\app\Camera2
if %1==camera adb push %SYSTEM_OUT_PATH%\system\app\Bluetooth\Bluetooth.apk \system\app\Bluetooth
if %1==camera adb push %SYSTEM_OUT_PATH%\system\priv-app\MediaProvider\MediaProvider.apk \system\priv-app\MediaProvider
if %1==camera adb push %SYSTEM_OUT_PATH%\system\priv-app\MediaProvider\MediaProvider.apk \system\priv-app\MediaProvider
if %1==frameworkAndService ( 
	   adb push %SYSTEM_OUT_PATH%\system\framework\framework.jar system/framework
	   adb push %SYSTEM_OUT_PATH%\system\framework\ext.jar /system/framework
	   adb push %SYSTEM_OUT_PATH%\system\framework\services.jar /system/framework
)

if %1==framework ( 
	   adb push %SYSTEM_OUT_PATH%\system\framework\framework.jar system/framework
	   adb push %SYSTEM_OUT_PATH%\system\framework\services.jar /system/framework
)
if %1==services ( 
	   adb push %SYSTEM_OUT_PATH%\system\framework\services.jar /system/framework
)
if %1==frameworkRes ( 
	adb push %SYSTEM_SOURCE_PATH%\system\framework\framework-res.apk /system/framework
)
if %1==frameworkPolicy ( 
	adb push %SYSTEM_SOURCE_PATH%\system\framework\android.policy.jar /system/framework
)	
if %1==wifiService ( 
	adb push %SYSTEM_SOURCE_PATH%\system\framework\wifi-service.jar /system/framework
)	

if %1==libmedia adb push %SYSTEM_SOURCE_PATH%\system\lib\libmedia.so /system/lib	
if %1==libmedia_jni adb push %SYSTEM_SOURCE_PATH%\system\lib\libmedia_jni.so /system/lib	
if %1==libstagefright adb push %SYSTEM_SOURCE_PATH%\system\lib\libstagefright.so /system/lib	
if %1==libisp_isi_drv_OV2680 adb push %SYSTEM_SOURCE_PATH%\system\lib\\hw\libisp_isi_drv_OV2680.so /system/lib/hw
if %1==libCameraService adb push %SYSTEM_SOURCE_PATH%\system\lib\libcameraservice.so /system/lib
if %1==rk30board adb push %SYSTEM_SOURCE_PATH%\system\lib\\hw\camera.rk30board.so /system/lib/hw

	

pause>nul

@echo on
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

::::set Phone path 
if "%2"=="" set PHONE_PATH=%YEALINK_PATH%
if "%2"=="t58" set PHONE_PATH=%YEALINK_PATH%
if "%2"=="cp960" set PHONE_PATH=%CP960_PATH%
::
if "%1"=="phone"     set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=Phone   && set PATH=%PHONE_PATH%
if "%1"=="cpphone"   set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=CPPhone   &&   set PATH=%YEALINK_PATH%
if "%1"=="logic1"   set APP_TYPE=TYPE_PHONE_APP   &&  set APP_NAME=LogicService&&    set PATH=%YEALINK_PATH%
::
if %APP_TYPE%==TYPE_PHONE_APP echo appName:%APP_NAME%
:: echo appPath:%PATH%
:: set PATH_FULL=%PATH%\%APP_NAME%\bin\%APP_NAME%-release.apk
:: if exist PATH_FULL  ren PATH_FULL %APP_NAME%.apk
:: adb push %PATH%\%APP_NAME%\bin\%APP_NAME%.apk /phone/app

::
::
::echo %SYSTEM_OUT_PATH%
::echo %PATH%

echo end...

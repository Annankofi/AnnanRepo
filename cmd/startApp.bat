@Echo On
color 0a
Title Push
cls
call timeData.bat

if %1==setting start adb shell am start -n com.android.settings/com.android.settings.Settings
if %1==yealinkSetting adb shell am start -n com.yealink.setting/com.yealink.setting.SettingActivity
if %1==fileManager start adb shell am start -n com.yealink.filemanager/com.yealink.filemanager.FileManagerActivity
if %1==usermode  adb shell am start -n com.yealink.setting/com.yealink.setting.usermode.UserModeActivity
if %1==usbstorage   adb shell am start -n com.android.systemui/com.android.systemui.usb.UsbStorageActivity
if %1==developmentSettings adb shell setprop debug.layout true && adb shell am start com.android.settings/.DevelopmentSettings

#adb shell am start -n com.yealink.testmode/com.yealink.MainActivity


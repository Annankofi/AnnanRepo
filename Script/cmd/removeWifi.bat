@Echo Off
color 0a
adb shell rm /data/misc/wifi/wpa_supplicant.conf
adb shell rm /data/data/com.yealink.android.logicservice/shared_prefs/WifiConfigSync.xml
 pause>nul
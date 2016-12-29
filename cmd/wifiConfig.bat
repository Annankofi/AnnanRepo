@Echo Off
color 0a
adb shell cat /data/misc/wifi/wpa_supplicant.conf
adb shell cat /data/data/com.yealink.android.logicservice/shared_prefs/WifiConfigSync.xml
 pause>nul
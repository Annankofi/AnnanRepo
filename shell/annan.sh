#usage:
# . annan.sh start setting
# . annan.sh push mediaProvider
# Note: \\ instead of \

#if [ $SUPPORT_RENAME == 1 ] 注意不要if[和 [$中间均要有空格
#then
#	echo hello
#else
#	echo helloworld
#fi


#adb shell debuggerd seoff
#adb root
#adb shell remount
#adb shell mount -o remount,rw //phone
#adb shell mount -o remount,rw //system
#sleep 1s

########################################################################################
case $1 in                                                                            ##
	start | Start)                                                                    ##
		startApk $2;                                                                  ##
		;;                                                                            ##
	push)                                                                             ##
		pushApk $2 $3;                                                                ##
		;;                                                                            ##
	monkey | Monkey)                                                                  ##
		monkeyTest $2                                                                 ## 
		;;                                                                            ##
	set | Set)                                                                        ##
		setProp $2                                                                    ##
		;;                                                                            ##
	rm | remove)                                                                      ##
		removeApk $2                                                                  ##
		;;                                                                            ##
	login)                                                                            ##
		login $2                                                                      ##
		;;                                                                            ##
	logcat)                                                                           ##
		logcat $2                                                                     ##
		;;                                                                            ##
	reboot)                                                                           ##
		reboot                                                                        ##
		;;                                                                            ##
	other)                                                                            ##
		other                                                                         ##
		;;  	                                                                      ##
	*)                                                                                ##
    echo "Ignorant"                                                                   ##
    ;;                                                                                ##
esac                                                                                  ##
########################################################################################


startApk(){
	echo "start $1"
	case $1 in
	ylSetting | ylsetting)
		adb shell am start -n com.yealink.setting/com.yealink.setting.SettingActivity
		;;
	recorder)
		adb shell am start -n com.yealink.recorder/com.yealink.recorder.RecorderMainActivity
		;;
	setting | settings | Setting)
		adb shell am start -n com.android.settings/com.android.settings.Settings
		;;
	filemanager | fileManager)
		adb shell am start -n com.yealink.filemanager/com.yealink.filemanager.FileManagerActivity
		;;
	usermode | userMode)
	   adb shell am start -n com.yealink.setting/com.yealink.setting.usermode.UserModeActivity
		;;	
	usbstorage | usbStorage)
	   adb shell am start -n com.android.systemui/com.android.systemui.usb.UsbStorageActivity
		;;		
	*)
		echo "No found matched arg2:$1"  
		echo "    ylSetting       com.yealink.setting.SettingActivity"
		echo "    recorder        com.yealink.recorder.RecorderMainActivity"
		echo "    setting         com.android.settings.Settings"
		echo "    filemanager     com.yealink.filemanager.FileManagerActivity"
		echo "    userMode        com.yealink.setting.usermode.UserModeActivity"
		echo "    usbStorage      com.android.systemui.usb.UsbStorageActivity"
		
		
		;;
esac
}
########################################################################################
pushApk(){
	SYSTEM_SOURCE_PATH=Z:\\T58\\out\\target\\product\\rk312x
	#LOCAL_SOURCE_PATH=D:\\Tools\\AndroidTools\\WorkSpaceSvn\\
	#SUPPORT_RENAME=0
	LOCAL_SOURCE_PATH=D:\\Tools\\AndroidTools\\ASInstalled\\Projects\\Yealink
	SUPPORT_RENAME=1
	
	echo "push $1"
	case $1 in
	###############
	#  phone/app  #
	###############
	systemUI)
		adb push $LOCAL_SOURCE_PATH\\SystemUI\\bin\\SystemUI.apk "phone/app"
		;;
	recorder)
		renameApk YLRecorder
		adb push $LOCAL_SOURCE_PATH\\YLRecorder\\bin\\YLRecorder.apk "phone/app"
		;;
	fileManager)
		renameApk YLFileManager
		adb push $LOCAL_SOURCE_PATH\\YLRecorder\\bin\\YLFileManager.apk "phone/app"
		;;
	testMode)
		renameApk TestMode
		adb push $LOCAL_SOURCE_PATH\\TestMode\\bin\\TestMode.apk "phone/app"
		;;
	logicService | logicservice)
		renameApk LogicService
		adb push $LOCAL_SOURCE_PATH\\LogicService\\bin\\LogicService.apk "phone/app"
		#adb push $LOCAL_SOURCE_PATH\\LogicService\\libs\\armeabi\\liblogic-port.so "phone/lib"
		;;
	##############
	# sytem app  #
	##############
	mediaProvider)
	   adb push $SYSTEM_SOURCE_PATH\\system\\priv-app\\MediaProvider\\MediaProvider.apk "system/priv-app/MediaProvider"
		;; 
	bluetooth)
	   adb push $SYSTEM_SOURCE_PATH\\system\\app\\Bluetooth\\Bluetooth.apk "system/app/Bluetooth"
		;; 
	camera | camera2)
	   adb push $SYSTEM_SOURCE_PATH\\system\\app\\Camera2\\Camera2.apk "system/app/Camera2"
		;;	

	##############
	#  framwork  #
	##############
	frameworkAndService)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\framework.jar "system/framework"
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\ext.jar "system/framework"
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\services.jar "system/framework"
		;;
	framework)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\framework.jar "system/framework"
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\ext.jar "system/framework"
		;;
	services)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\services.jar "system/framework"
		;;
	frameworkRes | frameworkres)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\framework-res.apk "system/framework"
		;;
	frameworkPolicy | policy)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\android.policy.jar "system/framework"
		;;	
	bluetoothPbap)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\android.bluetooth.client.pbap.jar "system/framework"
		;;	
		
	wifi-service)
	   adb push $SYSTEM_SOURCE_PATH\\system\\framework\\wifi-service.jar "system/framework"
		;;
	##############
	#     lib    #
	##############
	libmedia | libmedia.so)
	   adb push $SYSTEM_SOURCE_PATH\\system\\lib\\libmedia.so "system/lib"
		;;	
	libmedia_jni | libmedia_jni.so)
	   adb push $SYSTEM_SOURCE_PATH\\system\\lib\\libmedia_jni.so "system/lib"
		;;	
	libstagefright | libstagefright.so)
	   adb push $SYSTEM_SOURCE_PATH\\system\\lib\\libstagefright.so "system/lib"
	    ;;	
		
	libisp | libisp_isi_drv_OV2680)
	   adb push $SYSTEM_SOURCE_PATH\\system\\lib\\hw\\libisp_isi_drv_OV2680.so "system/lib/hw"
	   ;;
	libCameraService | libcameraservice)
	   adb push $SYSTEM_SOURCE_PATH\\system\\lib\\libcameraservice.so "system/lib"
		;;
	rk30board | camera.rk30board.so)
	   adb push $SYSTEM_SOURCE_PATH\\system\\lib\\hw\\camera.rk30board.so "system/lib/hw"
		;;		   

		
	##############
	#   other    #
	##############
	*)
		echo "No found matched arg2:$1" 
		echo "    systemUI              SystemUI.apk"
		echo "    recorder              YLRecorder.apk"
		echo "    fileManager           YLFileManager.apk"
		echo "    testMode              TestMode.apk"
		echo "    logicService          LogicService.apk"
		echo "    frameworkAndService   framework.jar ext.jar services.jar"
		echo "    framework             framework.jar ext.jar"
		echo "    services              services.jar"
		echo "    frameworkRes          framework-res.apk"
		echo "    frameworkPolicy       android.policy.jar.apk"
		echo "    bluetoothPbap         android.bluetooth.client.pbap.jar"
		echo "    libmedia              libmedia.so"
		echo "    libmedia_jni          libmedia_jni.so"
		echo "    libisp                libisp_isi_drv_OV2680.so"
		echo "    libcameraservice      libcameraservice.so"
		echo "    rk30board             camera.rk30board.so"
		
		;;
	esac
	
	case $2 in
		r | reboot)
		echo "push done and reboot"
		adb shell reboot
		;;	
	*)
		echo  "push done"  
		;;
	esac	
}



renameApk(){
if [ $SUPPORT_RENAME == 1 ]
then
	source="$LOCAL_SOURCE_PATH\\$1\\bin\\$1-release.apk"
	target="$LOCAL_SOURCE_PATH\\$1\\bin\\$1.apk"
	echo rename $source to $target
	mv $source $target
fi
}
 ########################################################################################
login(){
	echo "login $1"
	case $1 in
	zhengjy)
		ssh -l zhengjy 10.3.1.90
		190514^yealink
		;;
	*)
		ssh -l zhuan appws.yealink.com
		yealink@2346
		;;
	esac
	echo "zhengjy 10.3.1.90 190514^yealink"
	echo "zhuan 10.3.1.100 yealink@2346"
}
########################################################################################
logcat(){
	echo "logcat $1"
	case $1 in
	*)
		adb logcat -v time
		;;
	esac
}

########################################################################################
removeApk(){
	echo "remove $1"
	case $1 in
	phone)
		#adb shell && rm /phone/app/Phone.apk
		#adb shell reboot
		;;
	*)
		echo  "No found matched arg2:$1"  
		;;
	esac
}

########################################################################################
setProp(){
	echo "set $1"
	case $1 in
	layouton | layoutOn)
		adb shell setprop debug.layout true
		adb shell am start com.android.settings/.DevelopmentSettings
		adb shell input keyevent 3
		;;
	layoutoff | layoutOff)
		adb shell setprop debug.layout false
		adb shell am start com.android.settings/.DevelopmentSettings
		adb shell input keyevent 3
		;;	
	mac | MAC)
		#generate a radom from 10-99  echo $(($RANDOM%80+10))
		#adb shell  && /boot/bin/userenv -d  /dev/block/mmcblk0p2 -s ethaddr -v 00:15:65:11:22:88
		;;	
	*)
		echo  "No found matched arg2:$1"  
		;;
	esac

}
########################################################################################
monkeyTest(){
	case $1 in
	all | All)
		adb shell monkey  --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
		;;
	recorder | Recorder)
		adb shell monkey  -p com.yealink.recorder --ignore-crashes --ignore-timeouts --bugreport --monitor-native-crashes -v -v -v 1000000000 --throttle 1000
		;;
	*)
		echo  "No found matched arg2:$1"  
		;;
	esac

}
########################################################################################
other(){
	echo boot/bin/userenv -s testmode -v1
}

reboot(){
adb reboot
}



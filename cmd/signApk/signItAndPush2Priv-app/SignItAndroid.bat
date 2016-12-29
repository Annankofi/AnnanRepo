java -jar signapk.jar platform.x509.pem platform.pk8 Annan.apk system/priv-app/AnnanSigned/AnnanSigned.apk

adb remount
adb push system /system
adb push data /data
adb push sbin /sbin
adb reboot
pause

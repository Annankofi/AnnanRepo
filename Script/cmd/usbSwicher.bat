@Echo Off
::adb wait-for-devices
:: ./boot/script/force_otg_mode.sh device
echo  /boot/script/force_otg_mode.sh device
echo  /boot/script/force_otg_mode.sh host
adb shell  /boot/script/force_otg_mode.sh %1
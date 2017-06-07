#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	' crt.Screen.Send "emtoo" & chr(13)
	' crt.Screen.WaitForString "Password: "
	' crt.Screen.Send "omped51" & chr(13)
	' crt.Screen.WaitForString "# "
	crt.Screen.Send "debuggerd seoff" & chr(13)
	crt.Screen.Send "mount -o rw,remount /phone" & chr(13)
	crt.Screen.Send "mount -o rw,remount /system" & chr(13)
	crt.Screen.Send "setprop sys.usb.config mass_storage,adb" & chr(13)
	crt.Screen.Send "setprop service.adb.tcp.port 5555; stop adbd; start adbd;" & chr(13)
	crt.Screen.Send "boot/script/force_otg_mode.sh device" & chr(13)
End Sub

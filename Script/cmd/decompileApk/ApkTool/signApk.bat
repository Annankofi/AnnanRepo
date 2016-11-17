::key.store=debug.keystore
::key.alias=androiddebugkey
::key.store.password=android
::key.alias.password=android
set apkName=hello
jarsigner -verbose -keystore debug.keystore -signedjar %apkName%Signed.apk %apkName%.apk androiddebugkey
pause
::key.store=debug.keystore
::key.alias=androiddebugkey
::key.store.password=android
::key.alias.password=android
::set apkName=hello
::jarsigner -sigalg MD5withRSA -digestalg SHA1 -verbose -keystore annankey   -storepass annankeypass -signedjar  helloSigned.apk hello.apk annankey  
keytool -genkey -v -keystore annankey  -alias annankey   -keyalg RSA -validity 20000 -storepass annankeypass    -dname CN=com.example.test,OU=Lenovo,O=Lenovo,L=xiamen,ST=FuJian,C=CN
set apkNameFull=%1%
set apkName=%apkNameFull:~0,-4%
echo %apkName% 
jarsigner -sigalg MD5withRSA -digestalg SHA1 -verbose -keystore annankey   -storepass annankeypass -signedjar  %apkName%Signed.apk %apkName%.apk annankey 
 
pause
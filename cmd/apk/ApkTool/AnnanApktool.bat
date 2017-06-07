::open cmd in current dir and run as annanApktool d -f hello.apk
::after decoder you can recompile and run as annanApktool b hello
@echo off 
java -jar "%~dp0\apktool_2.2.0.jar" %1 %2 %3 %4 %5 %6 %7 %8 %9

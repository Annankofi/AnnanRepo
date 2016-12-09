::made by 523066680@cn-dos.net   2008-12-25
::blog: hi.baidu.com/523066680
::Ê×·¢ÓÚ:
@echo off
adb shell getprop ro.product.name >product
set /p productName=<product
echo %productName%
pause >null
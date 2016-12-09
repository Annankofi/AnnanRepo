@Echo Off
call timeData
if "%1"=="" set delayedTime=1
if not "%1"=="" set /a delayedTime=%1-1
if "%1"=="0" set delayedTime=1 

::@ping 127.0.0.1 -n 5 >nul you will delayed 4s
@ping 127.0.0.1 -n %delayedTime% >nul
call timeData
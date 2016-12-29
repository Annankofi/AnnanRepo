@echo off
set mystr=helloaorld
set str=%~1
::½«"ºÅÌæ»»³É¿Õ¸ñ
set "str=%str:"= %"
set /a num=0
:next
if not "%str%"=="" (
set /a num+=1
set "str=%str:~1%"
goto next
)
echo %~1.length=%num%

pause
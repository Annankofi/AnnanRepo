@echo off
set WIDTH=50 & set HEIGHT=40
mode con cols=%WIDTH% lines=%HEIGHT%

call:centerStr "HelloWorld"
pause >nul
goto end

:lengthStr
set str=%~1
::将"号替换成空格
set "str=%str:"= %"
set /a strLen=0
:next
if not "%str%"=="" (
set /a strLen+=1
set "str=%str:~1%"
goto next
)
echo %~1.length=!strLen!
goto:eof

:centerStr
call:lengthStr %1%
set /a beforeSpace=(%WIDTH%-%strLen%)/2-1
echo %beforeSpace%
::打印空格且不换行随便一个字符加退格键加空格
for /l %%i in (0,1,%beforeSpace%) do set /p="a "<nul
call colorString %~1
goto:eof
:end

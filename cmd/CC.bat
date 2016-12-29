@echo off
::将爱情两字 设置为0A颜色
call :colorLove "曾经，有一份真挚的" "爱情" "放在我的面前。"  0a
pause>nul
goto end

:colorLove
set "objStr=%~2"
::%1和%~1前者直接为参数1 后者会把参数的双引号去掉
::输出参数1也就是 曾经，有一份真挚的 并且不换行
set /p=%~1<nul
::将退格符和 参数3(放在我的面前) 写入到以参数2(爱情)为名字的文件中
set /p="%~3"<nul>%objStr%
::参数4为颜色 .匹配所有字符 *大于等于0次 文件名为爱情 后面加？可将查找到的文件名字也打印出来 
findstr /a:%~4 .* "%objStr%?"
::删除刚创建的 爱情名字为文件的临时文件
del /q "%objStr%"
goto :eof
:end
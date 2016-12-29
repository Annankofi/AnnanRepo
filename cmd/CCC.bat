@echo off
::程序开始前要先调用putcstart来创建一次颜色文件
call:putcstart


::调用过程就是[putcchar 文字 颜色]。文字不能有\/:*?"<>|这些符号，因为是通过文件名来产生颜色的；而颜色则跟color命令中的一样。
call:putcchar "This is a test" 2b
call:putcchar " !" 2e
echo.
echo.


::由于受到文件的限制作用，空格符也会有所限制，比如字符串以空格开始、中间含有空格、以空格结尾这三种方式运行的结果都不同。
echo 理想输出[___空格在前面]
call:putchar "实际输出["
call:putcchar "   空格在前面" 5b
echo ]
echo.
echo 理想输出[空格在___中间]
call:putchar "实际输出["
call:putcchar "空格在   中间" 5b
echo ]
echo.
echo 理想输出[空格在后面___]
call:putchar "实际输出["
call:putcchar "空格在后面   " 5b
echo ]
echo.

call:putcchar "  演" 09
call:putcchar "示" 02
call:putcchar "结" 03
call:putcchar "束" 04
call:putcchar " Power" 05
call:putcchar " By" 06
call:putcchar " Kisiboo" 0E

pause>nul
goto :eof



::下面是过程部分（可以直接复制走）

:putcstart
set crp=c:\
set crf=crfile.tmp
set /p=   <nul>%crp%%crf%
goto :eof

:putcchar
ren %crp%%crf% %1
pushd .&C:&cd\
findstr /a:%2 . %1?
ren %crp%%1 %crf%
popd
goto :eof

:putchar
set /p=%1<nul
goto :eof

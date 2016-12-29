@echo off
chcp 437
setlocal EnableDelayedExpansion
set total=0&set right=0&set accuracy=0&set usetime=0
set chartable=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
echo=>C:\%0.tmp
call:putcstart
:main
	cls
	call :showType
	call :displaykeyboard
	call :getType
goto main

:showType
set /a code=(%random%)%%26+1
set charout=0;
for /f "tokens=%code%" %%o in ('echo %chartable%') do set charout=%%o
if NOT %total%==0 set /a average=%usetime%/%total%
echo                   Right: %right%       Total: %total%       Accuracy: %accuracy% %%
echo=
echo                                                 Speed: %average% T/ms
echo=
echo=
echo=
echo=
echo=
echo                                 Please type: %charout%
echo=
echo=
echo=
echo=
echo=
echo=
echo=
goto :eof
	
:displaykeyboard
set kbline1=QWERTYUIOP
set kbline2=ASDFGHJKL
set kbline3=ZXCVBNM
set /p=	                  縛컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴옜 <nul&echo.
set lineop=&set lineed=&set linemd=&set findit=0
for /l %%o in (1,1,10) do set chead=!kbline1:~0,1!&set kbline1=!kbline1:~1!&call :Och
	set /p=	                  납%lineop% <nul
	if !findit!==2 (call:putcchar "[%charout%]" 4f)
	if not !findit!==2 (call:putchar "")
	set /p=,%lineed% 납 <nul&echo.
set /p=	                  납                                         납 <nul&echo.
set lineop=&set lineed=&set linemd=&set findit=0
for /l %%o in (1,1,9) do set chead=!kbline2:~0,1!&set kbline2=!kbline2:~1!&call :Och
	set /p=	                  납  %lineop% <nul
	if !findit!==2 (call:putcchar "[%charout%]" 4f)
	if not !findit!==2 (call:putchar "")
	set /p=,%lineed%   납 <nul&echo.
set /p=	                  납                                         납 <nul&echo.
set lineop=&set lineed=&set linemd=&set findit=0
for /l %%o in (1,1,7) do set chead=!kbline3:~0,1!&set kbline3=!kbline3:~1!&call :Och
	set /p=	                  납    %lineop% <nul
	if !findit!==2 (call:putcchar "[%charout%]" 4f)
	if not !findit!==2 (call:putchar "")
	set /p=,%lineed%  ,   .  납 <nul&echo.
echo                   응컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴廟 
goto :eof

:Och
if !chead!==%charout% set findit=1
if !findit!==0 set lineop=%lineop%  !chead! 
if !findit!==2 set lineed=%lineed%  !chead! 
if !findit!==1 set linemd=%charout%&set findit=2
goto :eof

:getType
set /a clkstart=%time:~0,2%*3600*1000+(%time:~3,1%*10+%time:~4,1%)*60*1000+(%time:~6,1%*10+%time:~7,1%)*1000+%time:~9,1%*100+%time:~10,1%*10
echo=
choice /C ABCDEFGHIJKLMNOPQRSTUVWXYZ1 /N
set /a clkend=%time:~0,2%*3600*1000+(%time:~3,1%*10+%time:~4,1%)*60*1000+(%time:~6,1%*10+%time:~7,1%)*1000+%time:~9,1%*100+%time:~10,1%*10
set /a total+=1
if %ERRORLEVEL%==%code% set /a right+=1
set /a accuracy=%right%*100/%total%
set /a usetime=(%clkend%-%clkstart%)+%usetime%
goto :eof

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

:end
pause
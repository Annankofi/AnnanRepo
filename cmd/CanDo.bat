@echo off & setlocal enabledelayedexpansion & mode con:cols=94 lines=14 & title µãÕóÌØÐ§ By Canyuexiaolang
set "balck=50 5 21 7 13 1 5 1 20 1 6 1 11 1 27 1 7 1 10 1 27 1 7 1 10 1 27 1 7 1 10 1 10 3 3 1 1 2 7 1 7 1 3 3 4 1 9 1 3 1 2 2 2 1 6 1 7 1 2 1 3 1 3 1 8 1 4 1 2 1 3 1 6 1 7 1 2 1 3 1 3 1 8 1 4 1 2 1 3 1 6 1 7 1 2 1 3 1 4 1 5 1 1 1 3 2 2 1 3 1 6 1 6 1 3 1 3 1 5 5 3 3 2 1 1 1 3 1 6 7 5 3 50" & set "z=1"
for %%i in (%balck%) do (set /a z+=1 & set /a int=z%%2
if "!int!"=="0" (for /l %%j in (1 1 %%i) do set /p=¡ö<nul) else (for /l %%j in (1 1 %%i) do set /p=¡õ<nul))
pause>nul
@echo off
type E:\AnnanRepo\Script\cmd\hello.txt
echo ----------------------------------
for /f "eol=2 delims=" %%i in (E:\AnnanRepo\Script\cmd\hello.txt) do echo %%i %%j
echo +++++++++++++
for /f "skip=4" %%i in (E:\AnnanRepo\Script\cmd\hello.txt) do echo %%i

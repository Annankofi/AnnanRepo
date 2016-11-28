@echo off
echo  >%~1
findstr /a:0A .* %~1?
del %~1

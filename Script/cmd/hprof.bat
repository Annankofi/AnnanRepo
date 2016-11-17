@Echo On
set inputFile=%1%
::echo %inputFile%
::remove last 6 char int replace with .out.prof
set outputFile=%inputFile:~0,-6%.out.hprof
::echo %outputFile%
hprof-conv %inputFile% %outputFile%


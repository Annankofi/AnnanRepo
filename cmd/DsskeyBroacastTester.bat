@Echo Off
adb shell debuggerd seoff

adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860800  --es "label"  "0" --ei "iconType"  2 --es "iconPath" "/sdcard/003.png" --ei "color" -1 --ei "flashMode" 0 --ei "backgroundType" 0
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860801  --es "label"  "1" --ei "iconType"  3 --es "iconPath" "path" --ei "color" 0 --ei "flashMode" 0 --ei "backgroundType" 0
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860802  --es "label"  "2" --ei "iconType"  4 --es "iconPath" "path" --ei "color" 1 --ei "flashMode" 1 --ei "backgroundType" 1
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860803  --es "label"  "3" --ei "iconType"  5 --es "iconPath" "path" --ei "color" 2 --ei "flashMode" 2 --ei "backgroundType" 2
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860804  --es "label"  "4" --ei "iconType"  6 --es "iconPath" "path" --ei "color" 3 --ei "flashMode" 3 --ei "backgroundType" 3
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860805  --es "label"  "5" --ei "iconType"  12 --es "iconPath" "path" --ei "color" 4 --ei "flashMode" 4 --ei "backgroundType" 0
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860806  --es "label"  "6" --ei "iconType"  13 --es "iconPath" "path" --ei "color" 5 --ei "flashMode" 4 --ei "backgroundType" 1
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860807  --es "label"  "7" --ei "iconType"  14 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 2
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860808  --es "label"  "8" --ei "iconType"  15 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 3
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860809  --es "label"  "9" --ei "iconType"  20 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860810  --es "label"  "0" --ei "iconType"  21 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 1
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860811  --es "label"  "1" --ei "iconType"  22 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 2
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860812  --es "label"  "2" --ei "iconType"  23 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 3
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860813  --es "label"  "3" --ei "iconType"  24 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860814  --es "label"  "4" --ei "iconType"  25 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 1
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860815  --es "label"  "5" --ei "iconType"  26 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 2
call:delay 1                                                                                                                                                                                  
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860816  --es "label"  "6" --ei "iconType"  27 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 3
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860817  --es "label"  "7" --ei "iconType"  28 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860818  --es "label"  "8" --ei "iconType"  29 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
call:delay 1
adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860819  --es "label"  "9" --ei "iconType"  30 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0


:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860800  --es "label"  "0" --ei "iconType"  31 --es "iconPath" "/sdcard/003.png" --ei "color" -1 --ei "flashMode" 0 --ei "backgroundType" 0
:: call:delay 1
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860801  --es "label"  "1" --ei "iconType"  32 --es "iconPath" "path" --ei "color" 0 --ei "flashMode" 0 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860802  --es "label"  "2" --ei "iconType"  33 --es "iconPath" "path" --ei "color" 1 --ei "flashMode" 1 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860803  --es "label"  "3" --ei "iconType"  34 --es "iconPath" "path" --ei "color" 2 --ei "flashMode" 2 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860804  --es "label"  "4" --ei "iconType"  35 --es "iconPath" "path" --ei "color" 3 --ei "flashMode" 3 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860805  --es "label"  "5" --ei "iconType"  36 --es "iconPath" "path" --ei "color" 4 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860806  --es "label"  "6" --ei "iconType"  37 --es "iconPath" "path" --ei "color" 5 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860807  --es "label"  "7" --ei "iconType"  38 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860808  --es "label"  "8" --ei "iconType"  39 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860809  --es "label"  "9" --ei "iconType"  40 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860810  --es "label"  "0" --ei "iconType"  41 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860811  --es "label"  "1" --ei "iconType"  42 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860812  --es "label"  "2" --ei "iconType"  43 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860813  --es "label"  "3" --ei "iconType"  44 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860814  --es "label"  "4" --ei "iconType"  45 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860815  --es "label"  "5" --ei "iconType"  46 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860816  --es "label"  "6" --ei "iconType"  48 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860817  --es "label"  "7" --ei "iconType"  49 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860818  --es "label"  "8" --ei "iconType"  50 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860819  --es "label"  "9" --ei "iconType"  51 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: 
:: call:delay 1
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860800  --es "label"  "0" --ei "iconType"  52 --es "iconPath" "/sdcard/003.png" --ei "color" -1 --ei "flashMode" 0 --ei "backgroundType" 0
:: call:delay 1
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860801  --es "label"  "1" --ei "iconType"  53 --es "iconPath" "path" --ei "color" 0 --ei "flashMode" 0 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860802  --es "label"  "2" --ei "iconType"  54 --es "iconPath" "path" --ei "color" 1 --ei "flashMode" 1 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860803  --es "label"  "3" --ei "iconType"  55 --es "iconPath" "path" --ei "color" 2 --ei "flashMode" 2 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860804  --es "label"  "4" --ei "iconType"  57 --es "iconPath" "path" --ei "color" 3 --ei "flashMode" 3 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860805  --es "label"  "5" --ei "iconType"  58 --es "iconPath" "path" --ei "color" 4 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860806  --es "label"  "6" --ei "iconType"  59 --es "iconPath" "path" --ei "color" 5 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860807  --es "label"  "7" --ei "iconType"  60 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860808  --es "label"  "8" --ei "iconType"  61 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860809  --es "label"  "9" --ei "iconType"  62 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860810  --es "label"  "0" --ei "iconType"  64 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860811  --es "label"  "1" --ei "iconType"  65 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860812  --es "label"  "2" --ei "iconType"  66 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860813  --es "label"  "3" --ei "iconType"  67 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860814  --es "label"  "4" --ei "iconType"  68 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860815  --es "label"  "5" --ei "iconType"  75 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860816  --es "label"  "6" --ei "iconType"  82 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860817  --es "label"  "7" --ei "iconType"  86 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860818  --es "label"  "8" --ei "iconType"  93 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: call:delay 1                                                                                                                                                                                  0
:: adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860819  --es "label"  "9" --ei "iconType"  94 --es "iconPath" "path" --ei "color" 6 --ei "flashMode" 4 --ei "backgroundType" 0
:: 
:: call:delay 1 
::adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860800  --es "label"  "0" --ei "iconType"  95 --es "iconPath" "/sdcard/003.png" --ei "color" -1 --ei "flashMode" 0 --ei "backgroundType" 0
::call:delay 1
::adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860801  --es "label"  "1" --ei "iconType"  96 --es "iconPath" "path" --ei "color" 0 --ei "flashMode" 0 --ei "backgroundType" 0
::call:delay 1
::adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860802  --es "label"  "2" --ei "iconType"  98 --es "iconPath" "path" --ei "color" 1 --ei "flashMode" 1 --ei "backgroundType" 1
::call:delay 1
::adb shell am broadcast -a "debug.action.api.dsskey" --ei "id" 838860803  --es "label"  "3" --ei "iconType"  100 --es "iconPath" "/sdcard/003.png" --ei "color" 2 --ei "flashMode" 2 --ei "backgroundType" 2



:delay
if "%1"=="" set delayedTime=1
if not "%1"=="" set /a delayedTime=%1-1
if "%1"=="0" set delayedTime=1 

::@ping 127.0.0.1 -n 5 >nul you will delayed 4s
@ping 127.0.0.1 -n %delayedTime% >nul 
goto:eof
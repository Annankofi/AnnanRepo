::do not set the same name with system such as  time
:: use time2 instead
@echo Off
set TYPE_DATA=1
set TYPE_DATA_FORMAT=2
set TYPE_TIME=3
set TYPE_TIME_FORMAT=4
set TYPE_DATA_TIME=5

set curDate=%date%
::2016/11/06 星期三
set curTime=%time%
::19:58:56:88
set curDateFormat=%date:~0,4%%date:~5,2%%date:~8,2%
::20160819
set curTimeFormat=%time:~0,2%%time:~3,2%%time:~6,2%
::20160819120532
set curDataAndTime=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
::20160819120532

::echo %date%
::2016/11/06 星期三
::echo %time%
::19:58:56:88

::格式错误  if 和else的格式要求非常严格
::if %1==%TYPE_DATA%  ( echo Time:%curDate% ) 
::else (echo Time:%curDataAndTime%)

::正确
::if %1==%TYPE_DATA%  ( echo Time:%curDate%
::)else (echo Time:%curDataAndTime%)

::正确
::if %1==%TYPE_DATA%  (echo Time:%curDate%
::echo hello
::)else (echo Time:%curDataAndTime%)

::正确
::if %1==%TYPE_DATA%  ( 
::echo Time:%curDate%
::echo hello
::)else (echo Time:%curDataAndTime%)

::正确
::if %1==%TYPE_TIME% (echo Time:%curTime%)
::if %1==%TYPE_DATA_TIME% (echo Time:%curDataAndTime%)

::if %1==%TYPE_DATA% (echo Time:%curDate%
::)else if %1==%TYPE_TIME% (echo Time:%curTime%
::) else if %1==%TYPE_TIME_FORMAT% (echo Time:%curDateFormat%
::)else if %1==%TYPE_TIME_FORMAT% (echo Time:%curTimeFormat%
::)else if %1==%TYPE_DATA_TIME% (echo Time:%curDataAndTime%
::)else if %1=="" echo Time:%curDate% 
::) else (echo Time:%curDate%
::)
::这里呆参数否则最后䘝else出错
::pause>nul

echo Time:%curTime%
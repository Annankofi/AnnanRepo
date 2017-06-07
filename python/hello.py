import pycollie

#打印pycollie的版本
print('pycollie version : ' + pycollie.version())

#加载Android的测试驱动
driver = pycollie.load('android-adb')

#打印Android测试驱动的版本
print('android-adb version : ' + driver.version())
if True:
	print ('Hello')
	print "Hello world"

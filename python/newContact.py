import pycollie
#set PYCOLLIE_DEVICES=--driver=android-adb 10.10.35.8 --driver-log-level=0
#打印pycollie的版本
#print('pycollie version : ' + pycollie.version())

#加载Android的测试驱动
driver = pycollie.load('android-adb')

#打印Android测试驱动的版本
#print('android-adb version : ' + driver.version())


class TestNewContact(pycollie.TestCase):
	def testNewContact(self):
	#获取一个设备
		dut=self.get_device()
		#按下Home键
		print('start...')
		dut.key('Home')
		if dut.item('tv_directory').exist():
			#self.assertTrue(dut.item('tv_directory').exist(),'Enter Directory')
			print('Find directory icon and touch it')
			dut.item('tv_directory').touch()
		else:
			print('No find directory icon')
		if dut.item('iv_contact_add').exist():
			dut.item('iv_contact_add').touch()
		if dut.item('et_name').exist():
			dut.item('et_name').touch()
			dut.text('Annan')
			dut.swipe(100, 300, 100, 200, duration=100)
		if dut.item('et_office').exist():
			dut.item('et_office').touch()
			print('touch et_office')
			dut.text('1234')
		if dut.item('right_butn').exist():
			print('touch right_butn')
			dut.item('right_butn').touch()
		else:
			print('No found right_butn')
			dut.key('Back')
			if(dut.item('button1').exist()):
				print('press back and touch button1')
				dut.item('button1').touch()
			else:
				dut.key('Back')
				print('press double back and touch button1')
				if(dut.item('button1').exist()):
					print('touch button1')
					dut.item('button1').touch()
				else:
					print('No found button1')
					
if __name__ == '__main__':
	pycollie.main()

    
import pycollie

#打印pycollie的版本
print('pycollie version : ' + pycollie.version())

#加载Android的测试驱动
driver = pycollie.load('android-adb')

#打印Android测试驱动的版本
print('android-adb version : ' + driver.version())


class TestCallAndHandup(pycollie.TestCase):
    def testCallAndHandup(self):
    #获取一个设备
        dut=self.get_device()
        #按下Home键
        dut.key('Home')
        #拨号，使用一个不存在的IP既可，目标是让DUT停留在呼出界面
        #注意T58的拨号键盘不支持文本输入，所以这里使用可以发送一系列按键的keys接口
        dut.keys('10.10.35.25')
        #等待进入Dial界面
        #dut.item('Send').wait(5000)
        #判断是否在Dail界面
        print('assert EndCall begin')
        self.assertTrue(dut.item('EndCall').exist(),'Enter Dial')
        print('assert EndCall end')
        #取消呼出
        dut.item('EndCall').touch()
        dut.item('EndCall').gone(5000)
        self.assertTrue(dut.item('Calling').exist(),'End Dial')
    if __name__ == '__main__':
        pycollie.main()

    
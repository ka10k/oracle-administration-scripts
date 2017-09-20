Run("i:\#remote\PuTTY 0.60\putty.exe telnet:192.168.51.13:23")
WinWaitActive("192.168.51.13 - PuTTY")
WinWait("192.168.51.13 - PuTTY")

Sleep(2000)
ControlSend("192.168.51.13 - PuTTY","","", "agafeev")

Sleep(2000)
ControlSend("192.168.51.13 - PuTTY","","", "{ENTER}")

Sleep(2000)
ControlSend("192.168.51.13 - PuTTY","","", "latar202")

Sleep(2000)
ControlSend("192.168.51.13 - PuTTY","","", "{ENTER}")

Sleep(2000)
ControlSend("192.168.51.13 - PuTTY","","", "Command")

;timeout /T 60
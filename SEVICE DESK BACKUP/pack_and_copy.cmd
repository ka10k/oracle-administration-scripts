net use z: /delete
net use z: \\10.68.234.57\E$ P@ssw0rd /user:Administrator
"C:\Program Files\WinRAR\rar.exe" a -ag[dd.mm.yyyy][hh.mm] -m5 -r -rr1 -y "Z:\SD\SD_Backup.rar" "D:\DUMP"
del /F/Q D:\DUMP\*.*
net use z: /delete
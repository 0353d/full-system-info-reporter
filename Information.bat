@echo off
Color 0a
:menu
Cls
Echo.
Echo.
Echo [1] gets netsh info
Echo [2] gets system info
Echo [3] gets tasklist info
Echo [4] gets account info
Echo [5] gets memory info
Set/p info= enter: 
If %info% == 1 goto 1
If %info% == 2 goto 2
If %info% == 3 goto 3
If %info% == 4 goto 4
If %info% == 5 goto 5
:1
Cls
Netsh show mode
Netsh show helper
Netsh show advfirewall show all profiles
Netsh show advfirewall show global
Netsh wlan show all
Pause
Goto menu

:2
Cls
systeminfo
net user
Pause
Goto menu

:3
Cls
tasklist
goto 3

:4
Cls
Echo.
Wmic useraccount list full
Pause
Goto menu

:5
Cls
Dir C:\ /s
Goto menu

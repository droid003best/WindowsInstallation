@echo off
mode con: cols=90 lines=6
color f0

title Setting Themepack...
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1kiWyzBkgeNzpGFp8lGH_-VDa6U2lSnWA', '%Temp%\theme.deskthemepack') }"
%Temp%\theme.deskthemepack
taskkill /F /IM systemsettings.exe
CLS

CLS
title Setting additional Features...
CLS
	REM 1 = This PC, 2 = Quick access
CLS
	REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f
CLS
	REM 0 = hide completely, 1 = show only icon, 2 = show long search box
CLS
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
CLS
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
CLS


title Activating Windows (Setting Activationserver)
	slmgr /skms kms8.msguides.com //b
CLS
title Activating Windows (Trying to activate...)

	slmgr /ato //b
CLS
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1BMpnD8r8lvCY-uRW8hdamiRM2d5WExiH', '%temp%\taskbar.reg') }"
%windir%\system32\reg.exe import %temp%\taskbar.reg
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1kiWyzBkgeNzpGFp8lGH_-VDa6U2lSnWA', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\5-Taskmanager.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1IxGK8HRjLZV1rI6Ze16UljICIQt-Qi1x', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\desktop.ini') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1VCmYMZz7jty6G8Mm5jZzN0aaW_8_IYT-', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\File Explorer.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=17kdqMmYjek91PnBgBfjdA3mfyODFNQ1G', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\FileZilla.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1RCtLQyw8z2XoaC4d-7jJfreVVNwS30ui', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Google Chrome.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1QJ1hBtuAnCI_CdtZsgArDd44md4pmwGw', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\WinRAR.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1na8TbvkvwMzPtxkiGXqj0pxponKEjzGw', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\notepad.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1GQ0yIKJ9BtRMxOv2RmKvq9Ep0AAiVapg', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\VLC media player.lnk') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1RCtLQyw8z2XoaC4d-7jJfreVVNwS30ui', 'C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Google Chrome.lnk') }"

exit
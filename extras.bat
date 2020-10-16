@echo off
mode con: cols=90 lines=6
color f0

title Setting Themepack...
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/theme.deskthemepack', '%Temp%\theme.deskthemepack') }"
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
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/TaskBar/Taskbar.reg', '%temp%\taskbar.reg') }"
%windir%\system32\reg.exe import %temp%\taskbar.reg

@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\chrome.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Program Files\Google\Chrome\Application\chrome.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\FileZilla.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Program Files\FileZilla FTP Client\FileZilla.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\VLC media player.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Program Files\VideoLAN\VLC\vlc.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\WinRAR.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Program Files\WinRAR\WinRAR.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "C:\Users\janis\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\File Explorer.exe" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "C:\Windows\Explorer.exe" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs



pause

exit

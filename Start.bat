@echo off

mode con: cols=80 lines=10
color f0

msiexec.exe /i https://just-install.github.io/stable/just-install.msi

title Setting Themepack...
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1kiWyzBkgeNzpGFp8lGH_-VDa6U2lSnWA', '%Temp%\theme.deskthemepack') }"
%Temp%\theme.deskthemepack
taskkill /F /IM systemsettings.exe
CLS
color 0f
mode con: cols=60 lines=15

powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1W-qvD3Se1OK5ykI8T8Pjl28g0FYg9ez-', '%Temp%\uninstall.exe') }"
title Deinstalling Cortana... (Step 1/4) []---
%Temp%\uninstall.exe /o /l
title Deinstalling Cortana... (Step 2/4) [][]--
powershell -command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
CLS
%Temp%\uninstall.exe /o /c Microsoft-Windows-Cortana /r
title Deinstalling Cortana... (Step 3/4) [][][]-
CLS
%Temp%\uninstall.exe /h /o /l
title Deinstalling Cortana... (Step 4/4) [][][][]
taskkill /F /IM systemsettings.exe

title Deinstalling Edge... (Step 1/4) []---
CLS
%Temp%\uninstall.exe /o /l
title Deinstalling Edge... (Step 2/4) [][]--
CLS
%Temp%\uninstall.exe /o /c Microsoft-Windows-Internet-Browser-Package /r
title Deinstalling Edge... (Step 3/4) [][][]-
CLS
%Temp%\uninstall.exe /h /o /l
title Deinstalling Edge... (Step 4/4) [][][][]


mode con: cols=80 lines=10
color f0
CLS
title Disable Windows Featues... (Step 1/12) []-----------
dism /Online /Disable-Feature /FeatureName:"Internet-Explorer-Optional-amd64" /NoRestart
CLS
title Disable Windows Featues... (Step 2/12) [][]----------
dism /Online /Disable-Feature /FeatureName:"MediaPlayback" /NoRestart
CLS
title Disable Windows Featues... (Step 3/12) [][][]---------
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-Features" /NoRestart
CLS
title Disable Windows Featues... (Step 4/12) [][][][]--------
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-LPDPrintService" /NoRestart
CLS
title Disable Windows Featues... (Step 5/12) [][][][][]-------
dism /Online /Disable-Feature /FeatureName:"Printing-Foundation-LPRPortMonitor" /NoRestart
CLS
title Disable Windows Featues... (Step 6/12) [][][][][][]------
dism /Online /Disable-Feature /FeatureName:"Printing-PrintToPDFServices-Features" /NoRestart
CLS
title Disable Windows Featues... (Step 7/12) [][][][][][][]-----
dism /Online /Disable-Feature /FeatureName:"Printing-XPSServices-Features" /NoRestart
CLS
title Disable Windows Featues... (Step 8/12) [][][][][][][][]----
dism /Online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /NoRestart
CLS
title Disable Windows Featues... (Step 9/12) [][][][][][][][][]---
dism /Online /Disable-Feature /FeatureName:"TelnetClient" /NoRestart
CLS
title Disable Windows Featues... (Step 10/12)[][][][][][][][][][]--
dism /Online /Disable-Feature /FeatureName:"TFTP" /NoRestart
CLS
title Disable Windows Featues... (Step 11/12)[][][][][][][][][][][]-
dism /Online /Disable-Feature /FeatureName:"TIFFIFilter" /NoRestart
CLS
title Disable Windows Featues... (Step 12/12)[][][][][][][][][][][][]
dism /Online /Disable-Feature /FeatureName:"WindowsMediaPlayer" /NoRestart
CLS



mode con: cols=90 lines=6
title Deinstalling Bloatware...  (Step 1/23) []----------------------
	PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 2/23) [][]---------------------
	PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 3/23) [][][]--------------------
	PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 4/23) [][][][]-------------------
	PowerShell -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 5/23) [][][][][]------------------
	PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 6/23) [][][][][][]-----------------
	PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 7/23) [][][][][][][]----------------
	PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 8/23) [][][][][][][][]---------------
	PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 9/23) [][][][][][][][][]--------------
	PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 10/23)[][][][][][][][][][]-------------
	PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 11/23)[][][][][][][][][][][]------------
	PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 12/23)[][][][][][][][][][][][]-----------
	PowerShell -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 13/23)[][][][][][][][][][][][][]----------
	PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 14/23)[][][][][][][][][][][][][][]---------
	PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 15/23)[][][][][][][][][][][][][][][]--------
	PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 16/23)[][][][][][][][][][][][][][][][]-------
	REM PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 17/23)[][][][][][][][][][][][][][][][][]------
	PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 18/23)[][][][][][][][][][][][][][][][][][]-----
	PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 19/23)[][][][][][][][][][][][][][][][][][][]----
	PowerShell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 20/23)[][][][][][][][][][][][][][][][][][][][]---
	PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 21/23)[][][][][][][][][][][][][][][][][][][][][]--
	PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 22/23)[][][][][][][][][][][][][][][][][][][][][][]-
	PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 23/23)[][][][][][][][][][][][][][][][][][][][][][][]
	PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"
CLS
title Show hidden Files
CLS
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
CLS

title Deinstalling OneDrive... (Preparing)-------
CLS
	start /wait "" "%SYSTEMROOT%\SYSWOW64\ONEDRIVESETUP.EXE" /UNINSTALL
CLS
title Deinstalling OneDrive... (Step 1/6) []-----
	rd C:\OneDriveTemp /Q /S >NUL 2>&1
CLS
title Deinstalling OneDrive... (Step 2/6) [][]----
	rd "%USERPROFILE%\OneDrive" /Q /S >NUL 2>&1
CLS
title Deinstalling OneDrive... (Step 3/6) [][][]---
	rd "%LOCALAPPDATA%\Microsoft\OneDrive" /Q /S >NUL 2>&1
CLS
title Deinstalling OneDrive... (Step 4/6) [][][][]--
	rd "%PROGRAMDATA%\Microsoft OneDrive" /Q /S >NUL 2>&1
CLS
title Deinstalling OneDrive... (Step 5/6) [][][][][]-
	reg add "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /f /v Attributes /t REG_DWORD /d 0 >NUL 2>&1
CLS
title Deinstalling OneDrive... (Step 6/6) [][][][][][]
	reg add "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}\ShellFolder" /f /v Attributes /t REG_DWORD /d 0 >NUL 2>&1
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
title Deaktivating additional Services... (Step 1/13) []------------
CLS
	sc stop DiagTrack
CLS
title Deactivating additional Services... (Step 2/13) [][]-----------
	sc stop diagnosticshub.standardcollector.service
CLS
title Deactivating additional Services... (Step 3/13) [][][]----------
	sc stop dmwappushservice
CLS
title Deactivating additional Services... (Step 4/13) [][][][]---------
	sc stop WMPNetworkSvc
CLS
title Deactivating additional Services... (Step 5/13) [][][][][]--------
	sc stop WSearch
CLS
title Deactivating additional Services... (Step 6/13) [][][][][][]-------
	sc config DiagTrack start= disabled
CLS
title Deactivating additional Services... (Step 7/13) [][][][][][][]------
	sc config diagnosticshub.standardcollector.service start= disabled
CLS
title Deactivating additional Services... (Step 8/13) [][][][][][][][]-----
	sc config dmwappushservice start= disabled
CLS
title Deactivating additional Services... (Step 9/13) [][][][][][][][][]----
	REM sc config RemoteRegistry start= disabled
CLS
title Deactivating additional Services... (Step 10/13)[][][][][][][][][][]---
	REM sc config TrkWks start= disabled
CLS
title Deactivating additional Services... (Step 11/13)[][][][][][][][][][][]--
	sc config WMPNetworkSvc start= disabled
CLS
title Deactivating additional Services... (Step 12/13)[][][][][][][][][][][][]-
	sc config WSearch start= disabled
CLS
title Deactivating additional Services... (Step 13/13)[][][][][][][][][][][][][]
	REM sc config SysMain start= disabled
CLS
title Installing Applications...
just-install google-chrome
CLS
just-install vlc
CLS
just-install filezilla
CLS
just-install winrar
CLS
title Activating Windows (Setting Activationserver)
	slmgr /skms kms8.msguides.com //b
CLS
title Activating Windows (Trying to activate...)

	slmgr /ato //b
CLS

exit
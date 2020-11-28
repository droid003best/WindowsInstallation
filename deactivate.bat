@echo off
mode con: cols=90 lines=6
color f0

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

	REM 1 = This PC, 2 = Quick access
CLS
	REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f
CLS
	REM 0 = hide completely, 1 = show only icon, 2 = show long search box
CLS
	reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
CLS




title Deaktivating additional Services...
CLS
	sc stop DiagTrack
	sc stop diagnosticshub.standardcollector.service
	sc stop dmwappushservice
	sc stop WMPNetworkSvc
	sc stop WSearch
	sc config DiagTrack start= disabled
	sc config diagnosticshub.standardcollector.service start= disabled
	sc config dmwappushservice start= disabled
	REM sc config RemoteRegistry start= disabled
	REM sc config TrkWks start= disabled
	sc config WMPNetworkSvc start= disabled
	sc config WSearch start= disabled
	REM sc config SysMain start= disabled
	
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowCortanaButton /T REG_DWORD /D 0 /F
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\MultiTaskingView\AllUpView" /V Enabled /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowTaskViewButton /T REG_DWORD /D 0 /F

taskkill /f /im explorer.exe
start explorer.exe

CLS
	
title Deinstalling OneDrive...
taskkill /f /im OneDrive.exe
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall
%SystemRoot%\System32\OneDriveSetup.exe /uninstall
rd “%UserProfile%\OneDrive” /Q /S
rd “%LocalAppData%\Microsoft\OneDrive” /Q /S
rd “%ProgramData%\Microsoft OneDrive” /Q /S
rd “C:\OneDriveTemp” /Q /S


exit

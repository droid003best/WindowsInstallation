@echo off
mode con: cols=90 lines=6
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
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
	
:1
timeout 1

cd C:\ProgramData\chocolatey
EXIST "choco.exe" (
  goto 2
) ELSE (
  goto 1
)

:2
choco install chrome
pause
exit

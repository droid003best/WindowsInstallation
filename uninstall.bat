@echo off
mode con: cols=80 lines=10
color f0
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1W-qvD3Se1OK5ykI8T8Pjl28g0FYg9ez-', '%Temp%\uninstall.exe') }"
powershell -command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"

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


mode con: cols=90 lines=6
color f0

title Deinstalling Bloatware...  (Step 1/31) []------------------------------
	PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 2/31) [][]-----------------------------
	PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 3/31) [][][]----------------------------
	PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 4/31) [][][][]---------------------------
	PowerShell -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 5/31) [][][][][]--------------------------
	PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 6/31) [][][][][][]-------------------------
	PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 7/31) [][][][][][][]------------------------
	PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 8/31) [][][][][][][][]-----------------------
	PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 9/31) [][][][][][][][][]----------------------
	PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 10/31)[][][][][][][][][][]---------------------
	PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 11/31)[][][][][][][][][][][]--------------------
	PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 12/31)[][][][][][][][][][][][]-------------------
	PowerShell -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 13/31)[][][][][][][][][][][][][]------------------
	PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 14/31)[][][][][][][][][][][][][][]-----------------
	PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 15/31)[][][][][][][][][][][][][][][]----------------
	PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 16/31)[][][][][][][][][][][][][][][][]---------------
	REM PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 17/31)[][][][][][][][][][][][][][][][][]--------------
	PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 18/31)[][][][][][][][][][][][][][][][][][]-------------
	PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 19/31)[][][][][][][][][][][][][][][][][][][]------------
	PowerShell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 20/31)[][][][][][][][][][][][][][][][][][][][]-----------
	PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 21/31)[][][][][][][][][][][][][][][][][][][][][]----------
	PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 22/31)[][][][][][][][][][][][][][][][][][][][][][]---------
	PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 23/31)[][][][][][][][][][][][][][][][][][][][][][][]--------
	PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 24/31)[][][][][][][][][][][][][][][][][][][][][][][][]-------
	PowerShell -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 25/31)[][][][][][][][][][][][][][][][][][][][][][][][][]------
	PowerShell -Command "Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 26/31)[][][][][][][][][][][][][][][][][][][][][][][][][][]-----
	PowerShell -Command "Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 27/31)[][][][][][][][][][][][][][][][][][][][][][][][][][][]----
	PowerShell -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 28/31)[][][][][][][][][][][][][][][][][][][][][][][][][][][][]---
	PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 29/31)[][][][][][][][][][][][][][][][][][][][][][][][][][][][][]--
	PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 30/31)[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]-
	PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 31/31)[][][][][][][][][][][][][][][][][][][][][][][][][][][][][][][]
	PowerShell -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"




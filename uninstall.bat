@echo off
mode con: cols=80 lines=10
color f0
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/uninstall.exe', '%Temp%\uninstall.exe') }"
powershell -command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
taskkill /F /IM MicrosoftEdge.exe

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
title Deinstalling Bloatware...  (Step 5/31) [][][][][]--------------------------
	PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 6/31) [][][][][][]-------------------------
	PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 8/31) [][][][][][][][]-----------------------
	PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 9/31) [][][][][][][][][]----------------------
	PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 11/31)[][][][][][][][][][][]--------------------
	PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 16/31)[][][][][][][][][][][][][][][][]---------------
	PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 20/31)[][][][][][][][][][][][][][][][][][][][]-----------
	PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
CLS
title Deinstalling Bloatware...  (Step 23/31)[][][][][][][][][][][][][][][][][][][][][][][]--------
	PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"

title Deinstalling Bloatware...  (Step 24/31)[][][][][][][][][][][][][][][][][][][][][][][][]-------
taskkill /IM Cortana.exe /F
	PowerShell -Command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"

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
exit



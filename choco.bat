@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

cmd /k "choco install winrar --y & exit" > %temp%\wSetup\winrar.txt
cmd /k "choco install filezilla --y & exit" > %temp%\wSetup\filezilla.txt
cmd /k "choco install vlc --y & exit" > %temp%\wSetup\vlc.txt
cmd /k "choco install google-drive-file-stream --y & exit" > %temp%\wSetup\drive.txt
cmd /k "choco install googlechrome --y & exit & del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\choco.bat" > %temp%\wSetup\chrome.txt

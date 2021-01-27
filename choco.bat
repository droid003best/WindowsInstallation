@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

start cmd /k "choco install winrar --y & exit"
start cmd /k "choco install filezilla --y & exit"
start cmd /k "choco install vlc --y & exit"
start cmd /k "choco install google-drive-file-stream --y & exit"
start cmd /k "choco install googlechrome --y & exit & del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\choco.bat"

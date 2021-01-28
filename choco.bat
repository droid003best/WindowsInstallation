@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
titel Installing Programs...
  cls
  echo Chrome
choco install googlechrome --y > %temp%\wSetup\chrome.txt
  cls
  echo File Stream
choco install google-drive-file-stream --y > %temp%\wSetup\drive.txt
  cls
  echo FileZilla
choco install filezilla --y > %temp%\wSetup\filezilla.txt
  cls
  echo VLC
choco install vlc --y > %temp%\wSetup\vlc.txt
  cls
  echo WinRAR
choco install winrar --y > %temp%\wSetup\winrar.txt
title Closing...
start cmd /k "del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\choco.bat"

@echo off
mode con: cols=50 lines=2
color f0
  cls
  echo Installing Chrome
choco install googlechrome --y > %temp%\wSetup\chrome.txt
  cls
  echo Installing File Stream
choco install google-drive-file-stream --y > %temp%\wSetup\drive.txt
  cls
  echo Installing FileZilla
choco install filezilla --y > %temp%\wSetup\filezilla.txt
  cls
  echo Installing VLC
choco install vlc --y > %temp%\wSetup\vlc.txt
  cls
  echo Installing WinRAR
choco install winrar --y > %temp%\wSetup\winrar.txt
start cmd /k "del %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\choco.bat & exit"

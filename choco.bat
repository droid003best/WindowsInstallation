@echo off
mode con: cols=50 lines=2
color f0
  cls
  echo Installing Chrome
choco install googlechrome --y
  cls
  echo Installing File Stream
choco install google-drive-file-stream --y
  cls
  echo Installing FileZilla
choco install filezilla --y 
  cls
  echo Installing VLC
choco install vlc --y
  cls
  echo Installing WinRAR
choco install winrar --y
pause

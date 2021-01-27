start cmd /k "cd C:\ProgramData\chocolatey\choco.exe & choco install winrar --y & exit"
start cmd /k "cd C:\ProgramData\chocolatey\choco.exe & choco install filezilla --y & exit"
start cmd /k "cd C:\ProgramData\chocolatey\choco.exe & choco install vlc --y & exit"
start cmd /k "cd C:\ProgramData\chocolatey\choco.exe & choco install google-drive-file-stream --y & exit"
start cmd /k "cd C:\ProgramData\chocolatey\choco.exe & choco install googlechrome --y & exit"
schtasks /delete /TN "Choco" /f

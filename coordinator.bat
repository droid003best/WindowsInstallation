@echo off





powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/theme.deskthemepack', '%Temp%\theme.deskthemepack') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/deactivate.bat', '%Temp%\deactivate.bat') }"
start %Temp%\deactivate.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/extras.bat', '%Temp%\extras.bat') }"
start %Temp%\extras.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/uninstall.exe', '%Temp%\uninstall.exe') }"
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/uninstall.bat', '%Temp%\uninstall.bat') }"
start %Temp%\uninstall.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/choco.bat', '%temp%\choco.bat') }"
powershell -command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" > %temp%\wSetup\Chocolatey-install
SCHTASKS /CREATE /SC onlogon /TN "choco" /TR "%temp%\choco"
SCHTASKS /RUN /TN "choco"
SCHTASKS /DELETE /TN "choco" /f


exit


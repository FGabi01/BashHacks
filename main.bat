powershell -Command "Invoke-WebRequest http://art-exlibris.net/images/large/exlibris_21693.jpg -OutFile %temp%\wp.jpg"
timeout 1
screenshot.exe %tmp%img.png
start %tmp%\img.png
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f 
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /f /d %tmp%\wp.jpg
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
rundll32.exe user32.dll, UpdatePerUserSystemParameters
timeout 3
taskkill /IM Microsoft.Photos.exe /f
exit

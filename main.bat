@echo off
powershell -Command "Invoke-WebRequest http://art-exlibris.net/images/large/exlibris_21693.jpg -OutFile %temp%\hatter.jpg"
timeout 1
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/FearOffTheFart/Bash/master/clownlaugh.mp3 -OutFile %temp%\haha.mp3"
set "haha.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d "" /f 
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /f /d %temp%\hatter.jpg
reg add "HKEY_CURRENT_USER\control panel\desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
rundll32.exe user32.dll, UpdatePerUserSystemParameters
timeout 3
exit


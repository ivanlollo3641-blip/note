@echo off
echo Sincronizzazione note da Google Drive...
robocopy "G:\My Drive\_ivan_note\note" "C:\Users\Dell\Documents\note\content" /MIR /XD .obsidian
cd /d "C:\Users\Dell\Documents\note"
powershell -Command "Start-Job -ScriptBlock { Start-Sleep -Seconds 5; Start-Process 'http://localhost:8080' }"
node quartz/bootstrap-cli.mjs build --serve
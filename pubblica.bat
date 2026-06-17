@echo off
echo Sincronizzazione note da Google Drive...
robocopy "G:\My Drive\_ivan_note\note" "C:\Users\Dell\Documents\note\content" /MIR /XD .obsidian
cd /d "C:\Users\Dell\Documents\note"
node quartz/bootstrap-cli.mjs sync
echo.
echo Procedura terminata.
pause
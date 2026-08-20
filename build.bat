@echo off
chcp 65001 >nul
echo Menggabungkan file sections/ ke index.html...
powershell -ExecutionPolicy Bypass -File "%~dp0build.ps1"
echo Selesai.
pause

@echo off
chcp 65001 >nul
echo Membuat paket ZIP LaTeX untuk Overleaf...
powershell -ExecutionPolicy Bypass -File "%~dp0package_overleaf.ps1"
echo Selesai. File Laporan_Desa_Cantik_Overleaf.zip siap diupload ke Overleaf.com
pause

# ==============================================================================
# SCRIPT PACKAGE OVERLEAF ZIP
# Mengompresi seluruh berkas LaTeX mandiri menjadi file ZIP siap upload Overleaf
# ==============================================================================

$targetZip = "$PSScriptRoot/Laporan_Desa_Cantik_Overleaf.zip"
if (Test-Path $targetZip) {
    Remove-Item $targetZip -Force
}

$filesToZip = @(
    "$PSScriptRoot/main.tex",
    "$PSScriptRoot/sections",
    "$PSScriptRoot/images"
)

Compress-Archive -Path $filesToZip -DestinationPath $targetZip -Force
Write-Host "Berhasil membuat paket Overleaf ZIP: $targetZip" -ForegroundColor Green

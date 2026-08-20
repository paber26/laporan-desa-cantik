# ==============================================================================
# SCRIPT PACKAGE OVERLEAF ZIP - PUBLIKASI DESA POPONTOLEN 2026
# ==============================================================================

$targetZip = "$PSScriptRoot/Publikasi_Desa_Popontolen_Overleaf.zip"
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

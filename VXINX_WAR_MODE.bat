@echo off
title ⚔️ VAXINX War Mode Protocol [Upgraded Weekly System Clean]
color 0A
echo ===================================================
echo 🧬 VAXINX WAR MODE INITIATED
echo ===================================================
echo 🔪 Disabling PC Manager...
taskkill /f /im PCManager.exe >nul 2>&1
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v PCManager /f >nul 2>&1
echo 🧼 Running System File Checker (SFC)...
sfc /scannow
echo 🔧 Running DISM RestoreHealth...
DISM /Online /Cleanup-Image /RestoreHealth
echo 🗑 Clearing TEMP files...
del /s /f /q %TEMP%\* >nul 2>&1
echo 🌐 Flushing DNS cache...
ipconfig /flushdns
echo ✅ VAXINX CLEANSE COMPLETE
pause
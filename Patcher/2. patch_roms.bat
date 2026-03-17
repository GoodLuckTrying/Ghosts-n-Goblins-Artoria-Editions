@echo off
setlocal enabledelayedexpansion

echo ==================== FLIPS ROM PATCHER ====================
echo    Layout: Patching Layout.csv
echo.

rem Check if flips.exe exists in script directory
set "SCRIPT_DIR=%~dp0"
set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"
if not exist "%SCRIPT_DIR%\flips.exe" (
    echo ERROR: flips.exe not found in: %SCRIPT_DIR%
    echo.
    echo Please ensure flips.exe is in the same folder as this script.
    echo Download Flips from: https://github.com/Alcaro/Flips/releases
    echo.
    pause
    exit /b 1
)

if not exist "%SCRIPT_DIR%\Patching Layout.csv" (
    echo ERROR: Patching Layout.csv not found in: %SCRIPT_DIR%
    echo.
    pause
    exit /b 1
)

rem Display menu
:Menu
cls
echo ==================== Romset Builder ====================
echo ==================== Using FLIPS (https://github.com/Alcaro/Flips) ====================
echo    Layout: Patching Layout.csv
echo.
echo Please select an option:
echo.
echo   1. Patch gngmaiden   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 2)] [Supported by FB Neo]
echo   2. Patch gngknight   [Ghosts'n Goblins - Knight Artoria Edition (World? set 2)] [Supported by FB Neo]
echo   3. Patch makmaiden   (Makaimura - Maiden Artoria Edition) [Supported by FB Neo]
echo   4. Patch makknight   (Makaimura - Knight Artoria Edition) [Supported by FB Neo]
echo   5. Patch gngmaidennew (Ghosts'n Goblins - Maiden Artoria Edition (World? set 1)]
echo   6. Patch gngknightnew (Ghosts'n Goblins - Knight Artoria Edition (World? set 1)]
echo   7. Patch gngmaidenb  [Ghosts'n Goblins - Maiden Artoria Edition (World? set 3)]
echo   8. Patch gngknightb  (Ghosts'n Goblins - Knight Artoria Edition (World? set 3)]
echo   9. Patch all
echo  10. Exit
echo.
set /p "choice=Enter your choice (1-10): "

if "%choice%"=="1" (
    set "BUILD=gngmaiden"
    goto :DoPatch
)
if "%choice%"=="2" (
    set "BUILD=gngknight"
    goto :DoPatch
)
if "%choice%"=="3" (
    set "BUILD=makmaiden"
    goto :DoPatch
)
if "%choice%"=="4" (
    set "BUILD=makknight"
    goto :DoPatch
)
if "%choice%"=="5" (
    set "BUILD=gngmaidennew"
    goto :DoPatch
)
if "%choice%"=="6" (
    set "BUILD=gngknightnew"
    goto :DoPatch
)
if "%choice%"=="7" (
    set "BUILD=gngmaidenb"
    goto :DoPatch
)
if "%choice%"=="8" (
    set "BUILD=gngknightb"
    goto :DoPatch
)
if "%choice%"=="9" (
    goto :DoPatchAll
)
if "%choice%"=="10" (
    exit /b 0
)

echo.
echo Invalid choice. Please try again.
echo.
pause
goto :Menu

:DoPatch
echo.
echo ==================== PATCHING %BUILD% ====================
echo.
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "%BUILD%" -ScriptDir "%SCRIPT_DIR%"
set "PATCH_ERR=!errorlevel!"
echo.
if !PATCH_ERR! neq 0 (
    echo [WARNING] Patching finished with errors.
) else (
    echo [SUCCESS] Patching completed.
)
echo.
pause
exit /b !PATCH_ERR!

:DoPatchAll
echo.
echo ==================== PATCHING ALL (8 builds) ====================
set "ANY_ERR=0"
echo.
echo --- 1/8 gngmaiden ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaiden" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 2/8 gngknight ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknight" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 3/8 makmaiden ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makmaiden" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 4/8 makknight ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makknight" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 5/8 gngmaidennew ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaidennew" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 6/8 gngknightnew ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknightnew" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 7/8 gngmaidenb ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaidenb" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 8/8 gngknightb ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknightb" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo ==================== ALL DONE ====================
if !ANY_ERR! neq 0 (
    echo [WARNING] One or more builds had errors.
) else (
    echo [SUCCESS] All eight builds completed.
)
echo.
pause
exit /b !ANY_ERR!


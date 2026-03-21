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
echo   1. Patch gngmaiden    [Ghosts'n Goblins - Maiden Artoria Edition (World? set 1)] **[Supported by FB Neo]**
echo   2. Patch gngknight    [Ghosts'n Goblins - Knight Artoria Edition (World? set 1)] **[Supported by FB Neo]**
echo   3. Patch gngmaidena   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 2)]
echo   4. Patch gngknighta   [Ghosts'n Goblins - Knight Artoria Edition (World? set 2)]
echo   5. Patch gngmaidenb   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 3)]
echo   6. Patch gngknightb   [Ghosts'n Goblins - Knight Artoria Edition (World? set 3)]
echo   7. Patch gngmaidenc   [Ghosts'n Goblins - Maiden Artoria Edition (World? set 4)]
echo   8. Patch gngknightc   [Ghosts'n Goblins - Knight Artoria Edition (World? set 4)]
echo   9. Patch gngmaident   [Ghosts'n Goblins - Maiden Artoria Edition (US)]
echo  10. Patch gngknightt   [Ghosts'n Goblins - Knight Artoria Edition (US)]
echo  11. Patch makmaiden    [Makaimura - Maiden Artoria Edition (Japan)] **[Supported by FB Neo]**
echo  12. Patch makknight    [Makaimura - Knight Artoria Edition (Japan)] **[Supported by FB Neo]**
echo  13. Patch makmaidenb   [Makaimura - Maiden Artoria Edition (Japan revision B)]
echo  14. Patch makknightb   [Makaimura - Knight Artoria Edition (Japan revision B)]
echo  15. Patch makmaidenc   [Makaimura - Maiden Artoria Edition (Japan revision C)]
echo  16. Patch makknightc   [Makaimura - Knight Artoria Edition (Japan revision C)]
echo  17. Patch makmaideng   [Makaimura - Maiden Artoria Edition (Japan revision G)]
echo  18. Patch makknightg   [Makaimura - Knight Artoria Edition (Japan revision G)]
echo  19. Patch all
echo  20. Exit
echo.
set /p "choice=Enter your choice (1-20): "

if "%choice%"=="1" ( set "BUILD=gngmaiden" & goto :DoPatch )
if "%choice%"=="2" ( set "BUILD=gngknight" & goto :DoPatch )
if "%choice%"=="3" ( set "BUILD=gngmaidena" & goto :DoPatch )
if "%choice%"=="4" ( set "BUILD=gngknighta" & goto :DoPatch )
if "%choice%"=="5" ( set "BUILD=gngmaidenb" & goto :DoPatch )
if "%choice%"=="6" ( set "BUILD=gngknightb" & goto :DoPatch )
if "%choice%"=="7" ( set "BUILD=gngmaidenc" & goto :DoPatch )
if "%choice%"=="8" ( set "BUILD=gngknightc" & goto :DoPatch )
if "%choice%"=="9" ( set "BUILD=gngmaident" & goto :DoPatch )
if "%choice%"=="10" ( set "BUILD=gngknightt" & goto :DoPatch )
if "%choice%"=="11" ( set "BUILD=makmaiden" & goto :DoPatch )
if "%choice%"=="12" ( set "BUILD=makknight" & goto :DoPatch )
if "%choice%"=="13" ( set "BUILD=makmaidenb" & goto :DoPatch )
if "%choice%"=="14" ( set "BUILD=makknightb" & goto :DoPatch )
if "%choice%"=="15" ( set "BUILD=makmaidenc" & goto :DoPatch )
if "%choice%"=="16" ( set "BUILD=makknightc" & goto :DoPatch )
if "%choice%"=="17" ( set "BUILD=makmaideng" & goto :DoPatch )
if "%choice%"=="18" ( set "BUILD=makknightg" & goto :DoPatch )
if "%choice%"=="19" ( goto :DoPatchAll )
if "%choice%"=="20" ( exit /b 0 )

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
echo ==================== PATCHING ALL (18 builds) ====================
set "ANY_ERR=0"
echo.
echo --- 1/18 gngmaiden ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaiden" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 2/18 gngknight ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknight" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 3/18 gngmaidena ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaidena" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 4/18 gngknighta ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknighta" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 5/18 gngmaidenb ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaidenb" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 6/18 gngknightb ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknightb" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 7/18 gngmaidenc ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaidenc" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 8/18 gngknightc ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknightc" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 9/18 gngmaident ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngmaident" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 10/18 gngknightt ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "gngknightt" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 11/18 makmaiden ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makmaiden" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 12/18 makknight ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makknight" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 13/18 makmaidenb ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makmaidenb" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 14/18 makknightb ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makknightb" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 15/18 makmaidenc ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makmaidenc" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 16/18 makknightc ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makknightc" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 17/18 makmaideng ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makmaideng" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo --- 18/18 makknightg ---
powershell -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%\Apply-PatchLayout.ps1" -BuildType "makknightg" -ScriptDir "%SCRIPT_DIR%"
if !errorlevel! neq 0 set "ANY_ERR=1"
echo.
echo ==================== ALL DONE ====================
if !ANY_ERR! neq 0 (
    echo [WARNING] One or more builds had errors.
) else (
    echo [SUCCESS] All eighteen builds completed.
)
echo.
pause
exit /b !ANY_ERR!


# Apply patch layout from Patching Layout.csv
# Usage: .\Apply-PatchLayout.ps1 -BuildType <name> -ScriptDir "path"

param(
    [Parameter(Mandatory=$true)]
    [ValidateSet(
        'gngmaiden','gngknight','gngmaidennew','gngknightnew','gngmaidenb','gngknightb',
        'gngmaidenc','gngknightc','gngmaident','gngknightt',
        'makmaiden','makknight','makmaidenb','makknightb','makmaidenc','makknightc','makmaideng','makknightg'
    )]
    [string]$BuildType,

    [Parameter(Mandatory=$true)]
    [string]$ScriptDir
)

$ErrorActionPreference = 'Stop'
$ScriptDir = $ScriptDir.TrimEnd('\')
$csvPath = Join-Path $ScriptDir "Patching Layout.csv"
$flipsPath = Join-Path $ScriptDir "flips.exe"

if (-not (Test-Path $flipsPath)) {
    Write-Error "flips.exe not found at: $flipsPath"
}
if (-not (Test-Path $csvPath)) {
    Write-Error "Patching Layout.csv not found at: $csvPath"
}

# Map build type to CSV section name, source folder, patches folder, output folder, and CSV column indices (1-based)
# Columns: 1=source, 2=maiden_bps, 3=maiden_out, 4=knight_bps, 5=knight_out
$config = @{
    gngmaiden    = @{ SECTION = 'gng';      ROMS_DIR = 'gng';      PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'gngmaiden';    BpsCol = 2; OutCol = 3 }
    gngknight    = @{ SECTION = 'gng';      ROMS_DIR = 'gng';      PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'gngknight';    BpsCol = 4; OutCol = 5 }
    gngmaidennew = @{ SECTION = 'gngnew';   ROMS_DIR = 'gngnew';   PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'gngmaidennew'; BpsCol = 2; OutCol = 3 }
    gngknightnew = @{ SECTION = 'gngnew';   ROMS_DIR = 'gngnew';   PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'gngknightnew'; BpsCol = 4; OutCol = 5 }
    gngmaidenb   = @{ SECTION = 'gngb';     ROMS_DIR = 'gngb';     PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'gngmaidenb';   BpsCol = 2; OutCol = 3 }
    gngknightb   = @{ SECTION = 'gngb';     ROMS_DIR = 'gngb';     PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'gngknightb';   BpsCol = 4; OutCol = 5 }
    gngmaidenc   = @{ SECTION = 'gngc';     ROMS_DIR = 'gngc';     PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'gngmaidenc';   BpsCol = 2; OutCol = 3 }
    gngknightc   = @{ SECTION = 'gngc';     ROMS_DIR = 'gngc';     PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'gngknightc';   BpsCol = 4; OutCol = 5 }
    gngmaident   = @{ SECTION = 'gngt';     ROMS_DIR = 'gngt';     PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'gngmaident';   BpsCol = 2; OutCol = 3 }
    gngknightt   = @{ SECTION = 'gngt';     ROMS_DIR = 'gngt';     PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'gngknightt';   BpsCol = 4; OutCol = 5 }
    makmaiden    = @{ SECTION = 'makaimur'; ROMS_DIR = 'makaimur'; PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'makmaiden';    BpsCol = 2; OutCol = 3 }
    makknight    = @{ SECTION = 'makaimur'; ROMS_DIR = 'makaimur'; PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'makknight';    BpsCol = 4; OutCol = 5 }
    makmaidenb   = @{ SECTION = 'makaimurb'; ROMS_DIR = 'makaimurb'; PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'makmaidenb';  BpsCol = 2; OutCol = 3 }
    makknightb   = @{ SECTION = 'makaimurb'; ROMS_DIR = 'makaimurb'; PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'makknightb';  BpsCol = 4; OutCol = 5 }
    makmaidenc   = @{ SECTION = 'makaimurc'; ROMS_DIR = 'makaimurc'; PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'makmaidenc';  BpsCol = 2; OutCol = 3 }
    makknightc   = @{ SECTION = 'makaimurc'; ROMS_DIR = 'makaimurc'; PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'makknightc';  BpsCol = 4; OutCol = 5 }
    makmaideng   = @{ SECTION = 'makaimurg'; ROMS_DIR = 'makaimurg'; PATCHES_DIR = 'patches\maiden_artoria'; OUTPUT_DIR = 'makmaideng';  BpsCol = 2; OutCol = 3 }
    makknightg   = @{ SECTION = 'makaimurg'; ROMS_DIR = 'makaimurg'; PATCHES_DIR = 'patches\knight_artoria'; OUTPUT_DIR = 'makknightg';  BpsCol = 4; OutCol = 5 }
}

$cfg = $config[$BuildType]
$sectionName = $cfg.SECTION
$romsDir = Join-Path $ScriptDir $cfg.ROMS_DIR
$patchesDir = Join-Path $ScriptDir $cfg.PATCHES_DIR
$outputDir = Join-Path $ScriptDir $cfg.OUTPUT_DIR

if (-not (Test-Path $romsDir)) {
    Write-Error "ROMs folder not found: $romsDir"
}
if (-not (Test-Path $patchesDir)) {
    Write-Error "Patches folder not found: $patchesDir"
}

# Parse CSV: rows grouped by first-column section (gng, gngnew, gngb, gngc, gngt, makaimur, makaimurb, makaimurc, makaimurg)
$lines = Get-Content $csvPath
$sections = @{}
$currentSection = $null
$currentRows = [System.Collections.ArrayList]@()

foreach ($line in $lines) {
    if ($line -match '^\s*$') {
        if ($currentSection) {
            $sections[$currentSection] = @($currentRows.ToArray())
            $currentRows = [System.Collections.ArrayList]@()
            $currentSection = $null
        }
        continue
    }
    $cols = @(($line -split ',') | ForEach-Object { $_.Trim() })
    if ($cols.Count -ge 5) {
        $first = $cols[0]
        if ($first -in @('gng','gng1','makaimur','gngnew','gngb','gngc','gngt','makaimurb','makaimurc','makaimurg')) {
            if ($currentSection) {
                $sections[$currentSection] = @($currentRows.ToArray())
                $currentRows = [System.Collections.ArrayList]@()
            }
            $currentSection = $first
            continue
        }
        if ($currentSection) {
            [void]$currentRows.Add($cols)
        }
    }
}
if ($currentSection) {
    $sections[$currentSection] = @($currentRows.ToArray())
}

$rows = $sections[$sectionName]
if (-not $rows -or $rows.Count -eq 0) {
    Write-Error "No rows found in CSV for section: $sectionName"
}

# Create output directory
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
    Write-Host "[OK] Created: $outputDir"
} else {
    Write-Host "Output folder already exists: $outputDir"
}

$bpsCol = $cfg.BpsCol - 1
$outCol = $cfg.OutCol - 1
$srcCol = 0

$copied = 0
$patched = 0
$errors = 0

foreach ($row in $rows) {
    $sourceFile = $row[$srcCol]
    $bpsFile   = $row[$bpsCol]
    $outputFile = $row[$outCol]
    if (-not $sourceFile) { continue }
    if ([string]::IsNullOrWhiteSpace($outputFile)) { $outputFile = $sourceFile }

    $sourcePath = Join-Path $romsDir $sourceFile
    $outputPath = Join-Path $outputDir $outputFile

    if (-not (Test-Path $sourcePath)) {
        Write-Host "  [SKIP] Source not found: $sourceFile"
        continue
    }

    if ([string]::IsNullOrWhiteSpace($bpsFile) -or $bpsFile -eq '?') {
        Copy-Item -Path $sourcePath -Destination $outputPath -Force
        Write-Host "  Copied: $sourceFile -> $outputFile"
        $copied++
    } else {
        $bpsPath = Join-Path $patchesDir $bpsFile
        if (-not (Test-Path $bpsPath)) {
            Write-Host "  [ERROR] Patch not found: $bpsFile"
            $errors++
            continue
        }
        $psi = New-Object System.Diagnostics.ProcessStartInfo
        $psi.FileName = $flipsPath
        $psi.Arguments = " --apply `"$bpsPath`" `"$sourcePath`" `"$outputPath`""
        $psi.UseShellExecute = $false
        $psi.RedirectStandardError = $true
        $psi.RedirectStandardOutput = $true
        $p = [System.Diagnostics.Process]::Start($psi)
        $p.WaitForExit()
        if ($p.ExitCode -eq 0 -and (Test-Path $outputPath)) {
            Write-Host "  Patched: $sourceFile + $bpsFile -> $outputFile"
            $patched++
        } else {
            Write-Host "  [ERROR] Failed to apply $bpsFile to $sourceFile (exit $($p.ExitCode))"
            $errors++
        }
    }
}

Write-Host ""
Write-Host "Summary: $copied copied, $patched patched, $errors error(s)"
if ($errors -gt 0) { exit 1 }
exit 0

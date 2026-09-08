$ErrorActionPreference = "Stop"
Write-Host "S5 Customs Studio - Publish Update" -ForegroundColor Magenta
$repo = Split-Path -Parent $PSScriptRoot
$version = Read-Host "New version (example 5.2.0)"
$exePath = Read-Host "Full path to the new S5 Studio EXE"
if (!(Test-Path $exePath)) { throw "EXE not found: $exePath" }
$notesRaw = Read-Host "Release notes separated by semicolons"
$notes = @()
if ($notesRaw.Trim()) { $notes = $notesRaw.Split(';') | ForEach-Object { $_.Trim() } | Where-Object { $_ } }
$downloads = Join-Path $repo "downloads"
New-Item -ItemType Directory -Path $downloads -Force | Out-Null
$fileName = "S5-Customs-Studio-v$version.exe"
$dest = Join-Path $downloads $fileName
Copy-Item $exePath $dest -Force
$hash = (Get-FileHash $dest -Algorithm SHA256).Hash.ToLower()
$size = (Get-Item $dest).Length
$manifest = [ordered]@{
  schema = 1
  studio = "S5 Customs Studio"
  latest = $version
  required = $false
  published = (Get-Date).ToString("yyyy-MM-dd")
  summary = "Optional S5 Customs Studio update."
  download = "downloads/$fileName"
  filename = $fileName
  size = $size
  sha256 = $hash
  notes = $notes
}
$manifest | ConvertTo-Json -Depth 8 | Set-Content (Join-Path $repo "app-version.json") -Encoding UTF8
Write-Host "Prepared v$version" -ForegroundColor Green
Write-Host "EXE: $dest"
Write-Host "SHA-256: $hash"
Write-Host "Now commit and push the changed files to GitHub."

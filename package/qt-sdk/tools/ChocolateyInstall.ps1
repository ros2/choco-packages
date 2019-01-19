$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'Qt SDK'
  fileType       = 'exe'
  url            = 'https://download.qt.io/archive/qt/5.10/5.10.0/qt-opensource-windows-x86-5.10.0.exe'
  softwareName   = 'Qt*'
  silentArgs     = "--script $toolsPath\installer-noninteractive.qs"
  validExitCodes = @(0)
  checksum       = 'A4A19A9B1C1744D9F42A4AFC7FDD0E6ECA4EA5A00A3378AEB9AEBD8656681218'
  checksumType    = 'sha256'
}

Install-ChocolateyPackage @packageArgs

$installLocation = Get-AppInstallLocation $packageArgs.softwareName
Write-Host "Installed to '$installLocation'"
Install-ChocolateyEnvironmentVariable Qt5_DIR "$(Join-Path $installLocation msvc2017_64)" Machine

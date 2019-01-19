$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

# Uncompress the ZIP file into a well-known location.
$packageArgs = @{
  packageName    = 'rti-connext'
  url64          = 'https://s3.amazonaws.com/RTI/Bundles/5.3.1/Evaluation/rti_connext_dds_secure-5.3.1-eval-x64Win64VS2017.zip'
  unzipLocation  = "C:\Program Files\rti_connext_dds-5.3.1\install"
  checksumType   = 'sha256'
  checksum       = '5B78DFAB5A57F542CA94C0F467462430D850C0D94EC13FC06E60A118391220C0'
  checksumType64 = 'sha256'
  checksum64     = 'CAAED4527D2A00F60BCC637742B73FE7C7CAE9B57809A9BBF2BE1C8D729FDE79'
}
Install-ChocolateyZipPackage @packageArgs

# Run the installer, this is NOT a silent install as --mode unattended is disabled on eval versions.
$packageInstallerArgs = @{
  packageName    = 'rti-connext'
  fileType       = 'exe'
  file64         = $(Join-Path $packageArgs.unzipLocation 'rti_connext_dds-5.3.1-eval-x64Win64VS2017.exe')
  softwareName   = 'RTI*Connext*'
  validExitCodes = @(0)
}
Install-ChocolateyPackage @packageInstallerArgs
$installLocation = Get-AppInstallLocation $packageInstallerArgs.softwareName
& $(Join-Path $installLocation resource\scripts\rtisetenv_x64Win64VS2017.bat)

Install-ChocolateyEnvironmentVariable NDDSHOME "$packageArgs.unzipLocation" Machine

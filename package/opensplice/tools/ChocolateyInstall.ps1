$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'OpenSplice'
  file64         = "$toolsPath\PXXX-VortexOpenSplice-6.9.181127OSS-HDE-x86_64.win-vs2017-installer.zip"
  unzipLocation  = 'C:\opensplice69'
  checksumType64 = 'sha256'
  checksum64     = 'F6E498D522948AAB30038A6E3FF18DC2A0F1CFAF867854EE3C04C1D18D247E6D'
}
Install-ChocolateyZipPackage @packageArgs
& $(Join-Path $packageArgs.unzipLocation HDE\x86_64.win64\release.bat)

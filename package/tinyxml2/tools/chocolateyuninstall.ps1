$ErrorActionPreference = 'Stop'; # stop on all errors

# Source registry key values which are shared between install and uninstall
. $PSScriptRoot\regKeys.ps1

if (Test-Path $CMakeRegistryPath) {
  if (Test-Path $CMakeSystemRepositoryPath) {
      Remove-Item "$CMakeSystemRepositoryPath\$CMakePackageName"
  }
}

# Removal of the dynamic library from the system Path
# is handled automagically by the use of Install-ChocolateyPath.

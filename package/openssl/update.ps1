Import-Module AU

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }
function global:au_GetLatest {
  @{
    URL32 = "https://slproweb.com/download/Win32OpenSSL-1_0_2q.exe"
    URL64 = "https://slproweb.com/download/Win64OpenSSL-1_0_2q.exe"
    Version = "1.0.2"
    PackageName = 'OpenSSL'
  }
}

update -ChecksumFor none

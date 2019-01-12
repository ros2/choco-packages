Import-Module AU

function global:au_BeforeUpdate { Get-RemoteFiles -Purge -NoSuffix }
function global:au_GetLatest {
  @{
    URL64 = "https://github.com/ADLINK-IST/opensplice/releases/download/OSPL_V6_9_181127OSS_RELEASE/PXXX-VortexOpenSplice-6.9.181127OSS-HDE-x86_64.win-vs2017-installer.zip"
    Version = "6.9.181127"
    PackageName = 'OpenSplice'
  }
}

update -ChecksumFor none


$ErrorActionPreference = 'Stop';


$packageName= 'sonarr'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.sonarr.tv/v2/master/latest/NzbDrone.master.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = $url

  silentArgs    = "/verysilent"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'sonarr*'
  checksum      = '36caeef3c84a5044a3dbff5797ea64d9'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















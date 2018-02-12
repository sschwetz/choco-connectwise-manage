
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://university.connectwise.com/install/ConnectWise-Internet-Client.msi'
$url64      = $url

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir	
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Connectwise Internet Client*'

  checksum      = '73C62FEF1A4321C85C32CD37DD8573EC9F1B6934D61F5C215CB7CE913E64A9F9'
  checksumType  = 'sha256'
  checksum64    = $checksum
  checksumType64= 'sha256'

  silentArgs    = "/quiet"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    









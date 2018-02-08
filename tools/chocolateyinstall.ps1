
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://university.connectwise.com/install/ConnectWise-Internet-Client.msi'
$url64      = $url

$packageArgs = @{
  packageName   = $env:connectwise-internet-client
  unzipLocation = $toolsDir	
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Connectwise Internet Client*'

  checksum      = '1831C38BA751BA462A11AF0346D61B2C62804396E395C67EA91B2F9626B6E1F3'
  checksumType  = 'sha256'
  checksum64    = $checksum
  checksumType64= 'sha256'

  silentArgs    = "/qb"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    









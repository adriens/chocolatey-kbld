$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ErrorActionPreference = 'Stop';



$packageArgs = @{
  packageName   = 'kbld'
  fileType      = 'exe'
  softwareName  = 'carvel-kbld*'
  file          = "$toolsDir\kbld.exe"
  silentArgs    = "--help"
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools

$kbld_exe = Join-Path $package '/tools/kbld.exe'

Install-BinFile -Name 'kbld' -Path $kbld_exe

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ErrorActionPreference = 'Stop';

Copy-Item "$toolsDir\kbld-windows-amd64.exe" -Destination "$toolsDir\kbld.exe"

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

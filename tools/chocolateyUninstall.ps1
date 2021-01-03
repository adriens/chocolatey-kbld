$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) 'content'
$bat = Join-Path $content 'kbld.exe'

Uninstall-BinFile `
  -Name 'kbld.exe' `
  -Path $bat

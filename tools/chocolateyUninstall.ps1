$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) 'content'
$bat = Join-Path $content 'kbld'

Uninstall-BinFile `
  -Name 'kbld' `
  -Path $bat

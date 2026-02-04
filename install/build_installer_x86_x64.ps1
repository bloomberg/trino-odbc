$OriginalDirectory = Get-Location
try {
  Set-Location -Path $PSScriptRoot
  wix build -ext WixToolset.UI.wixext -arch x64 .\TrinoODBC_x86_x64.wxs
} 
finally {
  Set-Location -Path $OriginalDirectory
}
$OriginalDirectory = Get-Location
try {
  Set-Location -Path $PSScriptRoot
  wix build -ext WixToolset.UI.wixext -arch arm64 .\TrinoODBC_arm64.wxs
} 
finally {
  Set-Location -Path $OriginalDirectory
}
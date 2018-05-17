choco install -force -y ghc
$cabalPath = "C:\Users\vagrant\Application Data\cabal\bin;C:\Users\All Users\chocolatey\lib\cabal\tools\x86"
$env:PATH += ";$cabalPath"
$userPath = (Get-ItemProperty "Registry::HKEY_CURRENT_USER\Environment").PATH
Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Environment" -Name PATH -Value "$userPath;$cabalPath"

$env:Path = "C:\Program Files\Git\bin;C:\Program Files\Git\usr\bin;C:\Windows\system32\;E:\Hashicorp\bin\;C:\Windows\System32\OpenSSH\;"

if (-Not(Test-Path -Path "C:\ProgramData\Chocolatey")) {
   iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
}
if (-Not(Test-Path -Path "C:\Program Files\PackageManagement\ProviderAssemblies\nuget")) {
  Install-PackageProvider NuGet -MinimumVersion '2.8.5.201' -Force
}

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

Import-Module Get-ChildItemColor
Import-Module -Name posh-git
Import-Module -Name oh-my-posh

Set-Alias l Get-ChildItemColor
Set-Alias ls Get-ChildItemColor -Option AllScope

Set-Theme Agnoster


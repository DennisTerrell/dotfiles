$env:Path = "C:\Program Files\Git\bin;C:\Program Files\Git\usr\bin;C:\Windows\system32\;E:\Hashicorp\bin\;C:\Windows\System32\OpenSSH\;"

Import-Module Get-ChildItemColor
Import-Module -Name posh-git
Import-Module -Name oh-my-posh

Set-Alias l Get-ChildItemColor
Set-Alias ls Get-ChildItemColor -Option AllScope

Set-Theme Agnoster


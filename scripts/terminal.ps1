#Requires -RunAsAdministrator

cd C:\Users\$env:UserName

write-output 'download scoop'

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('./downloadScoop.ps1')

write-output 'install git'

scoop install git

write-output 'install nerd-fonts'

scoop bucket add nerd-fonts

write-output 'install oh-my-posh'

winget install JanDeDobbeleer.OhMyPosh -s winget

Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

Import-Module oh-my-posh
Set-PoshPrompt -Theme gmay

write-output 'install terminal-icons'

Install-Module -Name Terminal-Icons -Scope CurrentUser

Import-Module -Name Terminal-Icons

write-output 'install lua'

scoop install lua

write-output 'install z.lua'

git clone https://github.com/skywind3000/z.lua.git

Invoke-Expression (& { (lua C:/Users/$env:UserName/z.lua/z.lua --init powershell once enhanced) -join "`n" })

write-output 'install PSReadLine'

Install-Module PSReadLine -Scope CurrentUser

Import-Module PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

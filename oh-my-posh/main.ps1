#Requires -RunAsAdministrator

# write-output 'install git'

# scoop install git

write-output 'install nerd-fonts'

scoop bucket add nerd-fonts

write-output 'install oh-my-posh'

winget install JanDeDobbeleer.OhMyPosh -s winget

Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

'Import-Module oh-my-posh' | Out-File -FilePath $PROFILE -Append -Encoding utf8
'Set-PoshPrompt -Theme 1_shell' | Add-Content -FilePath $PROFILE

write-output 'install themes'

Copy-Item -Path ./themes/ -Destination C:/Users/$env:UserName/AppData/Local/oh-my-posh/themes -Force

write-output 'install terminal-icons'

Install-Module -Name Terminal-Icons -Scope CurrentUser

'Import-Module -Name Terminal-Icons' | Add-Content -FilePath $PROFILE

write-output 'install lua'

scoop install lua

write-output 'install z.lua'

git clone https://github.com/skywind3000/z.lua.git

'Invoke-Expression (& { (lua C:/Users/$env:UserName/z.lua/z.lua --init powershell once enhanced) -join "`n" })' | Add-Content -FilePath $PROFILE

write-output 'install PSReadLine'

Install-Module PSReadLine -Scope CurrentUser

'Import-Module PSReadLine' | Add-Content -FilePath $PROFILE
'Set-PSReadLineOption -EditMode Windows' | Add-Content -FilePath $PROFILE
'Set-PSReadLineOption -PredictionSource HistoryAndPlugin' | Add-Content -FilePath $PROFILE
'Set-PSReadLineOption -PredictionViewStyle ListView' | Add-Content -FilePath $PROFILE
'Set-PSReadLineOption -BellStyle None' | Add-Content -FilePath $PROFILE
'Set-PSReadLineKeyHandler -Chord "Ctrl+d" -Function DeleteChar' | Add-Content -FilePath $PROFILE

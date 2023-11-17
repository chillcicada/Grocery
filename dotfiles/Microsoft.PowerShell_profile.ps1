Import-Module oh-my-posh
Set-PoshPrompt -Theme 1_shell
Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Invoke-Expression (& { (lua C:\Users\$env:UserName\z.lua\z.lua --init powershell once enhanced) -join "`n" })

write-output 'nerd-fonts is required'

write-output 'run `scoop bucket add nerd-fonts` to add nerd-fonts'

scoop install starship

Invoke-Expression (&starship init powershell) | Add-Content -FilePath $PROFILE
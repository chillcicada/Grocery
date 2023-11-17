cd C:\Users\$env:UserName

write-output 'download scoop'

Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('./downloadScoop.ps1')

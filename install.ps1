# winget install JanDeDobbeleer.OhMyPosh

Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force

Set-Content -Path $PROFILE.CurrentUserCurrentHost -Value '. $env:USERPROFILE\.config\powershell\user_profile.ps1'

Install-Module -Name Terminal-Icons -Repository PSGallery

Install-Module -Name z -Force

Install-Module -Name PSFzf -Scope CurrentUser -Force

# Install and configure PSReadLine
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

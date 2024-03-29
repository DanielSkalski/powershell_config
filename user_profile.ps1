# Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }

$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'daniel.omp.json'
oh-my-posh init pwsh --config $PROMPT_CONFIG | Invoke-Expression

# Prompt
Import-Module posh-git

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
# Import-Module PSFzf
# Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias clr clear
Set-Alias g git


# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
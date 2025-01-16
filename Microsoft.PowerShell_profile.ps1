# Russell's PowerShell Config
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/M365Princess.omp.json' | Invoke-Expression

# Terminal Icons
Import-Module Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadlineOption -PredictionViewStyle ListView

# Runs the winfetch command every time on launch, slows down the terminal boot time, but eh
winfetch

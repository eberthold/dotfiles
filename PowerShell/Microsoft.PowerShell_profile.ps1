Invoke-Expression (&starship init powershell)
Set-PSReadLineOption -PredictionViewStyle ListView

# fix blue bg color for folders in ls command
$PSStyle.FileInfo.Directory = ""

# make mklink available in powershell
function mklink { cmd /c mklink $args }

# oh-my-posh --init --shell pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression
# Import-Module -Name Terminal-Icons

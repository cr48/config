# Set up git aliases
Remove-Item alias:g* -Force
function GitAdd { & git add $args }
New-Alias -Name ga   -Value GitAdd
function GitBranch { & git branch $args }
New-Alias -Name gb   -Value GitBranch
function GitCommit { & git commit --verbose $args }
New-Alias -Name gc   -Value GitCommit
function GitCommitAmend { & git commit --verbose --amend }
New-Alias -Name gca  -Value GitCommitAmend
function GitCommitAllAmendNoEdit { & git commit --verbose --all --amend --no-edit }
New-Alias -Name gcan -Value GitCommitAllAmendNoEdit
function GitCheckOut { & git checkout $args }
New-Alias -Name gco  -Value GitCheckout
function GitLog { & git log --oneline --decorate --color $args }
New-Alias -Name gl   -Value GitLog
function GitMerge { & git merge $args }
New-Alias -Name gm   -Value GitMerge
function GitPush { & git push $args }
New-Alias -Name gp   -Value GitPush
function GitStatusShort { & git status -s $args }
New-Alias -Name gs   -Value GitStatusShort

# Set up other aliases
function EditPowerShellProfile { & code "$env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" }
New-Alias -Name eps  -Value EditPowerShellProfile
function EditVscodeSettings { & code "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" }
New-Alias -Name evc  -Value EditVscodeSettings

# Set up posh-git and oh-my-posh
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh init pwsh | Invoke-Expression

# Set up PSReadLine tab completion
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete                # Show menu of options for tab autocomplete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward   # Search history for current text using arrow keys
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward  # Search history for current text using arrow keys

# Set up PSReadLine predictions
Set-PSReadLineOption -HistorySaveStyle SaveAtExit   # Append history file when PowerShell exits
Set-PSReadLineOption -HistorySearchCursorMovesToEnd # Indicates that the cursor moves to the end of commands that you load from history by using a search
Set-PSReadLineOption -PredictionSource History      # Enable the predictive IntelliSense feature and use the PSReadLine history as the only source
Set-PSReadLineOption -PredictionViewStyle ListView  # Suggestions are rendered in a drop down list, and users can select using UpArrow and DownArrow

# Set up text coloring (only run this in the console and not in the ISE)
If (-Not (Test-Path Variable:PSise)) {
    Import-Module Get-ChildItemColor    
    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

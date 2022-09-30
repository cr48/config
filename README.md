# config
Various config files for Linux and Windows.

## Contents

- [PowerShell/Microsoft.PowerShell_profile.ps1](#powershellmicrosoftpowershellprofileps1)
- [VSCode/settings.json](#vscodesettingsjson)

## PowerShell/Microsoft.PowerShell_profile.ps1

### Overview

PowerShell profile that configures:

- Git aliases
- Other aliases for editing PowerShell profile and VSCode settings
- Posh-git and oh-my-posh
- PSReadLine tab completion
- PSReadLine predictions
- Text coloring

### Requirements

| Name                  | Link                                              | Description                                                   |
| --------------------- | ------------------------------------------------- | ------------------------------------------------------------- |
| posh-git              | https://github.com/dahlbyk/posh-git               | Provides git status summary information and auto-completion   |
| oh-my-posh            | https://ohmyposh.dev/docs/installation/windows    | PowerShell theme engine                                       |
| PSReadLine            | https://github.com/PowerShell/PSReadLine          | Enhances PowerShell command line editing experience           |
| Get-ChildItemColor    | https://github.com/joonro/Get-ChildItemColor      | Provides colorization of Get-ChildItem Cmdlet in PowerShell   |

## VSCode/settings.json

### Overview

Visual Studio Code settings file that configures:

- PowerShell color scheme and font
- PowerShell welcome message disabled
- WSL Ubuntu color scheme and font
- Placeholders for starting directory (commented out)
- Alert bell disabled
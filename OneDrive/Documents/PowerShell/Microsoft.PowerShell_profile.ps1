# import-module oh-my-posh
# Set-PoshPrompt -Theme powerlevel10k_lean
# Install-Module Pscx -Scope CurrentUser

# Starship prompt
Invoke-Expression (&starship init powershell)

# zoxide to quickly switch directories
Invoke-Expression (& { (zoxide init --hook 'pwd' powershell) -join "`n" })

# Fish like autocompletion
# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History

# Fzf for history etc.
# https://github.com/kelleyma49/PSFzf#psreadline-integration
# Install-Module -Name PSFzf 
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

# Aliases
New-Alias which get-command

<# Directly run commands without the wsl prefix! #>
# TODO: Less doesn't work correctly
# Register a function for each command.
# $commands = "awk", "grep", "head", "ls", "man", "sed", "seq", "ssh", "tail", "vim"
# $commands | ForEach-Object { Invoke-Expression @"
# Remove-Alias $_ -Force -ErrorAction Ignore
# function global:$_() {
#     for (`$i = 0; `$i -lt `$args.Count; `$i++) {
#         # If a path is absolute with a qualifier (e.g. C:), run it through wslpath to map it to the appropriate mount point.
#         if (Split-Path `$args[`$i] -IsAbsolute -ErrorAction Ignore) {
#             `$args[`$i] = Format-WslArgument (wsl.exe wslpath (`$args[`$i] -replace "\\", "/"))
#         # If a path is relative, the current working directory will be translated to an appropriate mount point, so just format it.
#         } elseif (Test-Path `$args[`$i] -ErrorAction Ignore) {
#             `$args[`$i] = Format-WslArgument (`$args[`$i] -replace "\\", "/")
#         }
#     }
#     if (`$input.MoveNext()) {
#         `$input.Reset()
#         `$input | wsl.exe $_ (`$args -split ' ')
#     } else {
#         wsl.exe $_ (`$args -split ' ')
#     }
# }
# "@
# }

function gio {
    $allArgs = $PsBoundParameters.Values + $args
    & {curl -L -s https://www.gitignore.io/api/$allArgs}
}

# Fish like autocompletion
# https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
Set-PSReadLineOption -EditMode Emacs

# Fzf for history etc.
# https://github.com/kelleyma49/PSFzf#psreadline-integration
# Install-Module -Name PSFzf 
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

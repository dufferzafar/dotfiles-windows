# Windows dotfiles

Configuration for tools I use on Windows.

I'm trying a different approach than my Unix dotfiles: instead of creating a separate folder for dotfiles & then creating symlinks to files that need to be tracked, I've created a git repo in my home directory (`%USERPROFILE%`) with gitignore set to `*`. I then add files that need to be tracked via `git add -f`

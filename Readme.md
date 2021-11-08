# Windows dotfiles

Configuration for tools I use on Windows.

I'm trying a different approach than my Unix dotfiles: instead of creating a separate folder for dotfiles & then creating symlinks to files that need to be tracked, I've created a git repo in my home directory (`%USERPROFILE%`) with gitignore set to `*`. I then add files that need to be tracked via `git add -f`

## Skipped

* Firefox
```bash
    $profile/addons.json
    $profile/cert_override.txt
    $profile/extension-preferences.json
    $profile/extensions.json
    $profile/extension-settings.json
    $profile/handlers.json
    $profile/prefs.js
    $profile/search.json.mozlz4
    $profile/chrome/userChrome.css
    $profile/xulstore.json
```

* Xyplorer
    * Figure out the dat format
```bash
    action.dat
    fvs.dat
    ks.dat - Keyboard Shortcuts
    lastini.dat
    pv.dat
    servers.dat
    tag.dat
    udc.dat
```

* DBeaver
* GitHub CLI `hosts.yml`

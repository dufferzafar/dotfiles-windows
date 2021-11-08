local wezterm = require 'wezterm';

return {
    exit_behavior="Close",
    color_scheme = "Molokai",

    window_decorations = "NONE",

    font = wezterm.font("Fira Code"),
    font_size = 14.0,

    enable_tab_bar = false,

    keys = {
        {key="l", mods="ALT", action="ShowLauncher"},
        {key="UpArrow", mods="SHIFT", action=wezterm.action{ScrollToPrompt=-1}},
        {key="DownArrow", mods="SHIFT", action=wezterm.action{ScrollToPrompt=1}},
        -- {key="LeftArrow", mods="SHIFT", action={SelectTextAtMouseCursor="SemanticZone"}},
    },
    launch_menu = {
        {
            label = "MingW 64", cwd = "/e/dev/dzfr",
            args = {"C:/msys64/msys2_shell.cmd", "-defterm", "-here", "-no-start", "-msys"}
        },
        {
            label = "MSYS", cwd = "/e/dev/dzfr",
            args = {"C:/msys64/msys2_shell.cmd", "-defterm", "-here", "-no-start", "-mingw64"}
        },
    },
    default_prog = {"C:/Users/duffe/AppData/Local/Microsoft/WindowsApps/pwsh.exe", "-NoLogo"},
}

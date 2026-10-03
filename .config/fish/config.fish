if not status is-interactive
    exit
end

fish_config theme choose base16-eighties

# if status is-interactive
#     eval (zellij setup --generate-auto-start fish | string collect)
# end
#

if status is-login
    if test -z "$WAYLAND_DISPLAY"; and test (tty) = /dev/tty1
        niri-session
        # start-hyprland
    end
end


# Added by Antigravity CLI installer
set -gx PATH "/home/qiumix/.local/bin" $PATH

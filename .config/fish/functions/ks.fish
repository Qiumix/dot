function ks
    if test (count $argv) -gt 0
        kd -s $argv &>>/dev/null &
        kd $argv
        return
    end

    set -l selected (sqlite3 ~/.cache/kdcache/kd_data.db "select query from en" \
      | fzf \
        --ansi \
        --height "60%" \
        --layout=reverse \
        --input-border=rounded \
        --list-border=rounded \
        --preview-border=rounded \
        --input-label="   input " \
        --list-label="   word lists " \
        --preview-label=" 󰇆 description " \
        --prompt=" 󱞩  " \
        --pointer="❯" \
        --marker="✓" \
        --preview "unbuffer kd {}" \
        --preview-window "right:65%:nowrap" \
        --color="bg+:#3c3836,fg+:#fbf1c7,hl:#fabd2f,hl+:#fabd2f" \
        --color="input-border:#83a598,list-border:#504945,preview-border:#b8bb26" \
        --color="prompt:#fe8019,pointer:#fb4934,marker:#b8bb26,label:#ebdbb2"
        )

    if test -n "$selected"
        kd -s $selected &>>/dev/null &
        kd $selected
    end
end

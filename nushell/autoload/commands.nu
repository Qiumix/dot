# autoload/commands.nu
#
# Custom commands migrated from ~/.config/fish/functions/ (fish 4.9.3).
# Files in the autoload directory are loaded on every interactive Nushell
# start, after config.nu.

# fish: functions/start_docker.fish
def start_docker [] {
    sudo systemctl start docker.service
    sudo systemctl start docker.socket
}

# fish: functions/k.fish — dictionary lookup via kd + fzf.
# `--wrapped` forwards kd's own flags, like fish's `kd $argv`.
def --wrapped k [...args: string] {
    if not ($args | is-empty) {
        kd ...$args
    } else {
        let selected = (sqlite3 ~/.cache/kdcache/kd_data.db "select query from en"
            | fzf
                --ansi
                --preview "unbuffer kd {}"
                --height "60%"
                --prompt "select> "
                --layout=reverse
                --input-border=rounded
                --list-border=rounded
                --preview-border=rounded
                --input-label " \u{ea6d}  input "
                --list-label " \u{eb9c}  word lists "
                --preview-label " \u{f01c6} description "
                --pointer "\u{276f}"
                --marker "\u{2713}"
                --border=rounded
                --preview-window "right:65%:nowrap"
                --color "bg+:#3c3836,fg+:#fbf1c7,hl:#fabd2f,hl+:#fabd2f"
                --color "input-border:#83a598,list-border:#504945,preview-border:#b8bb26"
                --color "prompt:#fe8019,pointer:#fb4934,marker:#b8bb26,label:#ebdbb2")

        if not ($selected | is-empty) {
            kd ...($selected | split row " ")
        }
    }
}

# fish: functions/ks.fish — dictionary lookup with fzf preview of the result.
# `--wrapped` forwards kd's own flags, like fish's `kd $argv`.
def --wrapped ks [...args: string] {
    if not ($args | is-empty) {
        job spawn { kd -s ...$args out+err> /dev/null } | ignore
        kd ...$args
    } else {
        let selected = (sqlite3 ~/.cache/kdcache/kd_data.db "select query from en"
            | fzf
                --ansi
                --height "60%"
                --layout=reverse
                --input-border=rounded
                --list-border=rounded
                --preview-border=rounded
                --input-label " \u{ea6d}  input "
                --list-label " \u{eb9c}  word lists "
                --preview-label " \u{f01c6} description "
                --prompt " \u{f17a9}  "
                --pointer "\u{276f}"
                --marker "\u{2713}"
                --preview "unbuffer kd {}"
                --preview-window "right:65%:nowrap"
                --color "bg+:#3c3836,fg+:#fbf1c7,hl:#fabd2f,hl+:#fabd2f"
                --color "input-border:#83a598,list-border:#504945,preview-border:#b8bb26"
                --color "prompt:#fe8019,pointer:#fb4934,marker:#b8bb26,label:#ebdbb2")

        if not ($selected | is-empty) {
            job spawn { kd -s $selected out+err> /dev/null } | ignore
            kd $selected
        }
    }
}

# fish: function y (conf.d/tool.fish) — yazi wrapper that follows the cwd.
# `--wrapped` lets yazi's own flags through, like fish's `yazi $argv`.
def --env --wrapped y [...args: string] {
    let tmp = (mktemp -t "yazi-cwd.XXXXXX")
    yazi ...$args --cwd-file $tmp
    # `open` infers a byte stream for the empty file yazi leaves behind when it
    # exits without writing a directory, so read the bytes and decode them.
    let cwd = (open --raw $tmp | decode | str trim)
    if $cwd != "" and $cwd != $env.PWD {
        cd $cwd
    }
    rm -f $tmp
}

# fish: alias gl (conf.d/abbr.fish) — `git log` with a fixed graph/date format.
# An abbreviation cannot express "fixed arguments that still accept more", so
# this becomes a command. `--wrapped` forwards extra flags and revisions
# (`gl -p`, `gl HEAD~3`) exactly like appending to the fish alias.
def --wrapped gl [...args: string] {
    git log --graph --decorate --all --pretty=format:'%C(yellow)%h%Creset %C(cyan)%ad%Creset %s %Cgreen(%an)%Creset%C(auto)%d%Creset' --date=format:'%m-%d %H:%M' ...$args
}

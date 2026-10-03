source <(starship init zsh)
source <(zoxide init zsh)
source <(fzf --zsh)

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"

    if [[ -f "$tmp" ]]; then
        local cwd="$(cat "$tmp")"
        if [[ -n "$cwd" && "$cwd" != "$PWD" ]]; then
            builtin cd -- "$cwd"
            print -s "cd -- ${(q)cwd}"
        fi
        rm -f -- "$tmp"
    fi
    [[ -o interactive ]] && zle && zle reset-prompt
    return 0
}

function _shortcut_yazi_wrapper() {
    zle push-line
    y
    zle get-line
    zle reset-prompt
}

zle -N _shortcut_yazi_wrapper
bindkey '^F' _shortcut_yazi_wrapper

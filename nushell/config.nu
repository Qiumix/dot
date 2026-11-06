# config.nu
#
# Nushell settings, migrated from ~/.config/fish (fish 4.9.3):
#   config.fish, conf.d/abbr.fish, conf.d/bind.fish
# Commands ported from fish functions/ and completions/ live in autoload/.
# See https://www.nushell.sh/book/configuration.html

# ---------------------------------------------------------------------------
# Line editor
# ---------------------------------------------------------------------------
# fish: set -g fish_greeting ""
$env.config.show_banner = false
# fish: set -x fish_key_bindings fish_vi_key_bindings
$env.config.edit_mode = "vi"

# ---------------------------------------------------------------------------
# Keybindings (fish: conf.d/bind.fish)
# ---------------------------------------------------------------------------
# fish additionally bound ctrl-p/up and ctrl-n/down to history prefix search in
# insert mode. Nushell's ↑/↓ (and Ctrl+P/Ctrl+N) already walk the history in
# either edit mode, so no equivalent binding is needed here.
$env.config.keybindings ++= [
    {
        name: yazi_ctrl_f
        modifier: control
        keycode: char_f
        mode: [vi_insert]
        event: { send: executehostcommand, cmd: "y" }
    }
    {
        name: yazi_alt_j
        modifier: alt
        keycode: char_j
        mode: [vi_insert]
        event: { send: executehostcommand, cmd: "y" }
    }
    {
        name: edit_pipe_output
        modifier: control_shift
        keycode: char_l
        mode: [vi_insert]
        event: { send: executehostcommand, cmd: "nvim -c 'set ft=nushell' /tmp/pipe-output.txt" }
    }
]

# ---------------------------------------------------------------------------
# Abbreviations (fish: conf.d/abbr.fish)
# ---------------------------------------------------------------------------
# Expanded when followed by space or enter. Ported with these adaptations:
#   * fish `cmd &>/dev/null &`   -> `out+err> /dev/null` (no `&` in Nushell)
#   * fish `a && b` / `a and b`  -> `a; b`
#   * fish `$(...)`              -> `(...)`
$env.config.abbreviations = {
    # filesystem / navigation
    "H": "cd ~/"
    "s": "sudo"
    "...": "../.."
    "....": "../../.."
    ".....": "../../../.."
    "null": "out+err> /dev/null"
    "spawn": "niri msg action spawn-sh --"
    "fcd": "cd (fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .meteor --exclude .nv | fzf)"

    # common commands
    "ofc": "onlyoffice-desktopeditors"
    "py": "python"
    "cls": "clear"
    "nv": "nvim"
    "n": "nvim"
    "nf": "nvim (fzf)"
    "cf": "cd (fzf --walker=dir)"
    "oc": "opencode"
    "ns": "niri-session"
    "h": "helix"
    "hx": "helix"
    "svim": "sudo -E nvim"
    "sv": "sudo -E nvim"
    "lc": "nvim leetcode.nvim"
    "em": "emacs -nw"
    "co": "cargo"
    "aria": "aria2c -c -s64 -x16"
    "ff": "print \"\"; fastfetch --logo-type sixel --logo ~/Pictures/avator/wheel.png"
    "idea": "intellij-idea-ultimate-edition"

    # eza
    "ll": "eza -alh --icons --git"
    "lt": "eza --icons --git -T"
    "e": "eza --icons"
    "l": "eza --icons"

    # git
    "g": "git"
    "gd": "git diff"
    "gdh": "git diff HEAD"
    "gs": "git status"
    "gsh": "git stash"
    "gsa": "git stash apply"
    "gsm": "git stash -m"
    "grc": "git rm --cached"
    "gf": "git fetch"
    "gl": "tig --all"
    "gcl": "git clone"
    "gcls": "git clone --single-branch --depth 1"
    "gac": "git add .; git commit -m"
    "ga": "git add"
    "ga.": "git add ."
    "gb": "git branch"
    "gr": "git remote"
    "gre": "git reset"
    "grh": "git reset --hard"
    "gbr": "git branch -r"
    "gch": "git checkout"
    "gchh": "git checkout HEAD --"
    "gcb": "git checkout -b"
    "lg": "lazygit"
    "lgit": "lazygit"
    "gc": "git commit"
    "gcm": "git commit -m"
    "gca": "git commit --amend --no-edit"
    "gpl": "git pull"
    "gpla": "git pull --all"
    "gp": "git push"
    "gpf": "git push -f"

    # pacman
    "P": "pacman"
    "S": "sudo pacman -S --needed"
    "Sn": "sudo pacman -S --needed --noconfirm"
    "Ss": "pacman -Ss"
    "Si": "pacman -Si"
    "Syu": "sudo pacman -Syu --needed"
    "Syun": "sudo pacman -Syu --needed --noconfirm"
    "Syyu": "sudo pacman -Syyu --needed"
    "Syyun": "sudo pacman -Syyu --needed --noconfirm"
    "Rns": "sudo pacman -Rns"
    "Q": "pacman -Q"
    "Qs": "pacman -Qs"
    "Qi": "pacman -Qi"
    "Ql": "pacman -Ql"
    "Qo": "pacman -Qo"
    "Qe": "pacman -Qe"

    # paru
    "p": "paru"
    "F": "paru -F"
    "pS": "paru -S --needed"
    "pSs": "paru -Ss"
    "pSi": "paru -Si"
    "pRns": "paru -Rns"
    "pSyu": "paru -Syu --needed"
    "pSyyu": "paru -Syyu --needed"
    "pQs": "paru -Qs"
    "pQi": "paru -Qi"
    "pQe": "paru -Qe"
}

# fish: alias yay paru
alias yay = paru

# ---------------------------------------------------------------------------
# Notes on deliberately unmigrated fish settings
# ---------------------------------------------------------------------------
# * `fish_config theme choose base16-eighties` (config.fish) never took effect:
#   fish 4.9.3 resolves it to "unknown color theme" and stored no fish_color_*
#   universal variables, so Nushell keeps its default color_config.
# * `fzf --fish | source` and `zellij setup --generate-completion fish` have no
#   Nushell equivalent (neither tool emits Nushell completions).

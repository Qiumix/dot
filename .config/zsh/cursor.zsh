bindkey -v

function zle-keymap-select() {
    case $KEYMAP in
        vicmd)      print -n -- "\e[2 q" ;;
        main|viins) print -n -- "\e[6 q" ;;
    esac
}
zle -N zle-keymap-select
export KEYTIMEOUT=1

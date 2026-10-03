# vim:se ft=zsh:
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-abbr/zsh-abbr.zsh

autoload -Uz compinit && compinit

zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"

setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt interactive_comments
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
ZSH_HIGHLIGHT_STYLES[comment]='fg=244'

source ~/.config/zsh/tool.zsh
source ~/.config/zsh/cursor.zsh
source ~/.config/zsh/env.zsh

bind -M insert ctrl-p history-prefix-search-backward
bind -M insert up history-prefix-search-backward
bind -M insert ctrl-n history-prefix-search-forward
bind -M insert down history-prefix-search-forward
# bind -M insert ctrl-w kill-bigword-vi
bind -M insert ctrl-f y
bind -M insert alt-j y
bind -M insert ctrl-shift-l "nvim -c 'set ft=fish' /tmp/pipe-output.txt"

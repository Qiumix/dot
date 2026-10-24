#!/usr/bin/env fish

maa list \
    | grep -v '\.taplo$' \
    | grep -v 'run$' \
    | grep -v 'tsk$' \
    | sort --human-numeric-sort \
    | fzf --layout=reverse \
    --prompt="task> " \
    --pointer="❯" \
    --marker="✓" \
    --input-label="󰒅 select task " \
    --list-label=" task lists " \
    --height "53%" \
    --border=rounded \
    --input-border=rounded \
    --list-border=rounded \
    | xargs -r maa run -v

#!/usr/bin/env fish

set -l prog $argv[1]
set -l args $argv[2..-1]

set -l pids (pgrep -f "$prog" | grep -v $fish_pid)

if test -n "$pids"
    echo $pids | xargs kill
else
    eval nohup $args >/dev/null 2>&1 &
    disown
end

if type -q zellij
    zellij setup --generate-completion fish | source
end

if type -q starship
    starship init fish | source
end

if type -q zoxide
    zoxide init fish | source
end

if type -q tv
    tv init fish | source
end

if type -q fzf
    fzf --fish | source
end

if type -q wasm-tools
    wasm-tools completion fish | source
end

# if type -q opencode
#     opencode completion fish | source
# end

# yazi begin
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
        builtin history append "cd $cwd"
    end
    rm -f -- "$tmp"
    commandline -f repaint
end
# yazi end

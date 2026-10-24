function __init_tool
    if type -q $argv[1]
        $argv | source
    end
end

__init_tool zellij setup --generate-completion fish
__init_tool starship init fish
__init_tool zoxide init fish
__init_tool tv init fish
__init_tool fzf --fish
__init_tool wasm-tools completion fish

# yazi begin
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd" && builtin history append "cd $cwd"
        history --merge
    end
    rm -f -- "$tmp"
    commandline -f repaint
end
# yazi end

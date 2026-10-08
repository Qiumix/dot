abbr -a H 'cd ~/'
abbr -a s sudo

abbr --add "..." -- ../..
abbr -a "...." -- ../../..
abbr -a "....." -- ../../../..

abbr -a null "&>/dev/null &"

abbr -a spawn "niri msg action spawn-sh --"

# common alias
abbr -a ofc onlyoffice-desktopeditors
abbr -a py python
abbr -a cls clear
abbr -a nv nvim
abbr -a nf 'nvim (fzf)'
abbr -a n nvim
abbr -a cf 'cd (fzf --walker=dir)'
abbr -a oc opencode
abbr -a ns niri-session
abbr -a h helix
abbr -a hx helix
abbr -a svim "sudo -E nvim"
abbr -a sv "sudo -E nvim"
abbr -a lc 'nvim leetcode.nvim'
abbr -a em 'emacs -nw'
abbr -a co cargo
abbr -a ff 'echo && fastfetch --logo-type sixel --logo ~/Pictures/avator/wheel.png'
abbr -a aria "aria2c -c -s64 -x16"
abbr -a fcd 'cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .meteor --exclude .nv | fzf)'
alias fpinfo "pacman -Qq | /usr/bin/fzf --prompt='package info: ' --preview-window=70%:bottom: --preview 'pacman -Qi {}'"
abbr -a ll 'eza -alh --icons --git'
abbr -a lt 'eza --icons --git -T'
abbr -a e 'eza --icons'
abbr -a l 'eza --icons'
abbr -a idea intellij-idea-ultimate-edition

# git command alias
abbr -a g git
abbr -a gd 'git diff'
abbr -a gdh 'git diff HEAD'
abbr -a gs 'git status'
abbr -a gsh 'git stash'
abbr -a gsa 'git stash apply'
abbr -a gsm 'git stash -m'
abbr -a grc 'git rm --cached'
abbr -a gf 'git fetch'
# abbr -a gl 'git log --oneline --graph --decorate --all'
abbr -a gl tig --all
abbr -a gcl 'git clone'
abbr -a gcls 'git clone --single-branch --depth 1'
abbr -a gac 'git add . and git commit -m'
abbr -a ga 'git add'
abbr -a ga. 'git add .'
abbr -a gb 'git branch'
abbr -a gr 'git remote'
abbr -a gre 'git reset'
abbr -a grh 'git reset --hard'
abbr -a gbr 'git branch -r'
abbr -a gch 'git checkout'
abbr -a gchh 'git checkout HEAD --'
abbr -a gcb 'git checkout -b'
abbr -a lg lazygit
abbr -a lgit lazygit
abbr -a gc 'git commit'
abbr -a gcm 'git commit -m'
abbr -a gca 'git commit --amend --no-edit'
abbr -a gpl 'git pull'
abbr -a gpla 'git pull --all'
abbr -a gp 'git push'
abbr -a gpf 'git push -f'

# package manager
abbr -a P pacman
abbr -a yay paru
alias yay paru
abbr -a p paru

## pacman
abbr -a S 'sudo pacman -S --needed'
abbr -a Sn 'sudo pacman -S --needed --noconfirm'
abbr -a Ss 'pacman -Ss'
abbr -a Si 'pacman -Si'
abbr -a Syu 'sudo pacman -Syu --needed'
abbr -a Syun 'sudo pacman -Syu --needed --noconfirm'
abbr -a Syyu 'sudo pacman -Syyu --needed'
abbr -a Syyun 'sudo pacman -Syyu --needed --noconfirm'
abbr -a Rns 'sudo pacman -Rns'
abbr -a Q 'pacman -Q'
abbr -a Qs 'pacman -Qs'
abbr -a Qi 'pacman -Qi'
abbr -a Ql 'pacman -Ql'
abbr -a Qo 'pacman -Qo'
abbr -a Qe 'pacman -Qe'

## paru
abbr -a F 'paru -F'
abbr -a pS 'paru -S --needed'
abbr -a pSs 'paru -Ss'
abbr -a pSi 'paru -Si'
abbr -a pRns 'paru -Rns'
abbr -a pSyu 'paru -Syu --needed'
abbr -a pSyyu 'paru -Syyu --needed'
abbr -a pQs 'paru -Qs'
abbr -a pQi 'paru -Qi'
abbr -a pQe 'paru -Qe'

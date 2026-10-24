abbr -a H 'cd ~/'
abbr -a s sudo

abbr --add "..." -- ../..
abbr -a "...." -- ../../..
abbr -a "....." -- ../../../..

abbr -a null "&>/dev/null &"

abbr -a spawn "niri msg action spawn-sh --"

# common alias
abbr -a aria "aria2c -c -s64 -x16"
abbr -a cf 'cd (fzf --walker=dir)'
abbr -a cls clear
abbr -a co cargo
abbr -a e 'eza --icons'
abbr -a em 'emacs -nw'
abbr -a fcd 'cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .meteor --exclude .nv | fzf)'
abbr -a ff 'echo && fastfetch --logo-type kitty --logo ~/Pictures/avator/wheel.png'
abbr -a h helix
abbr -a hx helix
abbr -a idea intellij-idea-ultimate-edition
abbr -a lc 'nvim leetcode.nvim'
abbr -a l 'eza --icons'
abbr -a ll 'eza -alh --icons --git'
abbr -a lt 'eza --icons --git -T'
abbr -a nf 'nvim (fzf)'
abbr -a n nvim
abbr -a ns niri-session
abbr -a nv nvim
abbr -a oc opencode
abbr -a ofc onlyoffice-desktopeditors
abbr -a py python
abbr -a svim "sudo -E nvim"
abbr -a sv "sudo -E nvim"
abbr -a dae_start "sudo systemctl start dae.service"
abbr -a dae_stop "sudo systemctl stop dae.service"

# git command alias
abbr -a g git
abbr -a ga 'git add'
abbr -a ga. 'git add .'
abbr -a gac 'git add . and git commit -m'
abbr -a gb 'git branch'
abbr -a gbr 'git branch -r'
abbr -a gc 'git commit'
abbr -a gca 'git commit --amend --no-edit'
abbr -a gcb 'git checkout -b'
abbr -a gch 'git checkout'
abbr -a gchh 'git checkout HEAD --'
abbr -a gcl 'git clone'
abbr -a gcls 'git clone --single-branch --depth 1'
abbr -a gcm 'git commit -m'
abbr -a gd 'git diff'
abbr -a gdh 'git diff HEAD'
abbr -a gf 'git fetch'
abbr -a gp 'git push'
abbr -a gpf 'git push -f'
abbr -a gpl 'git pull'
abbr -a gpla 'git pull --all'
abbr -a gr 'git remote'
abbr -a grc 'git rm --cached'
abbr -a gre 'git reset'
abbr -a grh 'git reset --hard'
abbr -a gs 'git status'
abbr -a gsa 'git stash apply'
abbr -a gsh 'git stash'
abbr -a gsm 'git stash -m'
abbr -a lg lazygit
abbr -a lgit lazygit
alias gl "git log --graph --decorate --all \
  --pretty=format:'%C(yellow)%h%Creset %C(cyan)%ad%Creset %s %Cgreen(%an)%Creset%C(auto)%d%Creset' \
  --date=format:'%m-%d %H:%M'"

# package manager
abbr -a P pacman
abbr -a p paru
abbr -a yay paru
alias yay paru

## pacman
abbr -a Q 'pacman -Q'
abbr -a Qe 'pacman -Qe'
abbr -a Qi 'pacman -Qi'
abbr -a Ql 'pacman -Ql'
abbr -a Qo 'pacman -Qo'
abbr -a Qs 'pacman -Qs'
abbr -a Rns 'sudo pacman -Rns'
abbr -a S 'sudo pacman -S --needed'
abbr -a Si 'pacman -Si'
abbr -a Sn 'sudo pacman -S --needed --noconfirm'
abbr -a Ss 'pacman -Ss'
abbr -a Syu 'sudo pacman -Syu --needed'
abbr -a Syun 'sudo pacman -Syu --needed --noconfirm'
abbr -a Syyu 'sudo pacman -Syyu --needed'
abbr -a Syyun 'sudo pacman -Syyu --needed --noconfirm'

## paru
abbr -a F 'paru -F'
abbr -a pQe 'paru -Qe'
abbr -a pQi 'paru -Qi'
abbr -a pQs 'paru -Qs'
abbr -a pRns 'paru -Rns'
abbr -a pS 'paru -S --needed'
abbr -a pSi 'paru -Si'
abbr -a pSs 'paru -Ss'
abbr -a pSyu 'paru -Syu --needed'
abbr -a pSyyu 'paru -Syyu --needed'

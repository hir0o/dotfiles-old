## ========== General ==========
mkcd() { mkdir $@; cd $@; }
alias vz='nvim ${DOTPATH}/.zshrc'
alias srz='source ~/.zshrc'
alias ...='cd ../../'
alias op='open ./'
alias oplg='open https://github.com/hir0o/log/issues'
alias rmds='find . -name '.DS_Store' -type f -ls -delete'
alias ll='exa -alhF --icons --git-ignore --group-directories-first --time-style=long-iso --ignore-glob=".git|node_modules"'
alias bat='bat --color=always --style=header,grid'
alias cl='cd $(ls -d */ | fzf)'
alias edd='vim $(ghq root)/github.com/mkmk4423/dotfiles'

source ./rails.zsh

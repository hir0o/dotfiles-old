export DOTPATH=~/ghq/github.com/hir0o/dotfiles

## ----------------------------------------
##	ENV
## ----------------------------------------
export EDITOR=nvim
export TERM=xterm-256color
export CVSEDITOR="${EDITOR}"
export SVN_EDITOR="${EDITOR}"
export GIT_EDITOR="${EDITOR}"
export HOMEBREW_NO_AUTO_UPDATE=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

## ----------------------------------------
##	Language
## ----------------------------------------
export LANGUAGE="ja_JP.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

## ----------------------------------------
##	Setopt
## ----------------------------------------
setopt auto_cd              # cdなしでcdする
setopt no_beep              # ビープ音を鳴らさない
setopt globdots             # 明確なドットの指定なしで.から始まるファイルをマッチ
setopt auto_list            # 曖昧な補完で、自動的に選択肢をリストアップ
setopt auto_menu            # タブキーの連打で自動的にメニュー補完
setopt auto_pushd           # 普通のcdでもスタックに入れる
setopt list_packed          # 補完候補を詰めて表示
setopt share_history        # 同時に起動したzshの間でヒストリを共有する
setopt hist_ignore_dups     # 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_all_dups # 同じコマンドをヒストリに残さない
export SAVEHIST=100000      # historyの上限
export HISTSIZE=100000      # historyの上限

## ----------------------------------------
##	Aliaces
## ----------------------------------------

## ========== General ==========
mkcd() { mkdir $@; cd $@; }
alias vz='nvim ${DOTPATH}/.zshrc'
alias srz='source ~/.zshrc'
alias ...='cd ../../'
alias op='open ./'
alias oplg='open https://github.com/hir0o/log/issues'
alias rmds='find . -name '.DS_Store' -type f -ls -delete'
# alias ll='exa -alhF --icons --git-ignore --group-directories-first --time-style=long-iso --ignore-glob=".git|node_modules"'
alias ll='exa -alhF --icons --group-directories-first --time-style=long-iso'
alias bat='bat --color=always --style=header,grid'
alias cl='cd $(ls -d */ | fzf)'
alias edd='vim $(ghq root)/github.com/hir0o/dotfiles'
alias tma='tmux a || tmux'
alias py='python3'
alias b='bat'
alias vim='nvim'

source "$DOTPATH/aliases/aliase.zsh"
# source "$DOTPATH/aliases/docker.zsh"
# source "$DOTPATH/aliases/ffmpg.zsh"
source "$DOTPATH/aliases/git.zsh"
# source "$DOTPATH/aliases/go.zsh"
# source "$DOTPATH/aliases/heroku.zsh"
# source "$DOTPATH/aliases/mysql.zsh"
# source "$DOTPATH/aliases/npm.zsh"
# source "$DOTPATH/aliases/rails.zsh"
# source "$DOTPATH/aliases/system.zsh"
source "$DOTPATH/aliases/vscode.zsh"


## ----------------------------------------
## Other
## ----------------------------------------

## ========== FZF ==========
export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git' -g '!node_modules' --max-columns 200"
export FZF_DEFAULT_OPTS='--reverse --color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229 --color info:150,prompt:110,spinner:150,pointer:167,marker:174'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


## ========== p10k ==========
source ~/powerlevel10k/powerlevel10k.zsh-theme
zstyle ':prezto:module:prompt' theme 'powerlevel10k'
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh


## ========== Gcloud ==========
# if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc'; fi
# if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc'; fi

## ========== Fuzzy ==========
export PATH="/Users/shibuyahiroyuki/git-fuzzy/bin:$PATH"
export GIT_FUZZY_STATUS_ADD_KEY='Ctrl-A'
export GIT_FUZZY_STATUS_RESET_KEY='Ctrl-R'

## ========== zsh-syntax-highlighting ==========
[ -f ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## ========== zsh-autosuggestions ==========
[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

## ========== anyenv ==========
eval "$(anyenv init -)"
export PATH="$HOME/.anyenv/bin:$PATH"

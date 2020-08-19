
source ~/powerlevel10k/powerlevel10k.zsh-theme


# パス
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

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


## ----------------------------------------
## Alias
## ----------------------------------------
## ========== General ==========
mkcd() { mkdir $@; cd $@; }
alias op='open ./'
alias rmds='fd .DS_Store -exec rm'
alias ll='exa -alhF --git-ignore --group-directories-first --time-style=long-iso'
alias ll2='exa -alhF --git-ignore --group-directories-first --time-style=long-iso -T -L=2 --ignore-glob=".git|node_modules"'
alias ll3='exa -alhF --git-ignore --group-directories-first --time-style=long-iso -T -L=3 --ignore-glob=".git|node_modules"'


## ========== Docker ==========
alias d='docker'
alias dlsc='docker container ls'
alias dlsi='docker image ls'
alias dc='docker-compose'
alias dps='docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}"'
alias de='docker exec -it `dps | peco | cut -f 1` /bin/bash' # dockerコンテナ内に入る


## ========== Rails ==========
alias r='rails'
alias rc='rails console'
alias rs='rails server'
alias rmig='rails db:migrate'
alias rres='rails db:reset'

## ========== Git ==========
alias g='git'
# ghqコマンドをgitで使える
function git(){hub "$@"}
# 変更を全てリセット
function gres() {
    git checkout -- . && git clean -df .
}
# gitのカレントブランチ名を変更する
function grename() {
    read -p "type new branch name >> " nb;
    cb = git branch --contains=HEAD;
    git branch -m ${cb} ${nb};
}
# ブランチを切ってチェックアウトする
function gcut() {
    read -p "type old branch >> " hn;
    read -p "type new branch name >> " nb;
    git checkout -b ${nb} ${hn};
}
# ブランチを作成し移動
function gfco() {
    read nb"?type branch name >> ";
    git branch ${nb};
    git checkout ${nb};
}
# commit -m
function gcmm() {
    git add -A && git status && git commit -m $@;
}
# commit
function gcm() {
    git add -A && git status && git commit;
}
# git-ftpの初期設定
function gfinii() {
    echo ""
}
# ghqで管理しているリポジトリに移動
alias cg='cd $(ghq root)/$(ghq list | peco)'
# vscodeで開く
alias ccg='code $(ghq root)/$(ghq list | peco)'


## ========== Mysql ==========
alias scn='mycli -u root'
alias sstart='mysql.server start'
alias sst='mysql.server status'
alias sstop='mysql.server stop'

## ========== npm ==========
alias n='npm'
alias ndev='npm run dev'
alias nser='npm run serve'

## ========== Mac OS ==========
# スクリーンショットの保存ディレクトリを変更
function ssdir() {
    read dir"?type screencapture directory >> ";
    defaults write com.apple.screencapture location ${dir};killall SystemUIServer
}


## ----------------------------------------
##	FZF
## ----------------------------------------
export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git' -g '!node_modules' --max-columns 200"
export FZF_DEFAULT_OPTS='--reverse --color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229 --color info:150,prompt:110,spinner:150,pointer:167,marker:174'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


## ----------------------------------------
## p10k
## ----------------------------------------
source ~/powerlevel10k/powerlevel10k.zsh-theme
zstyle ':prezto:module:prompt' theme 'powerlevel10k'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


## ----------------------------------------
## Gcloud
## ----------------------------------------
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc'; fi

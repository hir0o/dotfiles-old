
source ~/powerlevel10k/powerlevel10k.zsh-theme

# 追加したソフトやパッケージ用のコマンドのパス
export PATH=$HOME/bin:/usr/local/bin:$PATH

# # パス
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.pyenv/shims:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
function git(){hub "$@"} # hubをgitで使えるようにする


ZSH_THEME="candy"

# alias
mkcd() { mkdir $@; cd $@; }
alias op='open .'

## tree系 {{
alias ll='exa -alhF --git-ignore --group-directories-first --time-style=long-iso'
alias ll2='exa -alhF --git-ignore --group-directories-first --time-style=long-iso -T -L=2 --ignore-glob=".git|node_modules"'
alias ll3='exa -alhF --git-ignore --group-directories-first --time-style=long-iso -T -L=3 --ignore-glob=".git|node_modules"'
# }}


## docker {{
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}"'
alias de='docker exec -it `dps | peco | cut -f 1` /bin/bash' # dockerコンテナ内に入る
# }}


## ruby {{
alias r='rails'
alias rc='rails console'
alias rs='rails server'
alias rmig='rails db:migrate'
alias rres='rails db:reset'
# }}

## git {{
alias g='git'

# 変更を全てリセット
function gres() {
    git checkout . && git clean -df .
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
# commit
function gcom() {
    git add -A && git status && git commit -m $@;
}
# git-ftpの初期設定
function gfinii() {
    echo ""
}
# ghqで管理しているリポジトリに移動
alias cg='cd $(ghq root)/$(ghq list | peco)'
# }}


##  MySQL {{
alias scn='mycli -u root'
alias sstart='mysql.server start'
alias sst='mysql.server status'
alias sstop='mysql.server stop'
## }}


# 文字コードの指定
export LANG=ja_JP.UTF-8
# cdなしでcdする
setopt auto_cd
# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history # 同時に起動したzshの間でヒストリを共有する
setopt hist_ignore_dups # 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_all_dups # 同じコマンドをヒストリに残さない

zstyle ':prezto:module:prompt' theme 'powerlevel10k'source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
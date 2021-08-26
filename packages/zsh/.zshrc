# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NODE_PATH="$HOME/.anyenv/envs/nodenv/versions/14.15.5/lib/node_modules"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export DOTPATH=~/ghq/github.com/mkmk4423/dotfiles

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
##
## ----------------------------------------
export SAVEHIST=100000      # historyの上限
export HISTSIZE=100000      # historyの上限


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
## Other
## ----------------------------------------

## ========== FZF ==========
export FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git' -g '!node_modules' --max-columns 200"
export FZF_DEFAULT_OPTS='--reverse --color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229 --color info:150,prompt:110,spinner:150,pointer:167,marker:174'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


## ========== p10k ==========
source ~/powerlevel10k/powerlevel10k.zsh-theme
zstyle ':prezto:module:prompt' theme 'powerlevel10k'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


## ========== Gcloud ==========
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shibuyahiroyuki/google-cloud-sdk/completion.zsh.inc'; fi

## ========== Fuzzy ==========
export PATH="/Users/shibuyahiroyuki/git-fuzzy/bin:$PATH"
export GIT_FUZZY_STATUS_ADD_KEY='Ctrl-A'
export GIT_FUZZY_STATUS_RESET_KEY='Ctrl-R'

## ========== zsh-syntax-highlighting ==========
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## ========== zsh-autosuggestions ==========
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(anyenv init -)"


## ========== tmux ==========
tmux ls > /dev/null
if [ $? -eq 1 -a -z "$TMUX" ]; then
    exec tmux
elif [ -z "$TMUX" ] ; then
    exec tmux attach
else
    echo "sessions should be nested with care."
fi

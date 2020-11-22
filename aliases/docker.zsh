alias d='docker'
compdef _docker d
alias dc='docker-compose'
compdef _docker-compose dc

## ----------------------------------------
##	Docker Container
## ----------------------------------------
alias dpl='docker pull'
alias dlsc='docker container ls'
alias drmc='docker container rm'
alias dtop='docker container top'
alias dlog='docker container logs'
alias dstop='docker container stop'
alias dport='docker container port'
alias drun='docker container run -it'
alias dstats='docker container stats'

## ----------------------------------------
##	Docker Compose
## ----------------------------------------
alias dcup='docker-compose up -d'
alias dcdown='docker-compose down'
alias dcdowna='docker-compose down -v'
alias dccps='docker-compose ps'
alias dcyml='docker-compose -f'
alias dctop='docker-compose top'
alias dcbuild='docker-compose build'
alias dcrmi='docker-compose down --rmi'

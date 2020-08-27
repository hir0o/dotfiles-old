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
alias dstart='docker container start'
alias dexec='docker container exec -it'
alias dstart='docker container start -ai'
# alias dinspectc='docker container inspect'
# alias dcps='docker ps -a --format="table {{.Image}}\t{{.Status}}\t{{.Names}}"'
# alias dprunec='docker stop $(docker ps -q) && docker rm $(docker ps -aq)'
# alias dipc='docker container inspect --format "{{ .NetworkSettings.IPAddress }}"'
# alias dnginx='docker run --publish 80:80 --name proxy --detach nginx'
# alias dapache='docker run --publish 8080:80 --name webserver -detach httpd'
# alias dmysql='docker run --publish 3306:3306 --name db --env MYSQL_ROOT_PASSWORD=pass -detach mysql'

## ----------------------------------------
##	Docker Image
## ----------------------------------------
alias dlsi='docker image ls'
alias drmi='docker image rm'
alias dtag='docker image tag'
alias dpush='docker image push'
alias dprunei='docker image prune'
alias dprunea='docker system prune'
alias dhistoryi='docker image history'
alias dinspecti='docker inspect image'
alias drmia='docker rmi -f `docker images -aq`'
function dbuild() {
    read name"?type name : ";
    docker image build -t ${name} .;
}

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

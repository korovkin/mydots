export EMAIL='korovkin@gmail.com'
export REPLYTO=$EMAIL
export HISTSIZE=10000
export HISTFILESIZE=10000
export EDITOR=vim
export SVN_EDITOR=vim
export HGEDITOR=vim

alias ls='ls -G'
alias ll='ls -la'
alias la='ls -lHG'
alias lsc='ls -FHG'
alias grep="grep --color"
alias no_function="sed 's/,Function,\"[^\"]*\",/,/;s/,F,\"[^\"]*\",/,/'"
alias no_time="sed 's/^.*\,Time\,//'"
alias hdump="hexdump -v -C "
alias battery="pmset -g batt"
alias batt="pmset -g batt"
alias awk1="awk '{print \$1}'"
alias awk2="awk '{print \$2}'"
alias awk3="awk '{print \$3}'"
alias awklast="rev | awk1 | rev"
alias vimod="vim \`git st | grep -v '??' | rev | awk1 | rev\`"
alias gvimdiff="mvim -d -g"
alias mvimdiff="mvim -d -g"

alias docker_run="docker run -it --entrypoint /bin/bash $1"
alias docker_prune="docker system prune -a"
alias docker_volumes_prune="docker volume prune -f"
alias docker_images="docker images"
alias docker_ps="docker ps"
alias docker_kill_daemon="killall Docker && sleep 3 && open /Applications/Docker.app"

function docker_removecontainers() {
    docker stop $(docker ps -aq)
    docker rm $(docker ps -aq)
}

function docker_armageddon() {
    removecontainers
    docker network prune -f
    docker rmi -f $(docker images --filter dangling=true -qa)
    docker volume rm $(docker volume ls --filter dangling=true -q)
    docker rmi -f $(docker images -qa)
}

alias mvim="/Applications/MacVim.app/Contents/bin/mvim"

export PS1='\t $? \u@\h $(__git_ps1 "%s") \w >\n $ '

function rpi_sync_videos() {
  find ~/Downloads -name ".DS_*" -delete -print
  cd ~/Downloads/trans/ && chmod 777 * && rsync -Ravt --progress * pi@rpi.lan:~/media/trans/
}

alias dotfiles='git --git-dir=$HOME/v/mydots/.git --work-tree=$HOME/v/mydots/'



if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


alias l='ls -lah'
alias ll='ls -l'
alias c='clear'
alias :q='exit'
alias :qt='tmux detach'

alias untar='tar -zxvf'
alias clip='xclip -sel clip < '
alias ports='sudo netstat -tulpn'

alias gits='git status'
alias gitd='git diff'
alias gitl='git log'

alias docker-rm-all='docker rm -f $(docker ps -aq)'

alias patchwork='npm start --prefix ~/dev/ssbc/patchwork'

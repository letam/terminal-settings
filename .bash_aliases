#!/bin/bash

alias shlvl='echo $SHLVL'
alias sasta="ssh-agent $SHELL"
alias saa='ssh-add ~/.ssh/id_rsa'
alias sasto='ssh-agent -k; exit'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# git shortcuts
alias gst='git status'
alias glog='git log'
alias gbr='git branch'
alias gmv='git mv'
alias gconf='git config'
alias gco='git checkout'
alias gadd='git add'
alias gcom='git checkout master'
alias gcob='git checkout -b'
alias gcm='git commit'
alias gcmm='git commit -m'
alias gcma='git commit -a'
alias gcmam='git commit -a -m'
alias grao='git remote add origin'
alias gpuom='git push -u origin master'
alias gpus='git push'

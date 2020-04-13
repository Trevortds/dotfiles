#! /bin/bash

alias ipython='ipython'
alias py='ipython'

alias agi='sudo apt-get install'
alias commit='git add -A && git commit -m'
alias sl='ls'
alias ll='ls -al'
alias la='ls -a'

alias acs='apt search'
alias sudo='sudo '

alias tyr='ssh -v -p 2222 pi@tyr.redirectme.net'
alias ..='cd ..'
alias fix_monitor='xrandr --output HDMI1 --off'


alias spotify="/usr/bin/spotify --force-device-scale-factor=1.5"

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# install colordiff package :)
alias diff='colordiff'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade'


## set some other defaults ##
alias df='df -H'
alias du='du -ch'

# top is atop, just like vi is vim
alias top='atop'

alias jup='jupyter notebook'

alias shutup='pkill -u "$USER" -USR1 dunst'
alias spititout='pkill -u "$USER" -USR2 dunst'

alias open='xdg-open &>/dev/null'


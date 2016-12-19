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

alias lec='ssh trevortds@lectura.cs.arizona.edu'
alias tyr='ssh -v -p 2222 pi@tyr.redirectme.net'
alias ..='cd ..'
alias fix_monitor='xrandr --output HDMI1 --off'

leccp() {
   scp "$1" "trevortds@lectura.cs.arizona.edu:352/prog1"
}


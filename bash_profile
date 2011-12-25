#!/bin/bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export GIT_PS1_SHOWDIRTYSTATE=''
export GIT_PS1_SHOWUNTRACKEDFILES=''
source ~/.vim/git-completion.bash
source ~/.vim/rails.bash

#Promt Stuff
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

# return the prompt prefix for the second line
function set_prefix {
	BRANCH=`__git_ps1`
	if [[ -z $BRANCH ]]; then
		echo "${NORMAL}o"
	else
		echo "${UNDERLINE}+"
	fi
}

PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}${CYAN}`__git_ps1 " ${WHITE}on ${CYAN}%s"`${WHITE}\r\n`set_prefix`${NORMAL} '

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi


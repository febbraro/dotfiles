#!/bin/bash

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[1;32m\]"
BLUE="\[\033[1;34m\]"
NORMAL="\[\033[0;0m\]"
CYAN="\[\033[1;36m\]"

##########################################################################
# Git command and tag/branch completion as well as putting the branch
# in your prompt including a "*" if it is dirty (changed)
source /usr/local/etc/bash_completion.d/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=true

txtylw='\033[1;33m' # Yellow
fgcolor="\033[0m"    # unsets color to term's fg color
twolevelprompt='$([ "$PWD" != "${PWD%/*/*/*}" ] && echo "/...${PWD##${PWD%/*/*}}" || echo "$PWD")'
gitprompt='$(__git_ps1 "[%s]")'
export PS1="\[$txtylw\] $twolevelprompt\[$fgcolor\]$gitprompt"'\$ '

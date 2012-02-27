
source ~/.bash/bash_setup.sh

OSX_UNAME='Darwin'
LINUX_UNAME='Linux'

case `uname` in 

$OSX_UNAME) 
  BREW_PATH=/usr/local
  export PATH=${BREW_PATH}/bin:${PATH}
  
  # MAMP Support
  MAMP_PATH=/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php5/bin
  export PATH=${MAMP_PATH}:${PATH}

  # Support for Homebrew Python
  export PATH=${BREW_PATH}/share/python:${PATH}  

  # Java support
  export JAVA_HOME=/Library/Java/Home
  ;;

$LINUX_UNAME)
  # Check for an interactive session
  [ -z "$PS1" ] && return

  alias ls='ls --color=auto'

  if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
  ;;

esac

export SVN_EDITOR=vim

# General tool support
export TOOLS_HOME=${HOME}/tools
export PATH=${PATH}:${HOME}/tools/bin

# The Grinder Support
export LOADTEST_HOME=${TOOLS_HOME}/loadtesting
export GRINDER_HOME=${LOADTEST_HOME}/grinder

export GRAILS_HOME=~/tools/grails/current
export PATH=${PATH}:${GRAILS_HOME}/bin

# Setup SSH Agent Forwarding
ssh-add
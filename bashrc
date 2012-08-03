
source ~/.bash/bash_setup.sh

OSX_UNAME='Darwin'
LINUX_UNAME='Linux'

case `uname` in 

$OSX_UNAME) 
  BREW_PATH=/usr/local
  export PATH=${BREW_PATH}/bin:${BREW_PATH}/sbin:${PATH}
  
  # Support for Homebrew Python
  export PATH=${BREW_PATH}/share/python:${PATH}  

  # Java support
  export JAVA_HOME=/Library/Java/Home

  # Brew Bash Completion
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
  fi

  # Support rbenv for Ruby version switching
  if [ -f `brew --prefix`/bin/rbenv ]; then
    eval "$(rbenv init -)"
  fi
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
export PATH=${PATH}:${HOME}/bin

# General tool support
export TOOLS_HOME=${HOME}/tools
export PATH=${PATH}:${HOME}/tools/bin

# The Grinder Support
export LOADTEST_HOME=${TOOLS_HOME}/loadtesting
export GRINDER_HOME=${LOADTEST_HOME}/grinder

export GRAILS_HOME=~/tools/grails/current
export PATH=${PATH}:${GRAILS_HOME}/bin

export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}

# Setup SSH Agent Forwarding
ssh-add

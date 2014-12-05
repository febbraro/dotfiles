
source ~/.bash/bash_setup.sh

OSX_UNAME='Darwin'
LINUX_UNAME='Linux'

case `uname` in 

$OSX_UNAME) 
  BREW_PATH=/usr/local
  export PATH=${BREW_PATH}/bin:${BREW_PATH}/sbin:${PATH}
  
  # Support for Homebrew Node
  export PATH=${BREW_PATH}/share/npm/bin:${PATH}

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

# Support for Composer
export PATH=${HOME}/.composer/vendor/bin:$PATH
export SVN_EDITOR=vim
export PATH=${PATH}:${HOME}/bin
export NODE_PATH=/usr/local/lib/node_modules:${NODE_PATH}


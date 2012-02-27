#!/bin/bash

OSX_UNAME='Darwin'
LINUX_UNAME='Linux'

# Figure out where we are regardless of symlinks, etc.
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DOTS="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

prompt_for_replace() {
  read -a wipeout_conf \
       -p "Do you want to replace $1? [y/n]: " \
       -N 1
  echo 

  if [[ "${wipeout_conf,,}" == 'y' ]]; then
    
    # Check/create archive 
    
    rm -rf $1
    
    return 1
  else
    return 0
  fi
}

check_and_link() {
  local do_link=1

  if [ -e $2 ]; then
    prompt_for_replace $2
    local do_link=$?
  fi

  if [[ $do_link -eq 1 ]]; then
    ln -s $1 $2
  fi
}

all_platforms() {
  check_and_link $DOTS/bashrc ~/.bashrc  
  check_and_link $DOTS/bash ~/.bash

  check_and_link $DOTS/vimrc ~/.vimrc  
  check_and_link $DOTS/gitconfig ~/.gitconfig  
  check_and_link $DOTS/gitignore ~/.gitignore  
}

mac_install() {
  check_and_link $DOTS/bash_profile ~/.bash_profile  
}

linux_install() {
  # Nothing yet...
}

tmpfile() { 
  if [ ! -d ~/.tmp ]; then
    mkdir ~/.tmp
  fi

  chmod ugo+rwX ~/.tmp
}

#tmpfile
#all_platforms

case `uname` in 

  $OSX_UNAME) 
    #mac_install
    ;;

  $LINUX_UNAME)
    #linux_install
    ;;

esac

exit 0


source ~/.bash/bash_setup.sh

export SVN_EDITOR=vim

# Java support
export JAVA_HOME=/Library/Java/Home

# General tool support
export TOOLS_HOME=$HOME/tools
export PATH=$PATH:$HOME/tools/bin
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# The Grinder Support
export LOADTEST_HOME=$TOOLS_HOME/loadtesting
export GRINDER_HOME=$LOADTEST_HOME/grinder

export GRAILS_HOME=~/tools/grails/current
export PATH=$PATH:$GRAILS_HOME/bin

# MAMP Support
MAMP_PATH=/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php5/bin
export PATH=$MAMP_PATH:$PATH

# Support for Homebrew Python
export PATH=/usr/local/share/python:$PATH

# Setup SSH Agent Forwarding
ssh-add

# Drush command completion
# TODO



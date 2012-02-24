#!/bin/bash

source ~/.bash/prompt.sh
source ~/.bash/aliases.sh

# Custom things for a particular computer
LOCAL_MACHINE=~/.bash/local_machine.sh 

if [ -x $LOCAL_MACHINE ]; then
    source $LOCAL_MACHINE
fi

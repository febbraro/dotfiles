# Reload .bashrc
alias refresh='. ~/.bashrc'

# ls stuff
alias l="ls -l"
alias ll="ls -al"

# cd stuff
alias ~="cd ~"
alias ..='cd ..'
alias ...='cd ../..'

# SSH 
alias ssha='ssh -A'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gpush='git push origin master'
alias gpull='git pull origin master'

# Drupal aliases
alias dcc='drush cc all'

# Apps
alias finder='open /System/Library/CoreServices/Finder.app $PWD'

# Services
# TODO: Figure out how to get the current link in place so we dont need the specific version
alias start-mongo='mongod run --config /usr/local/Cellar/mongodb/current/mongod.conf'

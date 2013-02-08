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

# Make hub wrap git
eval "$(hub alias -s)"

# Paste to private gist.
alias gaste="pbpaste | gist -p"

# Drupal aliases
alias dcc='drush cc all'

# Apps
alias finder='open /System/Library/CoreServices/Finder.app $PWD'

# Services
alias start-mongo='mongod run --config /usr/local/etc/mongod.conf'
alias start-elasticsearch='elasticsearch -f -D es.config=/usr/local/etc/elasticsearch/elasticsearch.yml'
alias restart-dns='sudo launchctl unload -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist &&
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist'



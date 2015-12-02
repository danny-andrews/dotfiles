alias startsrvb="bundle exec trinidad --config BACKEND=true -p 8080"
alias startsrv="bundle exec trinidad --config"
alias be="bundle exec"
alias copybr="git symbolic-ref --short HEAD | tr -d '\n' | pbcopy"
alias copysha="git rev-parse --short HEAD | tr -d '\n' | pbcopy"
alias reload="source ~/.config/fish/config.fish"
alias openconfig="subl ~/.config/fish/config.fish"

alias startpostgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppostgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias startredis="redis-server"
alias globalgrunt="grunt --gruntfile '../automation/Gruntfile.js'"

alias sublimepath="cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/"

function userremotes
  git for-each-ref --sort=-committerdate --format='%(committerdate) %(authorname) %(refname)' refs/remotes/origin/ | grep -e ".$argv" | head -n 200;
end

function openrepo
  set url (git config --get remote.origin.url | sed -e 's/git@/https:\/\//g' -e 's/.com:/.com\//g' -e 's/\.git//g')
  open "$url/$argv"
end

# Suppress welcome message
set -x fish_greeting ""

# bin's
set -x PATH $PATH /bin
set -x PATH $PATH /sbin
set -x PATH $PATH /usr/bin
set -x PATH $PATH /usr/local/bin
set -x PATH $PATH ~/bin

# git
set -x PATH $PATH /usr/local/git/bin

# RVM
set -x PATH $PATH $HOME/.rvm/bin

# Node
set -x PATH $PATH $HOME/npm/bin

# Node Modules
set -x PATH $PATH /usr/local/lib/node_modules

# NVM
# source ~/.nvm/nvm.sh

# JRUBY
set -x JRUBY_OPTS "--1.9 -Xcext.enabled=true -J-XX:PermSize=512m -J-XX:MaxPermSize=2048m -J-server -J-Xmx3g -J-Xms1g"

# OhMyFish
set -x fish_path $HOME/.oh-my-fish
source $fish_path/oh-my-fish.fish
Plugin 'rvm'

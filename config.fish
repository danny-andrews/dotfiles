alias copybr="git symbolic-ref --short HEAD | tr -d '\n' | pbcopy"
alias copysha="git rev-parse --short HEAD | tr -d '\n' | pbcopy"
alias reload="source ~/.config/fish/config.fish"

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

# Node Modules
set -x PATH $PATH /usr/local/lib/node_modules

# Oh My Fish
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

source $OMF_PATH/init.fish

alias copy-br="git symbolic-ref --short HEAD | tr -d '\n' | pbcopy"
alias copy-sha="git rev-parse --short HEAD | tr -d '\n' | pbcopy"
alias reload="source ~/.config/fish/config.fish"

function open-repo
  set url (git config --get remote.origin.url | sed -e 's/git@/https:\/\//g' -e 's/.com:/.com\//g' -e 's/\.git//g')
  open "$url/$argv"
end

function flattened-history
  git rev-list --no-merges --reverse "$argv[1]..$argv[2]" | tr '\n' ' '
end

function fix-yarn-lock-conflicts
  git checkout $argv[1] -- yarn.lock
  yarn install
end

function deps-of-deps
  yarn info $argv[1] | grep dependencies -A 15
end

function delete-merged
  git branch --merged | grep -v -E 'master|\*' | xargs -n 1 git branch -d
end

function tabs-to-spaces
  for path in ./src/**/*.css
    expand -t 2 "$path" | sponge "$path"
  end
end

function sort-contents
  du -d 1 $argv[1] | sort -n -r
end

# Count lines of code
# find DIR -name PATTERN -not -path EXCLUDE_PATTERN | xargs wc -l
# Example: find . -name '*.js' -not -path '**/__tests__/*' | xargs wc -l

# Suppress welcome message
set -x fish_greeting ""

# bin's
set -x PATH $PATH /bin
set -x PATH $PATH /sbin
set -x PATH $PATH /usr/bin
set -x PATH $PATH /usr/local/bin

# Yarn
set -x PATH $PATH (yarn global bin)

# Oh My Fish
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

source $OMF_PATH/init.fish

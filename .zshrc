# npm
export PATH=~/.npm-global/bin:$PATH

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# fnm
eval "$(fnm env)"

# asdf
. /opt/local/share/asdf/asdf.sh

# Aliases
alias reload="source ~/.zshrc"
alias python="python3"
alias get_yt_audio='youtube-dl --extract-audio --audio-format=mp3 --output="SONG.%(ext)s" YOUTUBE_ID'

# Autocomplete
autoload -Uz compinit && compinit

# Useful commands
# lsof -i :portNumber

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Disable automatic CorePack package.json edits
export COREPACK_ENABLE_AUTO_PIN=0

# Creates a new migration file with the proper naming convention.
add-migration() {
  migration_name=$1
  latest_version=$(ls migrations/schema | sort | tail -1 | sd 'V(\d+)__.*.sql' '$1')
  next_version=$(($latest_version + 1))
  touch migrations/schema/V$next_version\__$migration_name.sql
}

pid-on-port() {
  lsof -i ":$1"
}

# Initiates connection to dev db.
alias dev-db-ssh="ssh -i ~/.ssh/id_ed25519 -L 1616:repowr-dev-aurora-v1-cluster.cluster-cl99mq8jvrnd.us-east-1.rds.amazonaws.com:5432 ec2-user@54.152.128.65 -N -f"
# Opens a JIRA ticket with the name provided.
open-ticket() {
  open "https://repowr.atlassian.net/browse/$1"
}

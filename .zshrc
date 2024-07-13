# npm
export PATH=~/.npm-global/bin:$PATH

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# Aliases
alias reload="source ~/.zshrc"
alias python="python3"
alias get_yt_audio='youtube-dl --extract-audio --audio-format=mp3 --output="SONG.%(ext)s" YOUTUBE_ID'

# Useful commands
# lsof -i :portNumber

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/danny/.bun/_bun" ] && source "/Users/danny/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

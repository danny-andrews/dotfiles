# npm
export PATH=~/.npm-global/bin:$PATH

# starship
eval "$(starship init zsh)"

# Aliases
alias reload="source ~/.zshrc"
alias get_yt_audio='youtube-dl --extract-audio --audio-format=mp3 --output="SONG.%(ext)s" YOUTUBE_ID'

# Useful commands
# lsof -i :portNumber

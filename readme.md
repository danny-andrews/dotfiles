# Collection of Configuration Files

## Setting Up New Machine

### Run the following to pull down dotfiles to local machine:

1. `git init ~/.config` - Turn into git repository.
1. `git remote add origin https://github.com/danny-andrews/dotfiles.git` - Create remote to point to this repo.

### Create symlinks for any programs which store their config elsewhere.

**VSCode Settings**: `ln -s ~/.config/settings.json ~/Library/Application\ Support/Code/User/settings.json`  
**VSCode Keybindings**: `ln -s ~/.config/settings.json ~/Library/Application\ Support/Code/User/keybindings.json`  
**zsh**: `ln -s ~/.config/.zsh ~/.zsh`  
**git**: `ln -s ~/.config/.gitconfig ~/.gitconfig`

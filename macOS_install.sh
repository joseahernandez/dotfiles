#!/usr/bin/env bash

DOTFILES_PATH=$HOME/.dotfiles

#Folder for backup
mkdir -p $DOTFILES_PATH/backup

# Install brew (https://brew.sh)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew bundle --file=macOS/brew/Brewfile

# Remove bash last login
touch $HOME/.hushlogin

# Fix error signing commits
mkdir -p $HOME/.gnupg
echo "pinentry-program /usr/local/bin/pinentry-mac" >> $HOME/.gnupg/gpg-agent.conf
killall gpg-agent

# Install Fonts
cp $DOTFILES_PATH/fonts/*/*.ttf $HOME/Library/Fonts

# spectable
mkdir -p $HOME/Library/Application\ Support/Spectacle
ln -s -i $DOTFILES_PATH/macOS/spectacle/Shortcuts.json $HOME/Library/Application\ Support/Spectacle/Shortcuts.json

# ulimit
sudo cp $DOTFILES_PATH/macOS/plist/limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
sudo chmod 644 /Library/LaunchDaemons/limit.maxfiles.plist
sudo launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
sudo cp $DOTFILES_PATH/macOS/plist/limit.maxproc.plist /Library/LaunchDaemons/limit.maxproc.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxproc.plist
sudo chmod 644 /Library/LaunchDaemons/limit.maxproc.plist
sudo launchctl load -w /Library/LaunchDaemons/limit.maxproc.plist

# Git
ln -s -i $DOTFILES_PATH/git/.gitconfig $HOME/.gitconfig
ln -s -i $DOTFILES_PATH/git/.gitignore_global $HOME/.gitignore_global
 
# Vim
ln -s -i $DOTFILES_PATH/editors/vim/.vimrc $HOME/.vimrc
git clone https://github.com/udalov/kotlin-vim.git $HOME/.vim/pack/plugins/start/kotlin-vim

# VS Code
mkdir -p $HOME/Library/Application\ Support/Code/User
ln -s -i $DOTFILES_PATH/editors/vs_code/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

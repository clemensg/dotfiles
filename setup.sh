#!/bin/bash
# Clemens Gruber, 2014
# Initial setup
#

pushd

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Brewfile
brew bundle $(pwd)/Brewfile

# Create history dir
mkdir -p $HOME/.history
# Link bin dir
ln -s $(pwd)/bin $HOME/bin

# Git
ln -s $(pwd)/git/config $HOME/.gitconfig
ln -s $(pwd)/git/ignore $HOME/.gitignore
ln -s $(pwd)/git/helpers $HOME/.githelpers

# Install RVM
curl -L https://get.rvm.io | bash -s stable

# ZSH
ln -s $(pwd)/zsh/zshrc $HOME/.zshrc

# Emacs
ln -s $(pwd)/emacs $HOME/.emacs.d
mkdir $HOME/.emacs.d/saves

# Vim / Macvim?
ln -s $(pwd)/vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/bundle $HOME/.vim/backup
git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
ln -s $(pwd)/gvimrc $HOME/.gvimrc

# Others
ln -s $(pwd)/ackrc $HOME/.ackrc
ln -s $(pwd)/gdbrc $HOME/.gdbrc
ln -s $(pwd)/gemrc $HOME/.gemrc
ln -s $(pwd)/irbrc $HOME/.irbrc
ln -s $(pwd)/psqlrc $HOME/.psqlrc
ln -s $(pwd)/sqliterc $HOME/.sqliterc
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/valgrindrc $HOME/.valgrindrc

popd
echo "OK."

#!/bin/bash
# Clemens Gruber, 2014
# Initial setup
#

pushd

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Brewfile
brew bundle $(pwd)/Brewfile

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
ln -s $(pwd)/gemrc $HOME/.gemrc
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf

popd
echo "OK."

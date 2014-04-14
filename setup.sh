#!/bin/bash
# Clemens Gruber, 2014
# Initial setup
#

pushd

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Brewfile
brew bundle $(pwd)/Brewfile

# Git
ln -s $(pwd)/git/config $HOME/.gitconfig
ln -s $(pwd)/git/ignore $HOME/.gitignore

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

popd
echo "OK."

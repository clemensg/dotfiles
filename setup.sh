#!/bin/sh
# Clemens Gruber, 2014
#
# Initial setup
#

pushd

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Brewfile
brew bundle $(pwd)/Brewfile

# Global Git config. Local configs are used in project directories!
git config --global user.name "Clemens Gruber"
git config --global user.email clemensgru@gmail.com

# Install RVM
curl -L https://get.rvm.io | bash -s stable

# ZSH
ln -s $(pwd)/zsh/zshrc $HOME/.zshrc

# Emacs
ln -s $(pwd)/emacs $HOME/.emacs.d
mkdir $HOME/.emacs.d/saves

# Vim / Macvim?
ln -s $(pwd)/vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim

popd
echo "OK."

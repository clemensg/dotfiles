#!/bin/sh
# Clemens Gruber, 2013
# Set up links etc.

pushd

# ZSH
ln -s $(pwd)/zsh/zshrc $HOME/.zshrc

# Emacs
ln -s $(pwd)/emacs $HOME/.emacs.d
mkdir $HOME/.emacs.d/saves

# Vim
ln -s $(pwd)/vimrc $HOME/.vimrc
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle;
curl -Sso $HOME/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd $HOME/.vim/bundle && git clone git://github.com/altercation/vim-colors-solarized.git

popd
echo "OK."

# Daily routine

# Oh my ZSH
#/usr/bin/env ZSH=$ZSH /bin/sh ./.oh-my-zsh/tools/upgrade.sh

# Homebrew
brew update && brew upgrade && brew cleanup

# RVM
rvm get latest
rvm cleanup all && rvm repair all
rvm reload

# Rubygems
gem update --system && gem update && gem cleanup

rvm cleanup all

# VIM plugins
echo ':NeoBundleUpdate\n:q!' | mvim -s /dev/stdin

# Emacs packages
#  Improvised M-x package-upgrade, which still does not exist :(
#/usr/local/bin/emacs --batch -l ~/.emacs.d/init.el --eval "(package-refresh-contents)" --eval "(dolist (mypkg my-required-packages) (package-install mypkg))"
#  Byte compile Emacs Lisp files
#/usr/local/bin/emacs --batch -l ~/.emacs.d/init.el --eval '(byte-recompile-directory "~/.emacs.d")'

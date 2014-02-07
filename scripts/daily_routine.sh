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

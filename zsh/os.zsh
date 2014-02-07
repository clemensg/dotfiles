# os.zsh
# Clemens Gruber, 2014
#

## Set defaults
export VIM=vim

## Platform detection
if [[ `uname` == 'FreeBSD' ]]
then
  export PLATFORM=freebsd
fi
if [[ `uname` == 'Linux' ]]
then
  export PLATFORM=linux
fi
if [[ `uname` == 'Darwin' ]]
then
  export PLATFORM=osx
fi

## Load platform-specific configurations
[[ -s "$DOTFILES/zsh/os/$PLATFORM.zsh" ]] && source "$DOTFILES/zsh/os/$PLATFORM.zsh"

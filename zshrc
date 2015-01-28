HISTFILE=~/.history/zsh
HISTSIZE=5000
SAVEHIST=5000

setopt appendhistory extendedglob notify

bindkey -e

zstyle :compinstall filename '/home/clemens/.zshrc'

autoload -Uz compinit
compinit

export EDITOR=vim

export PATH=$HOME/bin:$PATH
typeset -U PATH

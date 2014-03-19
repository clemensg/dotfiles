# Mac OS X specific zsh configuration
#

# Homebrew developer
#if [[ -d "$HOME/homebrew" ]]; then
#  export HOMEBREW_DEVELOPER=1
#  export HOMEBREW_PREFIX=$HOME/homebrew
#fi

# Prefer MacVim (for local sessions)
if [[ ! -n $SSH_CONNECTION ]]; then
  export VIM='/usr/local/bin/mvim'
  export GIT_EDITOR='/usr/local/bin/vim'
fi

# Oh-my-Zsh plugins
plugins+=(osx brew pod postgres)

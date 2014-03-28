# Mac OS X specific zsh configuration
#

# Homebrew developer
#if [[ -d "$HOME/homebrew" ]]; then
#  export HOMEBREW_DEVELOPER=1
#  export HOMEBREW_PREFIX=$HOME/homebrew
#fi

# Prefer MacVim (for local sessions)
if [[ ! -n $SSH_CONNECTION ]]; then
  export VIM='/usr/local/bin/vim'
  export MVIM='/usr/local/bin/mvim'
  export GIT_EDITOR=$VIM
fi

# Oh-my-Zsh plugins
plugins+=(osx brew pod postgres)

# Use git with openssl and curl-ca-bundle
# For now, I don't trust SecureTransport..
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export GIT_SSL_CAINFO=$SSL_CERT_FILE

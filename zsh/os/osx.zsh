# Mac OS X specific zsh configuration
#

# Homebrew developer
#if [[ -d "$HOME/homebrew" ]]; then
#  export HOMEBREW_DEVELOPER=1
#  export HOMEBREW_PREFIX=$HOME/homebrew
#fi

if [[ ! -n $SSH_CONNECTION ]]; then
  # Prefer GUI MacVim for local sessions
  export VIM='/usr/local/bin/mvim'
  # Use terminal MacVim as git editor
  export GIT_EDITOR='/usr/local/bin/vim'
else
  # Use terminal MacVim when logged in via ssh
  export VIM='/usr/local/bin/vim'
fi

# Oh-my-Zsh plugins
plugins+=(osx brew pod postgres)

# Use git with openssl and curl-ca-bundle
# For now, I don't trust SecureTransport..
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
export GIT_SSL_CAINFO=$SSL_CERT_FILE

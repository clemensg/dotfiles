# Mac OS X specific zsh configuration
#

# Homebrew
if [[ -d "$HOME/homebrew" ]]; then
  export HOMEBREW_DEVELOPER=1
  export HOMEBREW_PREFIX=$HOME/homebrew
fi

# Homebrewed Postgres aliases
alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Prefer MacVim (for local sessions)
if [[ ! -n $SSH_CONNECTION ]]; then
  export VIM='mvim'
fi

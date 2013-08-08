# Mac OS X specific zsh configuration
#

# Emacs aliases
export EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacsgui="/Applications/Emacs.app/Contents/MacOS/Emacs"

# Postgres aliases
alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Brewfile
# Clemens Gruber, 2014
#

# Make sure we’re using the latest Homebrew
update

# An apple a day keeps the doctor away
doctor

# Upgrade any already-installed formulae
upgrade

# OpenSSL
install openssl
# Git with dependencies
install curl #--with-openssl
install git --with-brewed-curl #--with-brewed-openssl
# Zsh
install zsh
# Two good friends :)
install emacs --cocoa
install macvim
# Utilities
install ack
#install direnv
install heroku-toolbelt
install picocom
install pv
install ssh-copy-id
install subversion --with-brewed-openssl
install tmux
# Server daemons
install postgresql
# Libraries
install libyaml

# Link e.g. MacVim.app to /Applications
linkapps

# Remove outdated versions from the cellar
cleanup

# Remove dead symlinks (generally not needed, just a precaution)
prune

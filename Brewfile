# Brewfile
# Clemens Gruber, 2014
#

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Git with dependencies
install openssl
install curl --with-openssl
install curl-ca-bundle
install git --with-brewed-openssl --with-brewed-curl
# Zsh
install zsh
# Two good friends :)
install emacs --cocoa
install macvim
# Utilities
install ssh-copy-id
install tmux
# Server daemons
install postgresql

# Link e.g. MacVim.app to /Applications
linkapps

# Remove outdated versions from the cellar
cleanup

# Remove dead symlinks (generally not needed, just a precaution)
prune

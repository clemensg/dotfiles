# Brewfile
# Clemens Gruber, 2014
#

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# OpenSSL
install openssl
# Curl (needed for Git)
install curl --with-openssl
install curl-ca-bundle
# Git
install git --with-brewed-openssl --with-brewed-curl
# ZSH
install zsh
# Install other useful binaries
install ssh-copy-id
install tmux
# And my two beloved editors :)
install emacs --cocoa
install macvim

# Link to /Applications
linkapps

# Remove outdated versions from the cellar
cleanup

# Remove dead symlinks (generally not needed, just a precaution)
prune

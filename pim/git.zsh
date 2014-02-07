# git.zsh
# Clemens Gruber, 2014
#
# Just for fun :D
#

CRYPT_MAIL_ADDR="aFYS/C8T9GuulqSHM9uPTa4AKAUAwAO5ukuATbCfwVM="

# Decrypt interactively
MAIL_ADDR=$(echo $CRYPT_MAIL_ADDR | openssl enc -nosalt -aes-128-cbc -base64 -d)

if [[ $MAIL_ADDR = *@* ]]; then
  git config --global user.email $MAIL_ADDR
else
  echo "Wrong password, skipping git config user.email"
fi

git config --global user.name "Clemens Gruber"

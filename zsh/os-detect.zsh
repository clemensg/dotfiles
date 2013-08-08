# Platform detection

if [[ `uname` == 'FreeBSD' ]]
then
  export PLATFORM=freebsd
fi

if [[ `uname` == 'Linux' ]]
then
  export PLATFORM=linux
fi

if [[ `uname` == 'Darwin' ]]
then
  export PLATFORM=osx
fi

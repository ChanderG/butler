#! /bin/bash

# bootstrap script to get butler from scratch
echo "Setting up butler"; echo;

# helpers
command_exists () {
    command -v "$1" > /dev/null 2>&1
}

# for now, a "developer perspective" only
# see if git is installed

echo "*******************"
if command_exists git ; then
  echo "git available"
else
  echo "git not installed."
  echo "Installing git..."
  sudo apt-get install -y git
fi
echo "*******************"

# get the code
git clone https://github.com/ChanderG/butler.git

echo "butler installed"
echo "*******************"

# see if git is installed
if command_exists python ; then
  echo "Python available"
else
  echo "Python not installed."
  echo "Installing python..."
  sudo apt-get install -y python
fi

echo "*******************"

echo "butler ready for use"
echo "*******************"

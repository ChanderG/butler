#! /bin/bash

# bootstrap script to get butler from scratch
echo "Setting up butler"; echo;

# helpers
command_exists () {
    command -v "$1" > /dev/null 2>&1
}

# for now, a "developer perspective" only
# see if git is installed
if command_exists git ; then
  echo "git available"
else
  echo "git not installed."
  echo "Installing git..."
  sudo apt-get install -y git
fi

# get the code
git clone https://github.com/ChanderG/butler.git

echo "butler installed"

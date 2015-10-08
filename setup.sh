#!/bin/bash

### Use this script to access butler from anywhere.

mkdir -p ~/bin

isAlreadyDone=`grep -c "# BUTLER - SETUP" ~/.bashrc`

if [ $isAlreadyDone == 0 ] ; then
  echo "" >> ~/.bashrc
  echo "# BUTLER - SETUP" >> ~/.bashrc
  echo "#Adding ~/bin to PATH for use" >> ~/.bashrc
  echo "export PATH=\"/home/$USER/bin:$PATH\"" >> ~/.bashrc
  echo "" >> ~/.bashrc
fi 

if [ ! -L ~/bin/butler ] ; then
  ln -s `pwd`/butler ~/bin/butler
fi

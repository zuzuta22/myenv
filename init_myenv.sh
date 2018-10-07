#!/bin/sh

MYENV_BACK="$HOME/Google Drive/myenv_back/bin/"
INIT_FILE="init_myenv.sh"
MYENV_INIT=$MYENV_BACK$INIT_FILE

MYENV_DIR=$HOME/myenv

if [ ! -e "$MYENV_INIT" ]; then
  echo "myenv init file is not found in $MYENV_BACK"
else
  if type brew > /dev/null 2>&1; then
    echo "brew has already been installed"
  else
    # Install Homebrew
    echo "brew is going to be installed"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  if type git > /dev/null 2>&1; then
    echo "git has already been installed"
  else
    # install git
    echo "git is going to be installed"
    brew install git
  fi

  # clone myenv to home directory
  # git clone 
fi

#!/bin/sh -e

# Set shortcuts
CONFIGSPATH="$HOME/Code/configs"
GITHUBURLPREFIX="https://github.com/joshburnsxyz"

sudo -v 

echo "Generate Filesystem"
mkdir -pv $HOME/Code
mkdir -pv $HOME/Documents/org
mkdir -pv $HOME/Picutres/Wallpapers
mkdir -pv $HOME/Pictures/Screenshots

echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install Git"
brew install git

echo "Download joshburnsxyz/configs"
git clone $GITHUBURLPREFIX/configs $CONFIGSPATH

echo "Install configs"
chmod a+x $CONFIGSPATH/install.sh
cd $CONFIGSPATH && $CONFIGSPATH/install.sh && cd -

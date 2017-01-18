#!/bin/bash

#download repo with git aware prompt
echo "Downloading submodules"
git submodule update --init --recursive

echo "Removing old configuration"
#remove old configuration
rm -rf ~/.bashrc
rm -rf ~/.gitconfig
rm -rf ~/.bash
rm -rf ~/.gitmessage
rm -rf ~/androidconnect.sh
rm -rf ~/.shh/config

echo "Copying configurationf files"
cp -rf $PWD/.bash ~/.bash
cp $PWD/.bashrc ~/.bashrc
cp $PWD/.gitconfig ~/.gitconfig
cp $PWD/.gitmessage ~/.gitmessage
cp $PWD/androidconnect.sh ~/androidconnect.sh
cp $PWD/ssh/config ~/.ssh/config

chmod 600 ~/.ssh/config

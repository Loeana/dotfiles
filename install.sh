#!/bin/bash

#download repo with git aware prompt
echo "Downloading submodules"
git submodule update --init --recursive

echo "Removing old configuration"
#remove old configuration
mkdir ~/oldConfigBackup
cp -rf ~/.bashrc ~/oldConfigBackup/
rm -rf ~/.gitconfig ~/oldConfigBackup/
rm -rf ~/.bash ~/oldConfigBackup/
rm -rf ~/.gitmessage ~/oldConfigBackup/
rm -rf ~/androidconnect.sh ~/oldConfigBackup/
#rm -rf ~/.shh/config ~/oldConfigBackup/

echo "Copying configurationf files"
cp -rf $PWD/.bash ~/.bash
cp $PWD/.bashrc ~/.bashrc
cp $PWD/.gitconfig ~/.gitconfig
cp $PWD/.gitmessage ~/.gitmessage
cp $PWD/androidconnect.sh ~/androidconnect.sh
#cp $PWD/ssh/config ~/.ssh/config

#chmod 600 ~/.ssh/config

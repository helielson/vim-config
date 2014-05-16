#!/bin/sh

INSTALLATION_DIR=~/workspace

printf "\033[2K\033[00;32mCreating a backup file of your vim file...\n\033[0m\n"

mv ~/.vimrc ~/.vimrc.bak

printf "\033[2K\033[00;32mBackup created in the ~/.vimrc.bac file\033[0m\n\n"

printf "\033[2K\033[00;32mDownloading project...\033[0m\n\n"
cd $INSTALLATION_DIR
git clone git@github.com:helielson/vim-config.git
cd vim-config

CURRENT_DIR=`pwd`
ln -s $CURRENT_DIR/vim ~/.vim
ln -s $CURRENT_DIR/vim/vimrc ~/.vimrc

printf "\033[2K\033[00;32mInstalling vim plugins...\033[0m\n\n"
git submodule update --init

printf "\033[2K\033[00;32mInstalling Jedi lib (https://github.com/davidhalter/jedi)...\033[0m\n\n"
pip install jedi

printf "\033[2K\033[00;32mInstalling flake8 lib (https://github.com/singingwolfboy/flake8)...\033[0m\n\n"
pip install flake8

printf "\n\r\033[2K\033[00;32mInstallation finished.\nEnjoy your vim :)\033[0m\n"

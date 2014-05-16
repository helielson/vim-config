printf "[ \033[00;34mConfigurando...\033[0m ] $1\n"

# 1. Checks if exists .vim and .vim/bundle

# 2 If exists, create a backup file of .vim
mv ~/.vimrc ~/.vimrc.bak

# 3 Creates a symbolic link for .vimrc file to vimrc file
CURRENT_DIR=`pwd`
ln -s $CURRENT_DIR/vim ~/.vim
ln -s $CURRENT_DIR/vim/vimrc ~/.vimrc

printf "[ \033[00;34mInstalling plugins...\033[0m ] $1\n\n"
git submodule update --init

printf "[ \033[00;34mInstalling Jedi lib (https://github.com/davidhalter/jedi)...\033[0m ] $1\n\n"
pip install jedi

printf "[ \033[00;34mInstalling flake8 lib (https://github.com/singingwolfboy/flake8)...\033[0m ] $1\n\n"
pip install flake8

printf "\r\033[2K[ \033[00;32mInstallation finished. Enjoy your vim :)\033[0m ] $1\n"

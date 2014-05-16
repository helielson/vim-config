printf "[ \033[00;34mConfigurando...\033[0m ] $1\n"

# 1. Checks if exists .vim and .vim/bundle

# 2 If exists, create a backup file of .vim
mv ~/.vimrc ~/.vimrc.bak

# 3 Creates a symbolic link for .vimrc file to vimrc file
CURRENT_DIR=`pwd`
ln -s $CURRENT_DIR/vim ~/.vim
ln -s $CURRENT_DIR/vim/vimrc ~/.vimrc

printf "[ \033[00;34mInstalando plugins...\033[0m ] $1\n"
git submodule init --update

printf "\r\033[2K[ \033[00;32mInstallation finished. Enjoy your vim :)\033[0m ] $1\n"

vim-config
==========

My personal vim configuration.




Quick installation
==================

For a quick and simply installation just run this command in your terminal to install and configure the vim in your $HOME dir::

    wget -O - https://github.com/helielson/vim-config/raw/master/autoinstall.sh | sh


Manual instalation
==================

1. Clone this repo::

   	git clone git://github.com/helielson/vim-config.git

   or download the plain source only::

   	wget -qO - http://github.com/helielson/vim-config/tarball/master | tar -xzvf -

2. In your ~/.vimrc, add the following line (PROJECT_DIR is the directory the project was cloned)::

   	source PROJECT_DIR/vim-config/vim/vimrc

3. Fetch submodules::

   	cd vim-config
   	git submodule update --init

4. Copy the content of `vim` folder to your `.vim` folder::

    cp -r vim/* ~/.vim

5. Install the dependences::

   	pip install jedi
   	pip install flake8


Dependences
===========

It's necessary to install some dependences for running some vim plugins:
- The jedi-vim plugin depends of the jedi lib.
- The vim-flake8 plugin depends of flake8 lib.

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

2. In your ~/.vimrc, add the following line::

   	source ~/path/to/vimrc/vimrc

3. Fetch submodules::

   	git submodule update --init

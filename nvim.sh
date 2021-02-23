#!/bin/bash

cd $HOME/neovim
make CMAKE_BUILD_TYPE=Release
sudo make install

# this folder for tell vim savetmp file there
mkdir -p $HOME/.local/tmp/

mkdir -p $HOME/.config/coc/extensions 
cd $HOME/.config/coc/extensions

[ ! -f package.json ] && echo '{"dependencies":{}}'> package.json

#+++++++++++++++++++++++++++++++++++++++++++++++

mv -f $HOME/.config/nvim/init.vim \
   $HOME/.config/nvim/init.vim.bac

mv -f $HOME/.config/nvim/Plugin/plugins.vim \
   $HOME/.config/nvim/init.vim 

nvim \
	$HOME/.config/nvim/init.vim \
        +PluginInstall \
        +qall 

#nvim ~/.config/nvim/Plugin/plugins.vim \
#        runtime! $HOME/.config/nvim/init.vim  \
#        +qall 
#
#nvim ~/.config/nvim/Plugin/plugins.vim \
#        UpdateRemotePlugins \
#        +qall \

mv -f $HOME/.config/nvim/init.vim \
   $HOME/.config/nvim/Plugin/plugins.vim 

mv -f $HOME/.config/nvim/init.vim.bac \
   $HOME/.config/nvim/init.vim 

#mv $HOME/.config/nvim/{init,Plugin/plugins}.vim 
#mv $HOME/.config/nvim/init.vim{.bac,}
#
##+++++++++++++++++++++++++++++++++++++++++++++++
#
##cd $HOME/.vim/bundle/youcompleteme
#/usr/bin/python3 install.py
# for plugin YCM flag use --all or go github@coc
#$HOME/.vim/bundle/youcompleteme/install.py --clang-completer
#
##+++++++++++++++++++++++++++++++++++++++++++++++

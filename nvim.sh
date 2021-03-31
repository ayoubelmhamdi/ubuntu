#!/bin/bash

## VIM PLUG
sh \
  -c 'curl  \
  -fLo  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'






mkdir -p $HOME/.local/tmp/

mkdir -p $HOME/.config/coc/extensions 
cd       $HOME/.config/coc/extensions

[ ! -f package.json ] && echo '{"dependencies":{}}'> package.json

#+++++++++++++++++++++++++++++++++++++++++++++++

mv -f $HOME/.config/nvim/init.vim \
      $HOME/.config/nvim/init.vim.bac

mv -f $HOME/.config/nvim/confPlugin/plugins.vim \
      $HOME/.config/nvim/init.vim 

nvim \
     $HOME/.config/nvim/init.vim \
    +PlugInstall \
    +qall 

mv -f $HOME/.config/nvim/init.vim \
      $HOME/.config/nvim/confPlugin/plugins.vim 

mv -f $HOME/.config/nvim/init.vim.bac \
      $HOME/.config/nvim/init.vim 

/data/data/com.termux/files/usr/bin/npm     \
        i                    \
        coc-actions          \
        coc-diagnostic       \
        coc-emmet            \
        coc-emoji            \
        coc-eslint           \
        coc-explorer         \
        coc-fzf-preview      \
        coc-highlight        \
        coc-java             \
        coc-java-debug       \
        coc-json             \
        coc-lists            \
        coc-pairs            \
        coc-prettier         \
        coc-pyright          \
        coc-sh               \
        coc-snippets         \
        coc-stylelintplus    \
        coc-tasks            \
        coc-tsserver         \
        coc-vimlsp           \
        coc-xml              \
        coc-yank             

       #coc-yaml
       #coc-tabnine
       #coc-vimtex
       #coc-css
       #coc-cssmodules
       #coc-html
       #coc-svg
       #coc-floaterm
       #coc-marketplace



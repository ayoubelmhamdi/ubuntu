#!/bin/bash

sh $HOME/TERMUX/lib.sh     >/dev/null 2>&1 
echo "lib.sh"
sh $HOME/TERMUX/git.sh  
sh $HOME/TERMUX/zsh.sh  >/dev/null 2>&1  
echo "zsh.sh"
sh $HOME/TERMUX/dotfile.sh   >/dev/null 2>&1  
echo "dotfile.shd"
sh $HOME/TERMUX/nvim.sh      >/dev/null 2>&1  
echo "nvim.sh"


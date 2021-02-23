#!/bin/bash

2>&1 /dev/null
sh $HOME/UBUNTU/lib.sh     2>&1 /dev/null ;echo "lib.sh"
sh $HOME/UBUNTU/git.sh  
sh $HOME/UBUNTU/zsh.sh  2>&1 /dev/null  ;echo "zsh.sh"
sh $HOME/UBUNTU/dotfile.sh   2>&1 /dev/null  ;echo "dotfile.shd"
sh $HOME/UBUNTU/nvim.sh      2>&1 /dev/null  ;echo "nvim.sh"


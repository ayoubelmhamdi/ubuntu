#!/bin/bash

>/dev/null 2>&1
sh $HOME/UBUNTU/lib.sh     >/dev/null 2>&1 ;echo "lib.sh"
sh $HOME/UBUNTU/git.sh  
sh $HOME/UBUNTU/zsh.sh  >/dev/null 2>&1  ;echo "zsh.sh"
sh $HOME/UBUNTU/dotfile.sh   >/dev/null 2>&1  ;echo "dotfile.shd"
sh $HOME/UBUNTU/nvim.sh      >/dev/null 2>&1  ;echo "nvim.sh"


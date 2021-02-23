#!/bin/bash

sudo rm -r $HOME/.oh-my-zsh/
sh  $HOME/UBUNTU/zsh-oh.sh

git clone \
    https://github.com/zsh-users/zsh-autosuggestions.git \
    $HOME/.oh-my-zsh/plugins/zsh-autosuggestions 

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting


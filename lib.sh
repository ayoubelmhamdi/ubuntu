#/bin/bash

apt update -y
apt update -y
pkg install unstable-repo -y
apt list --upgradable
apt upgrade -y

apt install                \
        git                \
        curl               \
        wget               \
        vim                \
        zsh                \
        zsh                \
        openssh            \
        neovim             \
        nodejs             \
        python             \
        tar                \
        termux-api         \
        ffmpeg             \
        tmux               \
        fd                 \
        ripgrep            \
        fzf                \
        silversearcher-ag  \
        -y

/data/data/com.termux/files/usr/bin/python3.9 -m pip install --upgrade pip

/data/data/com.termux/files/usr/bin/python3.9 \
     -m pip install          \
        ffmpeg               \
        pynvim               \
        youtube-dl           \
        pynvim               \
        neovim-remote        

#        ueberzug 

/data/data/com.termux/files/usr/bin/npm     \
        i                    \
        bash-language-server \
        neovim



git clone 					 \
    https://github.com/ayoubelmhamdi/nvim.git	 \
    $HOME/.config/nvim 

git clone --bare \
    https://github.com/ayoubelmhamdi/dotfiles.git  \
    $HOME/dotfiles 

#git clone \
#    https://github.com/ayoubelmhamdi/scripts.git  \
#    $HOME/scripts


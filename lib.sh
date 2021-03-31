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
	-g                   \
        bash-language-server \
        neovim

sh \
  -c 'curl  \
  -fLo  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'




git clone 					 \
    https://github.com/ayoubelmhamdi/nvim.git	 \
    $HOME/.config/nvim 

git clone --bare \
    https://github.com/ayoubelmhamdi/dotfiles.git  \
    $HOME/dotfiles 

#git clone \
#    https://github.com/ayoubelmhamdi/scripts.git  \
#    $HOME/scripts


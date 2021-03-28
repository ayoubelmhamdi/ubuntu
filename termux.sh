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

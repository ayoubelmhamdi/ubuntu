#!/bin/bash

clear
apt update -y >/dev/null 2>&1
apt install git -y >/dev/null 2>&1


#mkdir $HOME/TERMUX
clear
echo -e "\n\n\t "\
     "begin install \n\n"

git clone \
    https://github.com/ayoubelmhamdi/termux.git  \
    $HOME/TERMUX >/dev/null 2>&1

sh $HOME/TERMUX/install.sh



echo -e "\n\n END"

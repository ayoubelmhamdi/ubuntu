#!/bin/bash

clear
sudo apt-get update -y >/dev/null 2>&1
sudo apt-get upgrade -y >/dev/null 2>&1
sudo apt-get install git -y >/dev/null 2>&1


#mkdir $HOME/TERMUX
clear
echo "\n\n\t "\
     "begin install \n\n"

git clone \
    https://github.com/ayoubelmhamdi/termux.git  \
    $HOME/TERMUX >/dev/null 2>&1

sh $HOME/TERMUX/install.sh



cd $HOME/TERMUX/
sudo rm -r node_modules package.json  >/dev/null 2>&1

echo  "\n\n END"

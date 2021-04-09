#!/bin/bash

clear
sudo apt update -y >/dev/null 2>&1
sudo apt upgrade -y >/dev/null 2>&1
sudo apt install git -y >/dev/null 2>&1


#mkdir $HOME/UBUNTU
clear
echo "\n\n\t "\
     "begin install \n\n"

git clone \
    https://github.com/ayoubelmhamdi/ubuntu.git  \
    $HOME/UBUNTU >/dev/null 2>&1

sh $HOME/UBUNTU/install.sh



cd $HOME/UBUNTU/
sudo rm -r node_modules package.json  >/dev/null 2>&1

echo  "\n\n END"

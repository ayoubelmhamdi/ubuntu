#!/bin/bash


sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git -y


#mkdir $HOME/debian
clear
echo "\n\n\t "\
     "begin install \n\n"

git clone \
    https://github.com/ayoubelmhamdi/debian.git  \
    $HOME/debian

sh $HOME/debian/install.sh




sudo rm -r node_modules package.json

echo  "\n\n END"

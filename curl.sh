#!/bin/bash


sudo apt-get update -y 2>&1 /dev/null
sudo apt-get upgrade -y 2>&1 /dev/null
sudo apt-get install git -y 2>&1 /dev/null


#mkdir $HOME/UBUNTU
clear
echo "\n\n\t "\
     "begin install \n\n"

git clone \
    https://github.com/ayoubelmhamdi/ubuntu.git  \
    $HOME/UBUNTU 2>&1 /dev/null

sh $HOME/UBUNTU/install.sh



cd $HOME/UBUNTU/
sudo rm -r node_modules package.json  2>&1 /dev/null

echo  "\n\n END"

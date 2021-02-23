#!/bin/sh

test -f $HOME/.ssh/id_ed25519 && \
  rm -f $HOME/.ssh/id_ed25519

test -f $HOME/.ssh/id_ed25519.pub && \
  rm -f $HOME/.ssh/id_ed25519.pub


cat \
    /dev/zero | \
    ssh-keygen \
   -t ed25519 \
   -C "ayoubelmhamdi@gmail.com" \
   -q \
   -N ""

#++++++++++++++++++++++++++++++++++++++++

clear
echo "\n\n\t" 										\
     "ssh-key :\n\t" 								\

cat  $HOME/.ssh/id_ed25519.pub 						\
  >> $HOME/debian-ssh-github.txt					\

echo "\n\n\t" 										\
     "add this line to :\n\n" 						\
     "https://github.com/settings/ssh/new \n\n\t"	\
     "for git private me@scripts frome github\n"	\
	 "git clone" 									\
     "git@github.com:ayoubelmhamdi/scripts.git\n"	\
	>> $HOME/debian-ssh-github.txt


cat  $HOME/debian-ssh-github.txt

#++++++++++++++++++++++++++++++++++++++++

git config --global user.name "Ayoub EL Mhamdi"
git config --global user.email "ayoub.elmhamdi@gmail.com"

#++++++++++++++++++++++++++++++++++++++++

cd $HOME/debian
git remote set-url origin \
    git@github.com:ayoubelmhamdi/debian.git
    
cd $HOME/dotfiles
git remote set-url origin \
    git@github.com:ayoubelmhamdi/dotfiles-ayoub.git

#because is private
#cd $HOME/scripts
#git remote set-url origin \
#    git@github.com:ayoubelmhamdi/scripts.git

cd $HOME/.config/nvim
git remote set-url origin \
    git@github.com:ayoubelmhamdi/nvim.git

#++++++++++++++++++++++++++++++++++++++++

#!/bin/bash

export JAVA_HOME='/usr/lib/jvm/java-6-openjdk'
export PYTHON_CONFIGURE_OPTS="--enable-framework"

git config --global user.name "Ayoub El Mhamdi"
git config --global user.email "ayoub.elmhamdi@gmail.com"


for filename in \
	$HOME/dotfiles/config-app/.*[^git]  ; do
    	sudo cp -rf $filename $HOME/${filename##*/}
    	sudo chown -R $USER:$USER $HOME/${filename##*/}
done


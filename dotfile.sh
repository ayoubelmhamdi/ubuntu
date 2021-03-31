#!/bin/bash

#switch to bare repo

cgit="/usr/bin/git             \
      --git-dir=$HOME/dotfiles \
      --work-tree=$HOME"

$cgit  config --local status.showUntrackedFiles no
$cgit  checkout --force

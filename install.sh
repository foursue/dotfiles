#!/bin/bash

dotfiles="$HOME/dotfiles"

lnif() {
    if [ ! -e $2 ] ; then
        ln -s $1 $2
    fi
}

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    lnif $dotfiles/"$f" $HOME/"$f"
done

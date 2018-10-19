#!/bin/bash

user="$whoami"
vundle="~/.vim/bundle/Vundle.vim"

if [ -d "$vundle" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Already cloned Vundle"
fi

if [ ! -d './Bear' ]; then
    git clone git@github.com:rizsotto/Bear.git
fi


echo "Copying vimrc and running plugin install..."
cp vimrc ~/.vimrc
vim +PluginInstall +qall

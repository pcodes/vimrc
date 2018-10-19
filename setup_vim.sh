#!/bin/bash

vundle="~/.vim/bundle/Vundle.vim"

function copy_vimrc {
        cp vimrc ~/.vimrc
}

function install_plugins {
        vim +PluginInstall +qall
}

function clone_repos {
        if [ -d "$vundle" ]; then
                git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        else
                echo "Already cloned Vundle"
        fi

        if [ ! -d './Bear' ]; then
                git clone git@github.com:rizsotto/Bear.git
        else
                echo "Already cloned Bear"
        fi
}

while getopts "fp" opt; do
  case $opt in
    f) full_install="true";;
    p) plugin_install="true";;
    \?) echo "Unknown option -$OPTARG" && usage
    ;;
  esac
done

if [ ! -z $full_install ]; then
        echo "Full install selected"
        echo "Cloning repositories..."
        clone_repos
        echo "Copying vimrc and installling plugins..."
        install_plugins
fi

if [ ! -z $plugin_install ]; then
        echo "Copying vimrc and installing plugins..."
        copy_vimrc
        install_plugins
fi

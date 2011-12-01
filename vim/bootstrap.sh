#/bin/bash

VIMDIR=`echo ~/.vim`
NOW=$(date +"%Y_%m_%dT%H%M%S")

echo "Backing up current vim config"
tar -czvf ~/vim_$NOW.tar.gz ~/.vim ~/.vimrc

echo "Copying vimrc to ~/.vimrc"
cp vimrc ~/.vimrc

echo "Copying vim/colors to ~/.vim/colors"
cp -r vim/colors ~/.vim/colors




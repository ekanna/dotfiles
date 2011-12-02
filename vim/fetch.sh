#!/bin/bash

cd vim/colors
rm zenburn.vim
curl -O https://raw.github.com/jnurmine/Zenburn/master/zenburn.vim

rm solarized.vim
curl -O https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim

rm vividchalk.vim
curl -O https://raw.github.com/tpope/vim-vividchalk/master/colors/vividchalk.vim

rm molokai.vim
curl -O https://raw.github.com/tomasr/dotfiles/master/.vim/colors/molokai.vim

#!/bin/bash
sudo apt-get install -y git curl
sudo apt install -y \
    build-essential \
    cmake \
    python3-dev \
    vim-nox \
    gcc g++

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~/.vimrc


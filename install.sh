#!/bin/bash
dotfiles=/home/rafael/GitHub/dotfiles

ln -s $dotfiles/.Xresources	$HOME
ln -s $dotfiles/.asoundrc	$HOME
ln -s $dotfiles/.bashrc		$HOME
ln -s $dotfiles/.gitconfig	$HOME
ln -s $dotfiles/.vimrc		$HOME
ln -s $dotfiles/.xinitrc	$HOME

mkdir -p $HOME/.vim/{colors,syntax}
ln -s $dotfiles/base16-default-dark.vim	$HOME/.vim/colors
ln -s $dotfiles/javascript.vim	$HOME/.vim/syntax

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#!/bin/bash
dotfiles=$HOME/dotfiles

ln -s $dotfiles/.asoundrc       $HOME/.asoundrc
ln -s $dotfiles/.bashrc         $HOME/.bashrc
ln -s $dotfiles/i3              $HOME/.config/i3/config
ln -s $dotfiles/.vimrc          $HOME/.vimrc
ln -s $dotfiles/.Xresources     $HOME/.Xresources
ln -s $dotfiles/.xinitrc        $HOME/.xinitrc
ln -s $dotfiles/.gitconfig      $HOME/.gitconfig

mkdir -p $HOME/.vim
ln -s $dotfiles/vim_colors             $HOME/.vim/colors

echo "Installed Successfully!"

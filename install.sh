#!/bin/bash
ln -s /home/$USER/dotfiles/.asoundrc       /home/$USER/.asoundrc
ln -s /home/$USER/dotfiles/.bashrc         /home/$USER/.bashrc
ln -s /home/$USER/dotfiles/i3              /home/$USER/.config/i3/config
ln -s /home/$USER/dotfiles/.vimrc          /home/$USER/.vimrc
ln -s /home/$USER/dotfiles/.Xresources     /home/$USER/.Xresources
ln -s /home/$USER/dotfiles/.xinitrc        /home/$USER/.xinitrc

echo "Installed Successfully!"

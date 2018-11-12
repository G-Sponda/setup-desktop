#!/bin/bash

PKGS_INSTALL = "git dmenu bspwm sxhkd libxcb xcb-util xcb-util-keysyms xcb-util-wm xorg-server thunar termite firefox htop pulseaudio pulseaudio-alsa pavucontrol libmpdclient"

cd $HOME
sudo pacman -S $PKGS_INSTALL --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd $HOME
mkdir $HOME/.config
cd $HOME/.config
mkdir $HOME/.config/bspwm && mkdir $HOME/.config/sxhkd
cp /usr/share/doc/bspwm/examples/bspwmrc $HOME/.config/bspwm/
chmod +x $HOME/.config/bspwm/bspwmrc
cp /usr/share/doc/bspwm/examples/sxhkdrc $HOME/.config/sxhkd/

yay -Sy polybar
install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config

#!/bin/bash

cd $HOME
sudo pacman -S git dmenu bspwm sxhkd libxcb xcb-util xcb-util-keysyms xcb-util-wm xorg-server thunar termite firefox htop pulseaudio pulseaudio-alsa pavucontrol libmpdclient
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd $HOME
mkdir .config
cd .config
mkdir .config/bspwm && mkdir .config/sxhkd
cp /usr/share/doc/bspwm/examples/bspwmrc $HOME/.config/bspwm
chmod +x $HOME/.config/bspwm/bspwmrc
cp /usr/share/doc/bspwm/examples/sxhkdrc $HOME/.config/sxhkd

yay -Sy polybar
install -Dm644 /usr/share/doc/polybar/config $HOME/.config/polybar/config

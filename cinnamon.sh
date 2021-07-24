#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector -c Bangladesh --save /etc/pacman.d/mirrorlist

cd /tmp && git clone https://aur.archlinux.org/yay.git
cd yay/ && makepkg -si --noconfirm

sudo pacman -S xorg xorg-server xorg-server-utils lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings cinnamon firefox arc-gtk-theme arc-icon-theme xed metacity zsh terminator alacritty terminus-font awesome dmenu nitrogen xorg-xrandr xorg-xinit virtualbox virtualbox-host-modules-arch virtualbox-guest-utils virtualbox-sdk awesome-terminal-fonts libreoffice bpytop pycharm-community-edition usbutils smartmontools firefox-i18n-bn libreoffice-fresh-bn gparted radeontop picom alsa-utils xterm xorg-xprop qlite kcolorchooser sublime-text ark-dark-solid deja-dup lxappearance mpv

sudo systemctl enable lightdm

/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot

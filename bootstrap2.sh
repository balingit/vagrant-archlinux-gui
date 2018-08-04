#!/usr/bin/env bash

# install X LXDE and alsa utils
pacman -S --noconfirm xorg-server lxde alsa-utils 

# ttf-liberation fonts works well with lxde terminal emulator
pacman -S --noconfirm ttf-liberation

# install firefox and adblock plus
pacman -S --noconfirm firefox firefox-adblock-plus

# replace virtualbox guest additions with X support
pacman -Rns --noconfirm virtualbox-guest-utils-nox
pacman -S --noconfirm virtualbox-guest-utils

# unmute sound and set volume to 100%
amixer sset Master 100%+ unmute
alsactl store

# start lxdm at boot
systemctl enable lxdm
systemctl start lxdm

# PulseAudio seems to remove crackling sound, YMMV
pacman -S --noconfirm pulseaudio pulseaudio-alsa

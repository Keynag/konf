#!/bin/bash

sudo pacman -Syu;

sudo pacman -S xorg-xwayland wayland wlroots lib32-wayland wayland-protocols pcre2 json-c pango cairo gdk-pixbuf2 meson zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting qt5-wayland qt6-wayland mesa-utils vulkan-tools vulkan-validation-layers --needed;

sudo pacman -S noto-fonts ttf-dejavu ttf-droid ttf-liberation ttf-hack-nerd ttf-jetbrains-mono awesome-terminal-fonts --needed;

sudo pacman -S realtime-privileges && sudo usermod -aG realtime "$(whoami)";

sudo pacman -S pipewire pipewire-pulse lib32-pipewire wireplumber --needed;

sudo pacman -S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader mesa-vdpau lib32-mesa-vdpau libva-mesa-driver lib32-libva-mesa-driver vulkan-mesa-layers lib32-vulkan-mesa-layers lrzip unrar unzip unace p7zip squashfs-tools engrampa mpv firefox feh openjdk-src jdk-openjdk timeshift wireguard-tools openresolv audacious corectrl steam gparted bleachbit gnome-calculator telegram-desktop xdg-desktop-portal-wlr xdg-desktop-portal-gtk --needed && sudo systemctl enable systemd-resolved;

sudo pacman -S wofi pavucontrol waybar grim slurp mako alacritty pcmanfm-gtk3 transmission-qt wl-clipboard gammastep python-pywal gsimplecal yad --needed;

cp -rT ~/konf/config ~/.config/

cp -r ~/konf/.gtkrc-2.0 ~/.gtkrc-2.0

cp -r ~/konf/.zshrc ~/.zshrc && cp -r ~/konf/.zprofile ~;

sudo cp -r ~/konf/zsh/plugins /usr/share/zsh

sudo pacman -S zram-generator && sudo cp -r ~/konf/arch/system/zram-generator.conf /etc/systemd/

sudo cp -r ~/konf/arch/system/system.conf /etc/systemd/system.conf

sudo cp -r ~/konf/arch/system/user.conf /etc/systemd/user.conf

sudo cp -r ~/konf/arch/system/limits.conf /etc/security/limits.conf

sudo systemctl daemon-reload && sudo systemctl start systemd-zram-setup@zram0.service;

#sudo pacman -S irqbalance && sudo systemctl enable --now irqbalance;

paru -S vesktop wob && paru -S pywal-16-colors;

echo "GOOD JOB KEYN73 :)" && shutdown -r










#!/bin/bash

sudo xbps-install -Su;

sudo xbps-install linux-firmware-amd linux-firmware-intel xorg-server-xwayland xorg-server-xwayland-32bit wayland wlroots wayland-32bit wayland-protocols pcre2 json-c pango cairo meson zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting qt5-wayland qt6-wayland mesa mesa-32bit mesa-demos vulkan-tools Vulkan-ValidationLayers pipewire pipewire-32bit wireplumber pavucontrol zramen curl chrony seatd elogind;

sudo xbps-install noto-fonts-ttf dejavu-fonts-ttf google-fonts-ttf liberation-fonts-ttf font-awesome6 nerd-fonts-symbols-ttf;

sudo xbps-install mesa-dri mesa-dri-32bit mesa-vulkan-radeon mesa-vulkan-radeon-32bit vulkan-loader-32bit vulkan-loader amdvlk amdvlk-32bit mesa-vaapi mesa-vaapi-32bit mesa-vdpau mesa-vdpau-32bit lrzip unrar unzip p7zip squashfs-tools engrampa mpv firefox feh openjdk-src openjdk timeshift wireguard wireguard-tools openresolv audacious audacious-plugins corectrl steam gparted bleachbit gnome-calculator telegram-desktop xdg-desktop-portal-gtk;

sudo xbps-install wofi Waybar grim slurp mako alacritty pcmanfm transmission-gtk wl-clipboard gammastep pywal gsimplecal-gtk3 yad dbus swaybg polkit wob;

mkdir -p /etc/pipewire/pipewire.conf.d
sudo ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
sudo ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/

sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/polkitd /var/service
sudo ln -s /etc/sv/elogind /var/service
sudo ln -s /etc/sv/chronyd /var/service

cp -rT ~/konf/config ~/.config/

cp -r ~/konf/.gtkrc-2.0 ~/.gtkrc-2.0

cp -r ~/konf/.zshrc ~/.zshrc && cp -r ~/konf/.zprofile ~

sudo cp -r ~/konf/zsh/plugins /usr/share/zsh

#sudo cp -r ~/konf/arch/system/limits.conf /etc/security/limits.conf

#paru -S vesktop wob && paru -S pywal-16-colors;

echo "GOOD JOB KEYN73 :)" && sudo shutdown -r


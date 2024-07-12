#!/bin/bash

mkdir ~/hypr
cd ~/hypr

git clone https://github.com/void-linux/void-packages.git
git clone https://github.com/Makrennel/hyprland-void.git

cd void-packages
./xbps-src binary-bootstrap

cd..
cd hyprland-void
cat common/shlibs >> ../void-packages/common/shlibs
cp -r srcpkgs/* ../void-packages/srcpkgs
cd ../void-packages

./xbps-src pkg hyprland
./xbps-src pkg hyprlang
./xbps-src pkg hyprutils
./xbps-src pkg hyprcursor
./xbps-src pkg hyprland-protocols
./xbps-src pkg xdg-desktop-portal-hyprland

sudo xbps-install -R hostdir/binpkgs hyprland
sudo xbps-install -R hostdir/binpkgs hyprlang
sudo xbps-install -R hostdir/binpkgs hyprutils
sudo xbps-install -R hostdir/binpkgs hyprcursor
sudo xbps-install -R hostdir/binpkgs hyprland-protocols
sudo xbps-install -R hostdir/binpkgs xdg-desktop-portal-hyprland

cp -r ~/konf/void/wm/hypr/hypr ~/.config/
cd ~ && sudo rm -r hypr && echo "Hurma inst NiCe :)"

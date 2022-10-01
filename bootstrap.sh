#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)
case $1 in
-fedora)
echo "${bold}What to install?${normal}"
echo "1. Full server (Docker, netatalk, plex, tautulli, nextcloud)"
echo "2. Desktop (X/Wayland with DE/WM)"
read -p ": " version
scripts/01_packages.sh -fedora $version
;;
-debian)
;;
-arch)
;;
-macos)
;;
*)
echo "${bold}System to bootstrap${normal}"
echo "MacOS (brew has to be installed) -macos"
echo "Fedora -fedora"
echo "Debian -debian"
echo "Arch Linux -arch"
;;
esac
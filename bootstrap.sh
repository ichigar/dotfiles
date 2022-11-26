#!/bin/bash
cat /etc/apt/sources.list /etc/apt/sources.list.d/*.list | grep jammy | grep --invert-match "#" > sources.list
apt list > apt_packages.text
snap list | cut -f1 -d" " > snaps.txt 
cp ~/.bashrc .
cp ~/.gitconfig .
cp ~/.profile .
cp ~/.zshrc .
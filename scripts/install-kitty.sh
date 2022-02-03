#!/bin/bash

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# install theme
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

# use gruvbox dark
cd ~/.config/kitty
ln -s ./kitty-themes/themes/gruvbox_dark.conf ~/.config/kitty/theme.conf

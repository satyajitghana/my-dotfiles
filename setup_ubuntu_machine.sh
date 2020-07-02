#!/bin/bash

# INSTALL REGOLITH
sudo add-apt-repository ppa:regolith-linux/release
sudo apt install regolith-desktop
sudo apt install i3xrocks-net-traffic i3xrocks-cpu-usage i3xrocks-time i3xrocks-memory i3xrocks-weather
sudo apt install i3xrocks-battery # for laptops

# TILIX
sudo apt install tilix

# use this to change default terminal to tilix # sudo update-alternatives --config x-terminal-emulator'

# CAVA
sudo add-apt-repository ppa:hsheth2/ppa
sudo apt-get update
sudo apt-get install cava

# SPOTIFY INSTALL
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client

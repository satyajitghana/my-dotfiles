#!/bin/bash

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt update
sudo apt install nodejs

sudo npm install --global yarn

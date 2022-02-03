#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'

# NOTE: Works on Ubuntu 18.04 Bionic Beaver

# install zsh
sudo apt install zsh -y
echo "${RED}installed zsh${NC}"

sudo apt install exa bat thefuck

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "${RED}installed oh-my-zsh${NC}"

curl -L git.io/antigen > ~/.config/antigen.zsh

# install powerlevel10k
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo "${RED}installed powerlevel10k${NC}"

sudo chown shadowleaf:shadowleaf -R ~

# change the default shell
chsh -s $(which zsh)

# install the plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# fix the perms
sudo chmod -R 755 ~/.oh-my-zsh

# copy the config files
cp .zshrc ~/
cp .p10k.zsh ~/

echo "${RED}RESTART YOUR SHELL${NC}"

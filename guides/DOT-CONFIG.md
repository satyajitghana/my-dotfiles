# Ricing

## ZSH

Install exa, bat
sudo apt install exa bat

## NVim

sudo apt install nvim

Now install vim-plugin and coc

```
sudo sh -c "curl -sL install-node.now.sh/lts | bash"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Copy the nvim config files and `.vimrc`

```
pip3 install --user neovim
```

```
nvim
:PlugInstall
:UpdateRemotePlugins
:q!
:q!
```

Fix the syntax error issue

```
sed -i.bu 's/async=True/**{"async": True}/' ~/.config/nvim/plugged/nvim-completion-manager/pythonx/cm.py
sed -i.bu 's/async=True/**{"async": True}/' ~/.config/nvim/plugged/nvim-completion-manager/pythonx/cm_core.py
```

## Rofi

Install Rofi from source https://github.com/davatorium/rofi
Download the releases, install

flex, bison, autoconf, automake, libxkbcommon-dev, libglib2.0-dev, libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
libxcb-xrm-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libpango1.0-dev libstartup-notification0-dev libgdk-pixbuf-2.0-dev check 

Setup this: https://github.com/adi1090x/rofi

Then copy the rofi config files from my-dotfiles

## Polybar

Install polybar

pip3 install pywal
sudo apt instal calc

Copy the polybar config giles from my-dotfiles

Setup only fonts from https://github.com/adi1090x/polybar-themes
 
Probably i will remove the repository dependencies and make my own scripts to do this

# Download JetBrains Mono
wget https://github.com/JetBrains/JetBrainsMono/releases/download/v2.210/JetBrainsMono-2.210.zip

unzip JetBrainsMono-2.210.zip

mkdir -p ~/.local/share/fonts

# move all .ttf to users's font folder
mv fonts/ttf/JetBrainsMono*.ttf ~/.local/share/fonts/

sudo fc-cache -fv

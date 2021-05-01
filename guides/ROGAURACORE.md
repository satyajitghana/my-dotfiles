git clone https://github.com/wroberts/rogauracore.git
cd rogauracore
sudo apt install libusb-1.0-0 libusb-1.0-0-dev
sudo apt install autoconf
autoreconf -i
./configure
make
sudo make install 
# Shutdown and restart the system
# Rainbow
sudo rogauracore rainbow

# Usage:
sudo rogauracore COMMAND ARGUMENTS
# COMMAND should be one of:

```
single_static
single_breathing
single_colorcycle
multi_static
multi_breathing
red
green
blue
yellow
cyan
magenta
white
black
rainbow
```


# CAVA on Windows and redirecting to SSH

Install `winscap`: https://github.com/quantum5/winscap

Now you can capture the audio and redirect it to a `fifo` `/tmp/cava.fifo` using

```bash
# create the fifo
mkfifo /tmp/cava.fifo

# redirect audio to fifo
./winscap.exe 2 44100 16 > /tmp/cava.fifo
```

```bash
./winscap.exe <channels> <sampling rate> <bits>
```

If for reason it says device not supported then you need to change the sampling rate to match winscap argument

Now install CAVA

```bash
sudo add-apt-repository ppa:hsheth2/ppa
sudo apt update
sudo apt install cava
```

Now edit the config file `~/.config/cava`

```text
method = fifo
source = /tmp/cava.fifo
sample_rate = 44100
sample_bits = 16
```

## For SSH

Simply redirect the output to the ssh host ! and it works !

```bash
 ./winscap.exe 2 44100 16 | ssh satyajit@hostname.net 'cat > /tmp/cava.fifo'
```

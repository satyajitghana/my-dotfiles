# ALC 295 Setup

Edit `/etc/modprobe.d/alsa-base.conf`

and add the following line

```
options snd-hda-intel model=headset-mode
```

NOTE: Do not "Restart" your system, instead "Shutdown" and "Turn ON"

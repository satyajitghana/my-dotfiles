# MOTD

## Installation

1. In `/etc/ssh/sshd_config` need to set up string to `PrintMotd yes`
2. Install `update-motd`
    ```bash
    sudo apt-get install fortune-mod update-motd
    ```
3.  ```bash
    sudo cp * /etc/update-motd.d/
    sudo update-motd
    ```

Refer: https://nebulab.com/blog/awesome-motds-with-ubuntu

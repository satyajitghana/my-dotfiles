# WSL2: docker: Error response from daemon: cgroups: cannot find cgroup mount destination: unknown.

This usually happens in the wsl2 docker engine, not windows wsl2 docker

Temporary fix

```shell
sudo mkdir /sys/fs/cgroup/systemd
sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd
```

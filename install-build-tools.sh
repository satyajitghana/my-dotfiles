#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'

# NOTE: Works on Ubuntu 18.04 Bionic Beaver

# update the distro
sudo apt update
sudo apt upgrade

# neofetch
sudo apt install neofetch -y
echo "${RED}installed neofetch${NC}"

# GCC-9 and CLANG-9
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt install curl vim build-essential xz-utils gcc-9 g++-9 clang-9 -y
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9 --slave /usr/bin/gcov gcov /usr/bin/gcov-9
echo "${RED}installed GCC-9 and CLANG-9${NC}"

# CMAKE latest
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt update
sudo apt install cmake -y
echo "${RED}installed cmake${NC}"

# bazel
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
sudo apt update
sudo apt install bazel -y
echo "${RED}installed bazel${NC}"

echo "${RED}BUILD-SETUP COMPLETE${NC}"

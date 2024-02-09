#!/bin/bash
# 1. preparation
sudo dpkg –add-architecture i386
# 2. add the repo
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
# 3. download winehq of debian 12 (bookworm)
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
# 4. update
sudo apt update
# 5. install wine stable branch
sudo apt install --install-recommends winehq-stable

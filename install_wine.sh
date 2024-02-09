#!/bin/bash
# 1. enable multiarch support
sudo dpkg –add-architecture i386
# 2. download wine signing key
wget -nc https://dl.winehq.org/wine-builds/winehq.key
# 3. add wine's signing key
sudo apt-key add winehq.key
# 4. add wine's repository
echo “deb https://dl.winehq.org/wine-builds/debian/ bullseye main” | sudo tee /etc/apt/sources.list.d/wine_chrome_os_made_simple.list
# 5. update system repositories
sudo apt update
# 6. install wine
sudo apt install –install-recommends winehq-stable
# 7. configure wine
winecfg
# 8. download mt5 setup files from exness
#wget https://download.metatrader.com/cdn/web/exness.technologies.ltd/mt5/exness5setup.exe
# 9. install mt5
#wine exness5setup.exe

#!/bin/bash

sudo yum -y install make

cd 

sudo yum -y install git

git clone --recursive --depth 1 --shallow-submodules \
https://github.com/akinomyoga/ble.sh.git

make -C ble.sh install PREFIX=~/.local

echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc

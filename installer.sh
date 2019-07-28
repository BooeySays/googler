#!/bin/bash

SCDIR=$PWD

# install pre-req apps:
if [ "$(w3m -version | grep -qe 'w3m'; echo $?)" != '0' ]; then
    if [ "$(wget --version | grep -qe 'wget'; echo $?)" != '0' ]; then
        sudo apt update -y && sudo apt install wget -y
    fi
    sudo apt update -y && sudo apt install w3m -y
fi

if [ ! $DX2 ] || [ ! $DX2RC ] || [ ! $DX2BIN ]; then
    sudo make prep;
else
    sudo make install;
fi

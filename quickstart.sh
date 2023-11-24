#!/bin/bash
# Assumes you are using distro with apt pkg manager
# Run as user with sudo
# Clone into desired home dir

set -e
current_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path

if [ -z $1 ]; then echo "Correct usage: ./quickstart.sh <username>" && exit 1; fi
if [ ! -d "/home/$1" ]; then echo "No home directory found for $1" && exit 1; fi
echo "Configuring env for $1"

home="/home/$1"

#apt update
#apt upgrade
#apt install git
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc $home
cp .vimrc $home

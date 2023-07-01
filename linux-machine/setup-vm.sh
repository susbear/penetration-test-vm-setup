#!/bin/bash

apt update -y && apt full-upgrade -y && apt autoremove -y && apt autoclean -y
apt install `cat tools.list | tr "\n" " "` -y
mkdir -p $HOME/Tools && cd $HOME/Tools
for f in `cat git-clone.list | tr "\n" " "`;do `git clone $f`;done

# install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

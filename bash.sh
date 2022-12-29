#!/bin/bash

sudo apt-get update
sudo apt-upgrade -y

# unzip
sudo apt-get install unzip -y

#stow
sudo apt-get install stow

# Deno
curl -fsSL https://deno.land/x/install/install.sh | sh

# Node & packages managers
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

sudo apt install npm #revisar esto
npm install --global yarn pnpm

# Rust
curl --proto '=https' --tlsv1.3 https://sh.rustup.rs -sSf | sh #pide un default, revisar

# Python
sudo apt install software-properties-common -y

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install #no se ejectura elcomando probar agregar \

# Terraform
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform #no se ejectura elcomando probar agregar \

# Docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


sudo snap install discord slack brave dbeaver-ce k9s
sudo snap install kubectl --classic
sudo snap install go --classic
sudo snap install code --classic
sudo snap install jenkins --classic

# zsh & oh-my-zsh
sudo apt-get install zsh -y
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
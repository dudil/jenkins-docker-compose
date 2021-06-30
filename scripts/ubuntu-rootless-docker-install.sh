#!/bin/sh
set -e
sudo apt-get - y remove docker docker-engine docker.io containerd runc
sudo apt-get update && sudo apt-get -y install
                        apt-transport-https \
                        ca-certificates \
                        curl \
                        gnupg \
                        lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update && sudo apt-get install -y docker-ce-rootless-extras
dockerd-rootless-setuptool.sh install

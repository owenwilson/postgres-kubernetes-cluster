#!/usr/bin/env bash

set -e

#echo "Install Docker"
#curl -fsSL https://get.docker.com -o get-docker.sh
#sh get-docker.sh

echo "Update packages"
sudo apt-get update
# sudo apt upgrade -y
#sudo apt-get install -y apt-transport-https curl
#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
#echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
#sudo apt-get update
#sudo apt-get install -y kubelet kubeadm kubectl
#sudo apt-mark hold kubelet kubeadm kubectl

echo "Disable swap"
sudo sed -i '/ swap / s/^/#/' /etc/fstab
sudo swapoff -a

#echo "Enable CRI plugin in containerd"
#sudo sed -i '/disabled_plugins = \["cri"\]/d' /etc/containerd/config.toml
#sudo systemctl restart containerd

echo "Done"

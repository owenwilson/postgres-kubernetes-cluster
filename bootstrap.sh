#!/usr/bin/env bash

set -e

#echo "Install Docker"
#curl -fsSL https://get.docker.com -o get-docker.sh
#sh get-docker.sh

echo "Install Kubernetes"
sudo apt-get update
sudo apt upgrade -y
sudo apt update && sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev pkg-config -y
cd /tmp/ && wget -c https://www.python.org/ftp/python/3.11.9/Python-3.11.9.tgz
tar -xf Python-3.11.*.tgz
cd Python-3.11.*/
./configure --enable-optimizations
make -j $(nproc)
sudo make altinstall
python3.11 --version
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.11 1
sudo update-alternatives --config python3
python3 --version
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

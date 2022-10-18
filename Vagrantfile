# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SCRIPT
sudo apt update -y &&
sudo apt install -y clang gcc make linux-tools-generic default-jre

sudo snap install helm --classic
sudo snap install kubectl --classic

sudo snap install docker
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker

cd /home/vagrant
wget https://github.com/kubernetes/minikube/releases/download/v1.27.0/minikube-linux-amd64
sudo chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/bin/minikube
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.provision "shell", inline: $script

  config.vm.provider "virtualbox" do |v|
    v.memory = 3000
    v.cpus = 2
  end
end

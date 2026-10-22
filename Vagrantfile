Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-24.04"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2560
    v.cpus = 2
  end
  
  config.vm.define "master" do |master|
    master.vm.network "private_network", ip: "192.168.56.10"
    master.vm.hostname = "master"
    master.vm.provision "shell", path: "bootstrap.sh"
  end

  (1..2).each do |i|
    config.vm.define "node-#{i}" do |node|
      node.vm.network "private_network", ip: "192.168.56.#{10 + i}"
      node.vm.hostname = "node-#{i}"
      node.vm.provision "shell", path: "bootstrap.sh"
    end
  end
end

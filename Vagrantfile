# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  # Bootstrap script for all nodes
  # config.vm.provision "shell", path: "scripts/bootstrap.sh"
  # Use your own ssh key to access VMs
  # config.vm.provision "file", source: "~/.ssh/id_rsa_vagrant.pub", destination: "~vagrant/.ssh/id_rsa.pub"
  # config.vm.provision "shell", inline: "cat ~vagrant/.ssh/id_rsa.pub >> ~vagrant/.ssh/authorized_keys"

  NodeCount = 1

  (1..NodeCount).each do |i|
    config.vm.define "vm#{i}" do |node|
      node.vm.box = "centos/7"
      node.vm.hostname = "vm#{i}.example.com"
      node.vm.network "private_network", ip: "172.27.0.10#{i}"
      # Forward vm port to host port
      # node.vm.network "forwarded_port", guest: 8080, host: 8080
      # Sync host folder with vm folder on start up - use 'vagrant rsync' to resync
      # node.vm.synced_folder "datavm#{i}", "/vagrant", create: true
      # Extra bootstrap script
      # node.vm.provision "shell", path: "bootstrap_extra.sh"
      node.vm.provider "virtualbox" do |v|
        v.name = "vm#{i}"
        v.memory = 512
        v.cpus = 1
      end
    end
  end
end

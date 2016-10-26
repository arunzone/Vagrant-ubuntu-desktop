# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = "https://vagrantcloud.com/box-cutter/boxes/ubuntu1404-desktop"
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.vm.hostname = "vagrant-desktop"
  config.vm.network :private_network, ip: "10.0.0.120"
  config.vm.network "forwarded_port", guest: 9999, host: 9999

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :machine
  end

  config.vm.synced_folder ".", "/vagrant"

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--vram", 64]
  end

  #config.vm.provision :shell, :inline => "apt-get update"
  #config.vm.provision :shell, :inline => "DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade --yes"
  config.vm.provision :shell, :path => "setup.sh"
end

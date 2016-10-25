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
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

end

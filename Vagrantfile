# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # VM name
    vb.name = "myarch"
 
    # Optimise VM running a GUI otherwise comment statements below
    # Customise VRAM size and turn on 3D acceleration
    vb.customize ["modifyvm", :id, "--vram", "32"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]

    # Customise audio
    vb.customize ["modifyvm", :id, "--audiocontroller", "hda"]
    vb.customize ["modifyvm", :id, "--audioout", "on"]

    # Customise NIC to use virtio driver
    vb.customize ["modifyvm", :id, "--nictype1", "virtio"]

    # Customise the amount of memory on the VM:
    vb.memory = "2048"
  end

  # Enable provisioning with a shell script.
  config.vm.provision "shell", path: "bootstrap1.sh"

  # bootstrap2 is for enabling GUI otherwise comment statement below
  config.vm.provision "shell", path: "bootstrap2.sh"

  # bootstrap3 is for saving package cache on shared folder
  config.vm.provision "shell", path: "bootstrap3.sh"
end

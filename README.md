# vagrant-archlinux-gui

This creates a lean archinux with GUI sandbox for testing or development.
The bootstrap scripts configure localisation and installs LXDE as a desktop
environment. It also saves downloaded packages on the host for future deployment 
to speed up provisioning.The scripts are modular and can be excluded if not 
needed by commenting them on the Vagrantfile.

# Requirements

+ vagrant
+ virtualbox

# How to start

vagrant up

After provisioning, it is recommended to reboot the guest by:

vagrant reload

#!/usr/bin/env bash

# localisation configuration eg. en_NZ Auckland
ln -sf /usr/share/zoneinfo/Pacific/Auckland /etc/localtime
mv /etc/locale.gen /etc/locale.gen.old
echo -e "en_NZ.UTF-8 UTF-8\nen_US.UTF-8 UTF-8" > /etc/locale.gen
echo "LANG=en_NZ.UTF-8" > /etc/locale.conf
locale-gen

# restore if package cache was saved from previous deployments
if [ -e /vagrant/pkg.tgz ]
then
	cd /var/cache/pacman/pkg
	tar -xzvf /vagrant/pkg.tgz 
	cd
fi

# update packages
pacman -Syu --noconfirm

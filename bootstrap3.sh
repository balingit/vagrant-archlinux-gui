#!/usr/bin/env bash

# save downloaded packages future deployments
pacman -Sc --noconfirm
cd /var/cache/pacman/pkg
tar -czvf /vagrant/pkg.tgz *

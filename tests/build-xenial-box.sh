#!/bin/sh

sudo ./packer build -var "vagrant-cloud-token=$(cat vagrant-cloud.token)" -var "installer-image=http://archive.ubuntu.com/ubuntu/dists/xenial-updates/main/installer-amd64/current/images/netboot/mini.iso" -var "installer-chksum=$(packer-vagrant-box-builder/bin/get-image-chksum.sh http://archive.ubuntu.com/ubuntu/dists/xenial-updates/main/installer-amd64/current/images/netboot/mini.iso)" ubuntu-16.04-server-base.json


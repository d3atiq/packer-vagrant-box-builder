#!/bin/sh

BASEDIR=$(cd "$(dirname "$0")"; pwd)

$BASEDIR/download-vagrant-insecure-key.sh
$BASEDIR/packer build -var "vagrant-cloud-token=$(cat $BASEDIR/../etc/vagrant-cloud.token)" "$@" 

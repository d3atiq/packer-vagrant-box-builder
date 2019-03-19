#!/bin/sh

BASEDIR=$(cd "$(dirname "$0")"; pwd)

mkdir -p $BASEDIR/../target/.ssh &&\
$BASEDIR/packer build -var "vagrant-cloud-token=$(cat $BASEDIR/../etc/vagrant-cloud.token)" "$@" 

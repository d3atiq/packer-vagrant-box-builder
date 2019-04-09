#!/bin/sh

BASEDIR=$(cd "$(dirname "$0")"; pwd)

mkdir -p $BASEDIR/../.ssh

curl -so $BASEDIR/../.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
curl -so $BASEDIR/../.ssh/vagrant.key https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant

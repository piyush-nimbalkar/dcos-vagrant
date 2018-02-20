#!/usr/bin/env bash

set -o errexit
set -o pipefail

if [ ! -f /vagrant/id_rsa ]; then
    ssh-keygen -t rsa -P '' -f /vagrant/id_rsa
fi

mkdir -p /root/.ssh
chmod 700 /root/.ssh
cat /vagrant/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 640 /root/.ssh/authorized_keys

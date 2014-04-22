#!/bin/bash

#Remove last box
rm -f build/*.box

#Build new box
cd ansible && git checkout master && git pull && git submodule update --init --recursive
cd ..
cd templates/ubuntu
packer build ubuntu-14.04-server-amd64_with_ansible.json

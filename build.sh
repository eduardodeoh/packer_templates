#!/bin/bash

#Remove last box
rm -f build/vmware/*.box

#Build new box
cd templates/ubuntu
packer build ubuntu-14.04-server-amd64.json

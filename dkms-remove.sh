#!/bin/sh

DRV_NAME=hello
DRV_VERSION=0.1
sudo rmmod hello.ko
sudo dkms remove ${DRV_NAME}/${DRV_VERSION} --all
sudo rm -rf /usr/src/${DRV_NAME}-${DRV_VERSION}

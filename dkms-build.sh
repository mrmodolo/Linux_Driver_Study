#!/bin/sh

DRV_NAME=hello
DRV_VERSION=0.1
DRIVER_PATH=$(pwd)
sudo cp -r "$DRIVER_PATH" /usr/src/${DRV_NAME}-${DRV_VERSION}
sudo dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
sudo dkms build -m ${DRV_NAME} -v ${DRV_VERSION}

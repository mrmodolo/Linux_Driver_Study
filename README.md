# How to Develop Linux Driver from Scratch

[How to Develop Linux Driver from Scratch](https://medium.com/@knownsec404team/how-to-develop-linux-driver-from-scratch-cc143e0c08a1)

Author: Hcamael@Knownsec 404 Team
Chinese Version: https://paper.seebug.org/779/

sudo insmod hello.ko
insmod: ERROR: could not insert module hello.ko: Operation not permitted

## Build with DKMS

I have UEFI configured and so to test the module you need to sign

```bash
DRV_NAME=hello
DRV_VERSION=0.1
DRIVER_PATH=...
sudo cp -r "$DRIVER_PATH" /usr/src/${DRV_NAME}-${DRV_VERSION}
sudo dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
sudo dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
```

## Remove with DKMS

```bash
sudo dkms remove ${DRV_NAME}/${DRV_VERSION} --all
```

## kmodsign

```bash
sudo kmodsign sha512 /var/lib/shim-signed/mok/MOK.priv /var/lib/shim-signed/mok/MOK.der hello.ko
sudo insmod hello.ko
```

[Building Debian kernel modules with DKMS](https://wiki.debian.org/KernelDKMS)


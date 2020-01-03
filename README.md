## CH340-DKMS
[![Build Status](https://travis-ci.org/OLIMEX/ch340-dkms.svg?branch=master)](https://travis-ci.org/StefanMavrodiev/ch340-dkms)

**Important**:
In kernel version 5.5, the speed handling if fixed. You can see the commit log [here](https://github.com/torvalds/linux/commit/35714565089e5e8b091c1155517b67e29118f09d#diff-27cbcff3aa65aa3cda4aef10b416dd24). Thus if you're running kernel 5.5 or later
please use the default ch341.ko module.

### Installation

Install required packages
```sh
sudo apt install dkms
```

Build and install module
```sh
sudo dkms build .
sudo dkms install ch340/1.0.0
```

Blacklist the "wrong" driver. Open ***blacklist.conf*** (may not exist).
```sh
sudo nano /etc/modprobe.d/dkms.conf
```
Add the following line:
```
blacklist ch341
```

### Changelog

#### 1.0.0 - 3 Jun 2019
- Initial release

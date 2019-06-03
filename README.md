## CH340-DKMS
[![Build Status](https://travis-ci.org/StefanMavrodiev/ch340-dkms.svg?branch=master)](https://travis-ci.org/StefanMavrodiev/ch340-dkms)

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
sudo nano /etc/modules-load.d/blacklist.conf
```
Add the following line:
```
blacklist ch341
```

### Changelog

#### 1.0.0 - 3 Jun 2019
- Initial release

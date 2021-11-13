# dkms-hid-nintendo

A Nintendo HID kernel module with support for the Nintendo Switch Online (NSO) N64 and Sega Genesis controllers.

For any questions or bug reports, please refer to [hid_nintendo](https://github.com/DanielOgorchock/linux).

based on https://github.com/nadiaholmquist/linux/tree/hid-nintendo


## Installation

 1. Clone this repository to /usr/src/hid-nintendo-1.3
 2. Install DKMS module (change the "-k" parameter to suit your kernel): `sudo dkms install --no-depmod -m hid-nintendo -v 1.3 -k 5.15.2-arch1-1`
 3. Generate modules.dep and map files: `sudo depmod 5.15.2-arch1-1`
 4. Activate the kernel module: `sudo modprobe -v hid-nintendo`

Also note this is for personal use just because I wanted to play with my controller the day I got them
and I am sure support from a better programmer will come soon

## Related projects

- [joycond](https://github.com/DanielOgorchock/joycond): A userspace daemon to
  combine joy-cons from the hid-nintendo kernel driver
- [joycond-cemuhook](https://github.com/joaorb64/joycond-cemuhook): Support for
  cemuhook's UDP protocol for joycond devices

sudo dkms remove --no-depmod -m hid-nintendo -v 1.3 -k 5.10.70-1-MANJARO
sudo rm -r  /usr/src/hid-nintendo-1.3/
sudo cp -r ~/hid-nintendo-1.3 /usr/src/
sudo dkms install --no-depmod -m hid-nintendo -v 1.3 -k 5.10.70-1-MANJARO
sudo depmod 5.10.70-1-MANJARO
sudo modprobe -vr hid-nintendo
sudo modprobe -v hid-nintendo

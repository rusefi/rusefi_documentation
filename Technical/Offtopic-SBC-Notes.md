

https://www.balena.io/etcher/ is a popular tool to flash OS images to SD cards & USB drives.


rusEFI console in headless mode is known to work on Raspberry 3.


###

_buster_ is codename for Debian version 10.

Ubuntu is a Debian fork. _focal_ is a codename for one of Ubuntu releases.

Raspberry Pi OS (previously called Raspbian) is based on Debian.



### Notes on setup

Wifi password is in ``/etc/network/interfaces`` file
```
sudo dhclient wlan0
```

### Armbian
Default root password 1234
Default baud rate 115200


https://www.hackster.io/mexmarv/iot-raspberry-pi-wifi-headless-setup-6be0de

https://www.furkantokac.com/rpi3-fast-boot-less-than-2-seconds/

https://medium.com/swlh/make-your-raspberry-pi-file-system-read-only-raspbian-buster-c558694de79

# latest packages
sudo apt-get update && apt-get upgrade
sudo apt-get remove --purge triggerhappy logrotate dphys-swapfile


sudo rm -rf /var/lib/dhcp /var/lib/dhcpcd5 /var/spool /etc/resolv.conf
sudo ln -s /tmp /var/lib/dhcp
sudo ln -s /tmp /var/lib/dhcpcd5
sudo ln -s /tmp /var/spool
sudo touch /tmp/dhcpcd.resolv.conf
sudo ln -s /tmp/dhcpcd.resolv.conf /etc/resolv.conf

sudo rm /var/lib/systemd/random-seed
sudo ln -s /tmp/random-seed /var/lib/systemd/random-seed


ExecStartPre=/bin/echo "" >/tmp/random-seed



### Hardware

https://kaspars.net/blog/orange-pi-zero-gpio

https://rusefi.com/forum/viewtopic.php?p=37563#p37563

http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2#Dimensional_Diagram


# Orange PI CI setup

https://www.armbian.com/orange-pi-zero/

wget https://redirect.armbian.com/orangepizero/Buster_current.torrent
sudo apt-get install transmission-cli transmission-common transmission-daemon
transmission-remote -n 'transmission:transmission' -a Buster_current.torrent
lsblk -p
sudo apt install xz-utils
xzcat /var/lib/transmission-daemon/downloads/Armbian_21.05.6_Orangepizero_buster_current_5.10.43.img.xz > Orangepizero.img
sudo dd if=Orangepizero.img of=/dev/sdb bs=4M conv=fsync




# Single Board Computer Notes

[Balena Etcher](https://www.balena.io/etcher/) is a popular tool to flash OS images to SD cards & USB drives.

rusEFI console in headless mode is known to work on Raspberry 3.

_buster_ is codename for Debian version 10.

Ubuntu is a Debian fork. _focal_ is a codename for one of Ubuntu releases.

Raspberry Pi OS (previously called Raspbian) is based on Debian.

## Notes on setup

Wifi password is in `/etc/network/interfaces` file

```shell
sudo dhclient wlan0
```

## Armbian

Default root password 1234
Default baud rate 115200

[Raspberry PI wifi headless setup](https://www.hackster.io/mexmarv/iot-raspberry-pi-wifi-headless-setup-6be0de)

[Raspberry PI fast boot](https://www.furkantokac.com/rpi3-fast-boot-less-than-2-seconds/)

### latest packages

```shell
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
```

## Hardware

[Orange Pi Zero GPIO Pins](https://kaspars.net/blog/orange-pi-zero-gpio)

[Single Board Computers - Forum](https://rusefi.com/forum/viewtopic.php?p=37563#p37563)

[NanoPi Duo2 Dimensions](http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2#Dimensional_Diagram)

### SD card preparation

Resize primary partition [Resizing RPi Partitions](https://elinux.org/RPi_Resize_Flash_Partitions#Resizing)

```shell
lsusb
lsblk

resize2fs /dev/sdb 4g

parted /dev/sdb
resizepart 1
4300 works good for 4g filesystem
quit

e2fsck -f /dev/sdb1

fdisk -l /dev/sdb
to see last used sector and total number of sectors 

fdisk  /dev/sdb
n for 'new'
p for 'primary'
2
begin (last used sector+1)
end ( total number of sectors -1)

blkid /dev/sdb2 | awk -F'"' '{print $2}'

UUID=0e281f8d-1117-451d-9b1b-b07405a631bc /rw auto nosuid,nodev,nofail 0 0
```

now add ",ro" into /etc/fstab
[Make your Raspberry Pi file system read-only](https://medium.com/swlh/make-your-raspberry-pi-file-system-read-only-raspbian-buster-c558694de79)

```shell
backup
dd if=/dev/sdb of=2021_July_26_orange_zero.img
```

## Orange PI CI setup

[Orange Pi Zero](https://www.armbian.com/orange-pi-zero/)

```shell
wget <https://redirect.armbian.com/orangepizero/Buster_current.torrent>
sudo apt-get install transmission-cli transmission-common transmission-daemon
transmission-remote -n 'transmission:transmission' -a Buster_current.torrent
lsblk -p
sudo apt install xz-utils
xzcat /var/lib/transmission-daemon/downloads/Armbian_21.05.6_Orangepizero_buster_current_5.10.43.img.xz > Orangepizero.img
sudo dd if=Orangepizero.img of=/dev/sdb bs=4M conv=fsync
```

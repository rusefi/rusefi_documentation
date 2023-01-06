# Firmware Update via CAN

## technical info

STM32 hard-coded bootloader support CAN firmware update but only on specific hardware pins PB5 PB13 which conflict with SPI hardware pins, weird not great option for us.

[OpenBLT GNU GPL Bootloader](http://www.feaser.com) allows CAN firmware update via any CAN pins. OpenBLT uses it's custom (?) update protocol using two CAN PIDs.

This was tested using [PCAN-USB Interface](https://www.peak-system.com/PCAN-USB.199.0.html?&L=1) hardware

Open question how popular is PCAN. Looks like [PCAN Firmware](https://github.com/moonglow/pcan_cantact) turns stm32f042 boards into PCAN. Maybe even [Canable](https://canable.io/?)

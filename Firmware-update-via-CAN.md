


## technical info
STM32 hard-coded bootloader support CAN firmware update but only on specific hardware pins PB5 PB13 which conflict with SPI hardware pins, weird not great option for us.

http://www.feaser.com is an open source bootloader which allows CAN firmware update via pins.
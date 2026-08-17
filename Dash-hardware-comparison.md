# Dev: Dash Hardware Options

Somewhat technical comparison between a few different hardware options. A potential Gemini query would be "i want to create an automotive dash. are there major differences between raspberri pi vs esp32 vs allwinner?"

## ESP32

🟢 Single click purchase - $40 for a complete platform

🟢 Arduino IDE

🟢 Boot Time pretty instant, < 250 milliseconds

🔴 Refresh rate limitation due to ESP32-S3

🔴 Temperature range

https://github.com/Light-r4y/uaDASH

## STM32

🔴 Temperature range

🔴 [Single click purchase $180](https://riverdi.com/product/7-inch-lcd-display-capacitive-touch-panel-optical-bonding-uxtouch-stm32h7-rvt70hssnwc00-b)

https://github.com/opelpanfan/car-dash-wide

https://github.com/romioRN/Dash_6.8-hardware

https://github.com/romioRN/Dash6.8_firmware

## Allwinner or Rockchip etc

RK3588

🟢 Temperature range

🔴 limited single click purchase unavailable

## Raspberry Pi

🔴 Power Loss Handling: Cutting power abruptly risks corrupting ext4 filesystems on SD cards or eMMC. You must implement a delayed power-off relay circuit (latching MOSFET tied to ignition sensing) or run entirely on a read-only root overlayfs.

🔴 No native CAN?

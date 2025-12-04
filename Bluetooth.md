# Bluetooth

Obviously, rusEFI supports Bluetooth, 🔴 but we barely support it, it's horrible. 🔴

JDY-33 modules are the default.

rusEFI Console has commands for Bluetooth module initialization (see below); at the moment we do not have a TunerStudio interface for Bluetooth module initialization.

## Reference Design

https://github.com/rusefi/alphax-4chan is the most popular open-source board with on-board Bluetooth.

## Isn't HC-06 Dead?

That's an open question - see [this issue](https://github.com/rusefi/rusefi/issues/6197).

JDY-33 seems to be the way to go Bluetooth. rusEFI supports JDY-33 initialization and 4chan comes with a JDY-33. However, there are still [some issues](https://github.com/rusefi/rusefi/issues/5918).

## HC-06 Bluetooth Module serial RS232 TTL

On start, HC-06 accepts AT commands at 9600 baud.

the default pin is 1234

## JDY

``bluetooth_jdy 115200 alphax 1234``

Which is just one the possibilities:

``` c
	// Usage:   "bluetooth_hc06 <baud> <name> <pincode>"
	// Example: "bluetooth_hc06 38400 rusefi 1234"

bluetooth_hc05 bluetooth_hc06 bluetooth_bk bluetooth_jdy
```

https://rusefi.com/forum/viewtopic.php?f=13&t=1999

## BluetoothView

[A cool relevant Windows utility](https://www.nirsoft.net/utils/bluetooth_viewer.html)

## Is there hope?

We do not have motivation or resources to spare on a better slow connection profile. If anything, consider WiFi, maybe something like [UART-TCP-proxy](https://github.com/Light-r4y/UART-TCP-proxy).

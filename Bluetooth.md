# Obviously rusEFI supports Bluetooth

🔴 but we barely support it, it's horrible 🔴

JDY-33 modules are the default

rusEFI console has commands for Bluetooth module initialization (see below), at the moment we do not have TunerStudio interface for Bluetooth module initialization.

## Reference Design

https://github.com/rusefi/alphax-4chan is the most popular open source board with on-board bluetooth.

## Isn't HC-06 Dead?

That's an open question see https://github.com/rusefi/rusefi/issues/6197

JDY-33 seems to be the way to go Bluetooth in 2023. Yes, rusEFI supports JDY-33 initialization. Yes, 4chan comes with JDY-33. 2024 update https://github.com/rusefi/rusefi/issues/5918 what a mess

## HC-06 Bluetooth Module serial RS232 TTL

On start, HC-06 accepts AT commands @ 9600.

the default pin is 1234

## JDY

``bluetooth_jdy 115200 alphax 1234``

Which is just one the possibilities

``` c
	// Usage:   "bluetooth_hc06 <baud> <name> <pincode>"
	// Example: "bluetooth_hc06 38400 rusefi 1234"

bluetooth_hc05 bluetooth_hc06 bluetooth_bk bluetooth_jdy

```

https://rusefi.com/forum/viewtopic.php?f=13&t=1999

## BluetoothView

A cool relevant Windows utility http://www.nirsoft.net

## Is there hope?

We do not have motivation and resources to spare on better slow connection profile. If anything consider WiFi maybe https://github.com/Light-r4y/UART-TCP-proxy

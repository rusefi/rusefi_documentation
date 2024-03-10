# Obviously rusEFI supports Bluetooth

## Reference Design

https://github.com/rusefi/alphax-4chan is the most popular open source board with on-board bluetooth.

## Isn't HC-06 Dead?

JDY-33 seems to be the way to go Bluetooth in 2023. Yes, rusEFI supports JDY-33 initialization. Yes, 4chan comes with JDY-33.

## HC-06 Bluetooth Module serial RS232 TTL

On start, HC-06 accepts AT commands @ 9600.

the default pin is 1234

## JDY

``bluetooth_jdy 115200 alphax 1234``

## BluetoothView

A cool relevant Windows utility http://www.nirsoft.net

# LED states

Most rusEFI units have four status LEDs.

* Blue: Communication
* Red: Fatal/Critical error
* Green: Engine status on many boards
* Orange: misc

Some simpler units have only blue and red.

## Bootloader

During the bootloader part of the power-on sequence, all four LEDs are expected to blink just to confirm life.

## Normal operation

During normal operation, the blue LED is supposed to always blink at 50% duty cycle. The blue LED blinking frequency changes when USB connection is detected. Lack of any blinking means a brand new from factory unit or a completely unexpected firmware condition.

The green LED on many rusEFI boards indicates the engine status.

* Off: Engine stopped
* Blinking: Engine cranking
* On: Engine running

## Fatal error

Solid red means critical error; no engine operation is possible and a power cycle is required.

## Common Issues

Look at the PCB. On all rusEFI boards we expect the blue LED to always blink.

### The Blue LED is not Blinking

Do you have power? Do you have any LED lights? Do you have a USB cable? On all modern units we have a PROG button. Power cycle your unit while connected to PC while holding PROG button, your PC should report STM32 BOOTLOADER in device manager.

### The Blue LED is Blinking But Nothing in Device Manager

Make sure your USB cable is a proper data cable, not an evil charge-only cable.

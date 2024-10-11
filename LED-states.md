# LED states

Most rusEFI units have four status LEDs 
* Communication blue
* Fatal/Critical error red
* orange misc
* green misc

Some simpler units have only communication blue and Fatal red

# Bootloader

During bootloader operation all four LEDs are expected to blink

# Normal operation

During normal operation blue LED is supposed to always blink. Blue LED blinking frequency changes when USB connection is detected. Lack of any blinking means brand new from factory unit or completely unexpected firmware condition

# Fatal error

Solid red means critical error, power cycle is required

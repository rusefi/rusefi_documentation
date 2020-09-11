### Getting Data to and from Tunerstudio

Definition of configuration data structure:  
integration/rusefi_config.txt  
This file has more information in its comment header.

Definition of the Tunerstudio configuration interface, gauges, and indicators
tunerstudio/rusefi.input  

Contains the enum with values to be output to Tunerstudio.
console/binary/tunerstudio_outputs.h

See the [documentation main page](https://rusefi.com/docs/html/#config) for more information and tips on how to use these files.

Q: Do new outputs need to be added at the end and their space taken out of mainUnusedEnd[]?  
A: Look at the diff. if the diff is not crazy you are doing it right. If the diff touches too much stuff you are doing it wrong.
In practice I have found this to mean that they should be added to the end.
Usually the tradition is not to move other existing fields for no reason. Starting an array at an odd offset is also unusual.
Let's work around existing fields without shifting them please.
There may be unused "padding" variables spread throughout that can be replaced with your new variables, particularly of the 'bit' type, as we do bit packing for better communication efficiency.

Check config/boards/kinetis/config/controllers/algo/engine_configuration_generated_structures.h after generating to ensure the total size is 20000

Tunerstudio output channels are handled completely manually, as opposed to settings where offsets are managed automatically by the gen_config scripts.
Adding channels to tunerstudio_outputs.h induces offsets which are kept track of in comments next to each channel.
In the OutputChannels section of rusefi.input, these values are 3rd token in the configuration string.

http://www.tunerstudio.com/index.php/manuals/63-changing-gauge-limits

in order to use CONFIG macro you need EXTERN_CONFIG and include engine_configuration.h

### GPIO

[efiSetPadMode()](https://rusefi.com/docs/html/io__pins_8cpp.html#a4bd76c1e23f3126d720239707dbcbaaf)  
[efiReadPin()](https://rusefi.com/docs/html/io__pins_8cpp.html#a6df3ebf4716cb8e2a42f45f6fa7e3afe)

efiSetPadMode calls brain_pin_markUsed  
If you call efiSetPadMode, you need to call brain_pin_markUnused if the config changes.  
There are several places this could be done, depending on the purpose of your code.  
applyNewHardwareSettings() in hw_layer/hardware.cpp  
incrementGlobalConfigurationVersion() in controllers/algo/engine_configuration.cpp  
unregisterPins() in controllers/system/efi_gpio.cpp

### General how-do-I-do-this

most stuff is initiated in engine_controller.cpp

There are useful enums in firmware/controllers/algo/rusefi_enums.h  
Acquaint yourself with them to avoid re-inventing them.

[Timers](https://rusefi.com/docs/html/#sec_timers)

efitick_t is cheaper than efitimems_t.  
getTimeNowNt() will get you the current time in units of efitick_t.  
MS2NT(...) will convert from milliseconds to efitick_t.

For logging, use [scheduleMsg()](https://rusefi.com/docs/html/loggingcentral_8h.html#a0da1724993b78c84530d681d254b59a2)  
sharedLogger is a generally available logger object, which is passed (by reference) to scheduleMsg.

### Discovery pinout with usable pins

https://docs.google.com/spreadsheets/d/1pnU3Migcc7JEezvpVt3TcVCbuE5dIXXwrYFGZI97GNM/edit#gid=0

### Debugging

http://www.openocd.org/doc/html/GDB-and-OpenOCD.html

Using openocd and gdb on STM32F407G-DISC1 requires modifying stm32f4discovery.cfg to source stmlink-v2-1.cfg

```
openocd -f /usr/share/openocd/scripts/board/stm32f4discovery1.cfg
arm-none-eabi-gdb rusefi.elf
tar ext :3333
mon reset halt
<set breakpoints>
load
c
```

### Errors

`cannot move location counter backwards (from 0000000020020018 to 0000000020020000)`  
This means that rusEFI is out of memory.  
Down at the end of engine_controller.cpp there's a dummy array that keeps track of how much free space we have. You can shrink that to give your code room to fit.

### Testing

All tests are run in one instance, but each test gets its own EngineTestHelper, which calls commonInitEngineController, so your objects need to gracefully handle being initiated multiple times.  
For CONFIG(...) to work in tests, you need a DECLARE_ENGINE_PTR; in the class declaration, then an INJECT_ENGINE_REFERENCE(&myObject), at some point during init.  
Time doesn't pass in tests. If you need time to pass, you have to do it manually.  
Example:  
`timeNowUs += MS2US(15);`

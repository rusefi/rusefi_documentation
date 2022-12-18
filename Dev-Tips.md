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
US2MS(NT2US()) will convert in the other direction.

For logging, use [scheduleMsg()](https://rusefi.com/docs/html/loggingcentral_8h.html#a0da1724993b78c84530d681d254b59a2)  
sharedLogger is a generally available logger object, which is passed (by reference) to scheduleMsg.

### Discovery pinout with usable pins

[stm32f4 discovery pinout with functions](https://docs.google.com/spreadsheets/d/1pnU3Migcc7JEezvpVt3TcVCbuE5dIXXwrYFGZI97GNM/edit#gid=0)

### Debugging

[GDB and OpenOCD](http://www.openocd.org/doc/html/GDB-and-OpenOCD.html)

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

Unit tests will run under various tools that check for memory or other violations ("Sanitizers" such as AddressSanitizer or Valgrind).  For performance reasons, some of these are only run at GitHub actions, but if you need to you can run them yourself.
* Unit tests by default are built for AddressSanitizer.  You can disable this by running `make SANITIZE=no`.  This will detect memory overruns and underruns, although it won't detect overruns within a struct (for example, running off the end of an array that happens to land on some unrelated-but-valid memory after the array but is still in the struct).
* Unit tests on GitHub are also built for AddressSanitizer, but add an additional check for stack use after free.  You can mimic this yourself by running tests as `ASAN_OPTIONS=detect_stack_use_after_return=1 build/rusefi_test`
* Unit tests on GitHub are also run under Valgrind.  This helps detect using uninitialized memory, among other differences.  In order to run under Valgrind, you must first compile without ASAN: `make SANITIZE=no` then run as `valgrind build/rusefi_test`.  You have to scan through stderr to find the errors of interest, so you can run: `valgrind build/rusefi_test > /dev/null`.

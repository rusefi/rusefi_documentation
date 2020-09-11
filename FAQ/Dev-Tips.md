### Getting Data to and from Tunerstudio

integration/rusefi_config.txt
tunerstudio/rusefi.input
console/binary/tunerstudio_outputs.h

Me:
And what's with Tunerstudio struct alignment? I added options for TCU enabled and upshift and downshift pin modes. Do those need to be added at the end and their space taken out of mainUnusedEnd[]?  The Source Code Q&A links to a Google Doc to track alignment that is in the owner's trash. Is this being tracked somehow else?
Andrey:
as for TS, look at the diff. if the diff is not crazy you are doing it right
if the diff touches too much stuff you are doing it wrong
^^^
In practice I have found this to mean that they should be added to the end
usually the tradition is not to move other existing fields for no reason. starting an array at an odd offset is also unusual
let's work around existing fields without shifting them please

check
config/boards/kinetis/config/controllers/algo/engine_configuration_generated_structures.h
after generating to ensure the total size is 20000

In the OutputChannels section of rusefi.input, the third value needs to match the bit position of the value in tunerstudio_outputs.h

http://www.tunerstudio.com/index.php/manuals/63-changing-gauge-limits

! Q: What is "@OFFSET@"?
! A: That's a templace placeholder for field offset within the resuting data structure.
!
! Q: What is "[0:2]"?
! A: That part of the bit declaration specified usage of three bits - from bit 0 to bit 2

In order to use the CONFIG macro, you need to include engine.h and call EXTERN_ENGINE in order to get persistentState

### GPIO

efiSetPadMode()
efiReadPin()

efiSetPadMode calls brain_pin_markUsed
call brain_pin_markUnused if config changes

### General how-do-I-do-this

most stuff is initiated in engine_controller.cpp

enums in firmware/controllers/algo/rusefi_enums.h

PeriodicController or PeriodicTimerController
or controllers/algo/engine.cpp periodicFastCallback

efitick_t is cheaper than efitimems_t
getTimeNowNt() will get you the current time in units of efitick_t.
MS2NT(...) will convert from milliseconds to efitick_t, so you can convert the passed in threshold to use ticks internally

scheduleMsg is logging
sharedLogger is available

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

cannot move location counter backwards (from 0000000020020018 to 0000000020020000)
means out of memory
down at the end of engine_controller.cpp there's a dummy array that keeps track of how much free space we have
you can shrink that to make it fit

### Testing

All tests are run in one instance, but each test gets its own EngineTestHelper, which calls commonInitEngineController, so your objects need to gracefully handle being initiated multiple times.

For CONFIG(...) to work in tests, you need a DECLARE_ENGINE_PTR; in the class declaration, then an INJECT_ENGINE_REFERENCE(&myObject); during init some time

time doesn't pass in tests
you have to manually pass time
if you want time to pass, that is
timeNowUs += MS2US(15);

# Compiling

Download the latest ARM GCC from ARM itself: https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads

These can be extracted under your home directory; just add the `bin` directory to your path.

TODO: You probably need to install additional packages but I don't remember what they are.

# Working with OpenOCD

Depending on how new your dev board is, you may need to upgrade OpenOCD.  For example, a nucleo-h743 requires OpenOCD 0.11+.  Luckily you can download and run the latest version from your local home directory.  Unofficial binaries are available here:
https://github.com/xpack-dev-tools/openocd-xpack/releases

To get started, plug the ST-Link side of the dev board into your computer.  Generally this should power the whole board.

OpenOCD can be left running in the background while you develop in other windows.  It will provide a GDB server, a telnet connection for issuing commands, and a TCL interface.  We'll just ignore the last one for now.

To reprogram, simply do:
```
telnet localhost 4444
reset halt
flash write-image erase build/rusefi.elf
reset run
exit
```

On a nucleo-h743, I don't seem to get much indication this worked, but if you connect via gdb:
```
gdb build/rusefi.elf
target remote :3333
```
then you might end up in the middle of the ChibiOS idle function, a good indication you've succeeded.

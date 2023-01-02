# Developing On Linux

# Compiling

Download the latest ARM GCC from ARM itself: [ARM GCC toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)

These can be extracted under your home directory; just add the `bin` directory to your path.

TODO: You probably need to install additional packages but I don't remember what they are.

Then to compile the firmware,

```
cd firmware
make PROJECT_BOARD=nucleo_h743 PROJECT_CPU=ARCH_STM32H7 -j4
```

Edit according to your environment.

To compile the simulator,

```
cd simulator
./compile.sh
```

To compile the unit tests,

```
cd unit_tests
make -j4
```

# Working with STM32 Dev/Nucleo boards

These boards are convenient as they include an ST-Link onboard which aids debugging.  I believe the main difference is a Development board includes a bunch of peripherals that you may or may not care about, while a Nucleo board is much more stripped down.  Some (all?) boards will be powered when you connect to the ST-Link USB board.  The ST-Link will include, among other things, a virtual com port, which can be used to run either the console or TunerStudio.  However, by default the ports are not accessible by regular users.  You can solve this with:

```
sudo chmod 666 /dev/ttyACM*
```

Adapt as necessary depending on the permissions you choose to expose.

## Working with OpenOCD

Depending on how new your dev board is, you may need to upgrade OpenOCD.  For example, a nucleo-h743 requires OpenOCD 0.11+.  Luckily you can download and run the latest version from your local home directory.  Unofficial binaries are available here:
[OpenOCD-Xpack releases](https://github.com/xpack-dev-tools/openocd-xpack/releases)

To get started, plug the ST-Link side of the dev board into your computer.  Generally this should power the whole board.

OpenOCD can be left running in the background while you develop in other windows.  It will provide a GDB server, a telnet connection for issuing commands, and a TCL interface.  We'll just ignore the last one for now.  To start OpenOCD, you need to pass in a board configuration file.  Luckily they exist for most any off the shelf board you care about.

```
sudo ~/openocd/xpack-openocd-0.11.0-2/bin/openocd -f ~/openocd/xpack-openocd-0.11.0-2/scripts/board/st_nucleo_h743zi.cfg
```

Adjust as necessary; you may need `sudo` if you don't normally have access to USB devices.

To reprogram, simply do:

```
telnet localhost 4444
program build/rusefi.elf reset
exit
```

Or, if you prefer a one-liner:

```
(echo "program build/rusefi.elf reset"; echo exit) | nc localhost 4444
```

Conveniently, OpenOCD will retain a history of commands, allowing you to use up-arrows to retrieve previous commands.

On a nucleo-h743, I don't seem to get much indication this worked, but if you connect via gdb:

```
gdb build/rusefi.elf
target remote :3333
```

then you might end up in the middle of the ChibiOS idle function, a good indication you've succeeded.

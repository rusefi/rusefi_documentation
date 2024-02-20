# Developer Quick Start

STM32F407 firmware

```shell
git clone --recurse-submodules https://github.com/rusefi/rusefi
cd firmware
make
```

virtual serial port

PC application to send commands: [rusEFI Firmware bundle](https://rusefi.com/build_server/rusefi_bundle.zip)

See also <https://github.com/rusefi/rusefi/blob/master/firmware/setup_linux_environment.sh>

[ChibiOS](https://www.chibios.org/)

## GitHub Actions

We rely on github actions heavily. We commit manual changes while github actions are commiting auto-generated stuff if needed. 

Note the green icon for happy continues integration, note commits by actions-user.

![image](https://github.com/rusefi/rusefi/assets/48498823/563b839a-b56b-4c88-a44d-3696c81e11a6)

Make sure that your fork has Actions enabled:

![image](https://github.com/rusefi/rusefi/assets/48498823/c7752a3f-3278-45d7-86d3-1439e5571e56)



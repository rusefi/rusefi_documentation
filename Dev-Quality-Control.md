# Development Quality Control

We love our engines and we want them to live a long & happy life. That's why we have a three-tier quality assurance process:

* Continuous Integration: Unit testing with Github Actions with [ASan](https://github.com/google/sanitizers/wiki/AddressSanitizer)
* built-in trigger signal simulation
* [Simulator](Virtual-simulator)

For current coverage report see [the coverage page](https://rusefi.com/docs/unit_tests_coverage/)

## Hardware Continuous Integration

### STM32F407G-DISC1

Since 2015 there is always a stm32f4 board listening for VCS updates running rusEFI hardware continues integration, "HW CI" for short.

Anyone can execute real hardware test suite by invoking. This command would detect rusEFI hardware automatically and invoke
HwCiF4Discovery.java

``java -jar rusefi_console.jar functional_test``

The following jumper wires are used to test some subsystems as realistically as possible:

* PD1 <=> PC6
* PD2 <=> PA5

### Proteus F4

tbd

### On setting new MXLinux runners

https://github.com/rusefi/rusefi/settings/actions/runners

``sudo mx-boot-options`` to set systemd as default

https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service

We love our engines and we want them to live a long & happy life. That's why we have a three-tier quality assurance process:

* Continuous Integration: Unit testing with [Github Actions](https://github.com/rusefi/rusefi/actions? query=workflow%3A%22Unit+Test+CI%22) see unit_tests
* built-in trigger signal simulation
* [Simulator](Virtual-simulator)

For current coverage report see [the coverage page](https://rusefi.com/docs/unit_tests_coverage/)

## Hardware Continuous Integration

Since 2015 there is always a stm32f4 board listening for VCS updates running rusEFI hardware continues integration, "HW CI" for short.



Anyone can execute real hardware test suite by invoking. This command would detect rusEFI hardware automatically and invoke
[broken link](https://github.com/rusefi/rusefi/blob/master/java_console/autotest/src/com/rusefi/RealHwTest.java)


``java -jar rusefi_console.jar functional_test``
 
The following jumper wires are used to test some subsystems as realistically as possible:
 * PD1 <=> PC6
 * PD2 <=> PA5
 
 
# HOWTO Contribute to Firmware

The majority of rusEFI code is written in very plain C++ ("C with classes"), with rusEFI Console and some code-generating tools written in Java.

Most of the needs are within the C/C++ firmware and automated testing.

A good first contribution could be adding some automated testing into [https://github.com/rusefi/rusefi/tree/master/unit_tests/tests](https://github.com/rusefi/rusefi/tree/master/unit_tests/tests)

For a current coverage report see [https://rusefi.com/docs/unit_tests_coverage/](https://rusefi.com/docs/unit_tests_coverage/)

Doxygen source code documentation is found [here](https://rusefi.com/docs/html/).

The primary tool-chain is GCC+Eclipse but IAR is also supported.

Linux is the preferred build environment; Windows Subsystem for Linux (WSL) also works fine.
To set up a development environment use [setup_linux_environment.sh](https://github.com/rusefi/rusefi/blob/master/firmware/setup_linux_environment.sh)

Open testing coverage tickets: [https://github.com/rusefi/rusefi/labels/automated_testing](https://github.com/rusefi/rusefi/labels/automated_testing)

All open tickets: [https://github.com/rusefi/rusefi/issues](https://github.com/rusefi/rusefi/issues)

[Click here for a Q&A on source code.](http://rusefi.com/forum/viewtopic.php?f=5&t=10)

See [Dev Quick Start](Dev-Quick-Start)

## Tips

### Don't Push to Master

Do not commit to the master branch of your fork. There are only two reasons to do that and both are bad.

### Generated Files

Do not commit any of the auto-generated files. Looks like we need to go over which generated files are even pushed into github, definitely technical debt but well, no budget :(

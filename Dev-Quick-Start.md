# Developer Quick Start

rusEFI is an open source internal combustion engine control unit primarily running on STM32F4/F7 microcontrollers.

To develop the firmware yourself, the first step is to fork [the GitHub repository](https://github.com/rusefi/rusefi), then make sure you have [GitHub Actions enabled](#github-actions) on your fork.

There are a few scripts to help you get up-and-running quickly on a Debian or Ubuntu-based system:

``` shell
git clone --recurse-submodules https://github.com/rusefi/rusefi
misc/actions/ubuntu-install-tools.sh
cd firmware
./setup_linux_environment.sh
make
```

## Embedded Firmware

See [the firmware README](https://github.com/rusefi/rusefi/blob/master/firmware/readme.md).

The [rusEFI Firmware bundle](https://rusefi.com/build_server/rusefi_bundle_f407-discovery.zip) includes STM32F407 firmware and a pre-compiled PC application to send commands.

## Unit Tests

We use CI/CD heavily; see https://github.com/rusefi/rusefi/blob/master/unit_tests/readme.md

## GitHub Actions

We rely on GitHub Actions heavily. We commit manual changes while GitHub Actions are committing auto-generated stuff if needed.

Note the green icon for happy continuous integration; note commits by actions-user.

![image](Images/GH_actions_commits.png)

Make sure that your fork has Actions enabled:

![image](Images/GH_actions_enable.png)

## Pull Requests should be atomic

Please create small, feature-specific branches on your fork. Submit one PR per fix or feature.
Please do not submit a massive "kitchen sink" PR from your fork that fixes three bugs, adds two features, and reformats the entire codebase.
We will likely reject it because it’s impossible to review. It forces us to accept all your changes or none of them.

## Hostile Forks

Free Open Source Software is a two-way street: it's not OK not to PR your sweet progress.
Be also believe that it's morally questionable to intentionally make forks incompatible. 
We believe that it's morally questionable for forks to be private.
We doubt that anyone is benefiting from community fragmentation.

## See Also

- [Test-Driven Bugfixing](TDB-Test-Driven-Bugfixing)
- [Communication](Communication)
- [Please Work Smart](Contributors-please-work-smart)
- [Console Implementation](Dev-Console-Implementation)
- [How To Compile Firmware](HOW-TO-Build-Firmware-From-Source)

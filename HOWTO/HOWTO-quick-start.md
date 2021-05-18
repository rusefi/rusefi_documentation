## What to do while you wait for your hardware:

1. [Download the rusEFI bundle](Download) for your hardware. 

2. Extract the bundle and launch the rusEFI console. Hit the "Install Drivers" button to install the Virtual Com Port and ST-Link drivers. If necessary the bundle will also help you install java run-time.

![console](FAQ/images/rusEFI_console_start_screen.png)

3. **IF you have a Frankenso or Frankenstein board with the FT232 Chip, Download and install [FTDI's usb VCP driver on your PC](http://www.ftdichip.com/Drivers/VCP.htm).** 

4. Get friendly on the [rusEFI forums](https://rusefi.com/forum) Introduce yourself, start a build thread, and ask questions.

5. [Install TunerStudio (version 3.1.04 or newer is needed)](http://www.tunerstudio.com/index.php/downloads)

6. Start a new project, save to a folder that you specify, and choose the rusefi.ini file from the bundle.

![project](FAQ/images/TunerStudio_new_project.png)

## Once you get your hardware:

### Update Firmware

Your board comes with rusEFI firmware installed on it, but it should be updated.

[How to update your firmware](HOWTO-Update-Firmware)

If you have a Frankenso, Frankenstein, or are just messing with a Discovery, you will need to install firmware first. See [these instructions.](Discovery-Based-Board-Setup)

## FAQ
Q: How do I change settings?

A: You can change settings and your engine tune using [TunerStudio](HOWTO-create-tunerstudio-project).

Q: Do I need to compile source code myself?

A: Nope, not at all. Prebuilt bundles are availabile on the [Download Page](Download).

Q: Low side, high side... Too complicated! Where do I hook my coils?!

A: There is some variation between vehicles and components. Please use [rusEFI forums](https://rusefi.com/forum) for custom installation help!

Q: I've made some changes in TunerStudio & hit Burn. 'Need Burn' has appeared but the values are not there after rusEFI reset?

A: rusEFI does not write to internal flash memory while your engine is running. In order to really write the values into the permanent memory you would need to stop the engine (or disconnect your stimulator). Online tuning is not affected by this issue - you can still tune and the new values would be applied right away, they just would not be saved until you stop the engine.

Q: I've remapped some analog inputs and outputs but nothing has changed, looks like the old pins are still used for output?

A: For most of the pinout changes to be applied you need to reset rusEFI. Do not forget to stop the engine so that the new config is saved into internal memory!

## rusEFI Console

[rusEFI Console](Console) is a handy development and debugging tool. Try it out and learn what it is capable of.

## Tuner Studio

rusEFI uses TunerStudio to allow you to configure and tune your ECU.

[HOWTO create TunerStudio project](HOWTO-create-tunerstudio-project)

See also [Tunerstudio Connectivity](Tunerstudio-Connectivity)

## Tuning the engine

[Get Running](HOWTO-Get-Running)

[Get Tuning](Get-tuning-with-TunerStudio-and-your-rusEFI)

[Error Codes](Error-Codes)

# Quick Start

## Minimal Setup

All official units are shipped with firmware installed. Modern Windows comes with the necessary drivers.

1. [Download rusEFI tuner for Windows](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)
   and start __rusEFI tuner__ from the desktop shortcut or Windows Start menu.
2. Connect your ECU over USB. The application discovers the ECU; install the
   offered drivers if needed.
3. Open __Tuning__ to view and edit settings. When connected, edits are sent to
   live ECU RAM. __Burn to ECU__ requests saving them to persistent ECU memory;
   stop the engine and confirm the save before switching power off.
   __File > Save Tune__ saves a tune file on your computer instead. For logging,
   use __Logging > Start__ to record a `.mlg` file, or __Start As…__ to choose its location.

TunerStudio is also supported as a professional/advanced alternative. Its
separate [project setup guide](HOWTO-create-tunerstudio-project) covers project
creation and automatic definition detection.

Continue reading for more detailed setup steps.

## Waiting for your ECU to arrive?

1. [Download the rusEFI bundle](Download) for your ECU.

2. Extract the bundle and launch rusEFI tuner (the application may still be
   labeled __Console__ in some bundle contents). Use __Install Drivers__ to
   install the Virtual COM Port and DFU drivers. If necessary, the bundle will
   also help you install the Java runtime.

    ![console](Images/rusEFI_console/rusEFI_console_start_screen.png)

3. Get friendly on the [rusEFI forums](https://rusefi.com/forum). Introduce yourself, start a build thread, and ask questions.

4. If you prefer the professional/advanced alternative, [install TunerStudio](HOWTO-create-tunerstudio-project#download-and-install)
   and [create a project](HOWTO-create-tunerstudio-project#creating-a-project).

## Once your ECU has arrived

Your board comes with rusEFI firmware installed on it, but it should be updated.

[How to update your firmware](HOWTO-Update-Firmware)

## Getting Your Car Running

### With a Universal ECU

Follow the [Get Running With a Universal ECU guide](HOWTO-Get-Running).

### With a Plug-and-Play ECU

Follow the [Get Running With a Plug-and-Play ECU guide](HOWTO-Get-Running-PnP).

## Tuning

[Get Tuning](Get-tuning-with-TunerStudio-and-your-rusEFI)

## Logging

🚨 It's impossible to overstate the importance OF USING CORRECT TYPE OF LOG FILE 💥

Any troubleshooting begins with logs. One of rusEFI's powers is the amount of data points available for logging!

Shaky videos will not do. Even high-resolution screenshots wil not do—*it has to be a proper log file*.

Use the __Logging__ menu in rusEFI tuner to record a `.mlg` log, or use
TunerStudio's built-in logger if you tune with TunerStudio. For instructions
for both methods, see the [Logging Guide](Logging-Guide).

## Analyzing Logs

Start with the built-in [Log Viewer](Console#log-viewer) tab in rusEFI tuner to
open `.mlg` or `.msl` logs and inspect recorded signals. No ECU connection or
separate log-viewer installation is needed.

[EFI Analytics MegaLogViewer](https://www.efianalytics.com/MegaLogViewer/) remains
an optional professional/advanced analysis tool, not a prerequisite for beginners.

## Share Your Tunes and Logs

You will definitely need your tune and log online for any community discussion.

[rusEFI Online](Online) is the platform to share and compare your tune with other tunes!

## Get Support

See [Support & Community](Support)

## Want to learn more about rusEFI features?

See https://rusefi.com/docs/guide/

## FAQ

*__Q:__ How do I change settings?*  
__A:__ Beginners can change settings and their engine tune using [rusEFI tuner](Console). [TunerStudio](HOWTO-create-tunerstudio-project) is a supported professional/advanced alternative.

*__Q:__ Do I need to compile source code myself?*  
__A:__ Nope, not at all. Prebuilt bundles are available on the [Download Page](Download).

*__Q:__ I've made some changes in TunerStudio & hit Burn. 'Need Burn' has appeared but the values are not there after rusEFI reset?*  
__A:__ rusEFI does not write to internal flash memory while your engine is running. In order to really write the values into the permanent memory you would need to stop the engine (or disconnect your stimulator). Online tuning is not affected by this issue; you can tune and the new values will be applied right away, but they will not be saved until you stop the engine.

*__Q:__ I've remapped some analog inputs and outputs but nothing has changed, looks like the old pins are still used for output?*  
__A:__ For most of the pinout changes to be applied you need to reset rusEFI. Do not forget to stop the engine so that the new config is saved into internal memory!

*__Q:__ What does this error code mean?*  
__A:__ See [Error Codes](Error-Codes)

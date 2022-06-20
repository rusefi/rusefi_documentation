rusEFI has a few different ways to collect logs from your ECU.

Both of these methods will product a .mlg file compatible with [MegaLogViewer](https://www.efianalytics.com/MegaLogViewer/). For some technical reasons, the content between the two files is slightly different, but all important fields are identical.  For most troubleshooting, either log type will do the job.

If you're trying to share the log with someone to help you with your engine, please upload it at [rusEFI Online](https://rusefi.com/online).

# TunerStudio logging

The preferred log for tuning and debugging is a log made in TunerStudio. It requires having a PC plugged in whenever you want to log, but you're probably already plugged in to tune the engine or look at more gauges.

## Start/Stop Logging

1. In the menu bar, press `Data Logging` -> `Start Logging`, and pick a file name for your log (the default is the date/time), and press save. The log is now being saved by TunerStudio. The "Data Logging" indicator at the bottom of the TS dashboard should light up green.
2. Do whatever thing you want a log of. If there's a specific behavior you're getting help with, a consise, specific log is much easier to interpret than a long and complicated one.
3. To stop logging, go back to the menu bar and press `Data Logging` -> `Stop`. Closing TunerStudio or starting a new log file will also stop any running log.

## Logging Data Rate

rusEFI is capable of feeding data to TunerStudio several hundred times per second, so TS lets you select how much to slow it down. For most purposes, 100hz is appropriate. If looking at trigger sync or some other high-speed need, set the logging rate to "Max reads per second". This shouldn't hurt ECU performance, but will make a humongous log file on your PC pretty quickly.

The data rate should default to 100hz when using rusEFI, but it's worth checking that its set to a speed appropriate for your application. That said, storage is cheap, so it doesn't really hurt to have it set faster than you need.

![](https://github.com/rusefi/rusefi_documentation/raw/master/Images/ts-data-rate.png)

# Internal SD card

Some rusEFI ECUs support logging to a microSD card directly. This is useful for all the times you don't have a PC around. Maybe you're busy driving around a racetrack!

To enable it, find the "SD Card Logger" menu under the "Controller" section (far right).  Set "Enable SD Card" to true to start logging. Set how often the log should be written. The default is every 50ms, aka 20 times per second.

![](https://github.com/rusefi/rusefi_documentation/raw/master/Images/ts-sd.png)

## Storage Consumption

rusEFI SD logging is through, but not too heavy when compared to the size of cheaply available SD cards. Expect about 20MB/hr when set to the default 50ms period, with consumption scaling linearly with logging rate. 20MB/hr means 50hr/gigabyte, or 400 hours (2.4 weeks!) on an inexpensive 8GB card.

## SD Card USB Connection

When connected to a PC, rusEFI will function as an SD card reader, allowing you to transfer ECU-created logs to your PC. However, since the SD can't be both connected to your PC and used for logging by rusEFI, the following logic is used to decide which to do:

- ECU powered from car, USB never connected: Logging to SD card
- ECU powered from car, then USB connected: Logging to SD card
- ECU connected to USB first: SD card connected to PC

If you're unsure what the SD card is currently doing, have a look at the three SD card-related indicators in TunerStudio:

No SD card detected:

![](https://github.com/rusefi/rusefi_documentation/raw/master/Images/sd-none.png)

Logging to SD card:

![](https://github.com/rusefi/rusefi_documentation/raw/master/Images/sd-indicators-logging.png)

Connected to PC:

![](https://github.com/rusefi/rusefi_documentation/raw/master/Images/sd-indicators-msd.png)

The assumption is that if you have USB connected, you will be logging using TunerStudio instead of the onboard SD card.

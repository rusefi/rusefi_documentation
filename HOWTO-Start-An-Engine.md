# Performing the First Start On a New rusEFI Install

One of the toughest aspects of any new ECU install is the first start of a new engine. It is an issue a that lot of users find, so hopefully this comprehensive first-start guide will help by clarifying the purpose of the settings and providing some best-practice procedures.

Before you can even try to start the engine, you have to get some of the basics right:

## Sensor Requirements

You must have known, good sensors with a correct calibration.

Without this you have no hope of getting things to work in the long run, so be sure you have a correct working MAP/MAF, CLT, IAT, TPS, and fuel pressure sensor if you have it.

See [How to Get Running With a Universal ECU](HOWTO-Get-Running) for more detailed sensor requirements.

## Ignition and Fuel & Injection System Requirements

### Fuel Supply

You must be sure you have fuel pressure; without a working fuel pump and functional fuel pressure regulator, you are not going to get a good start up. If the engine has a returnless fuel system or a fuel pressure sensor, the same applies.

Finally, make sure there is fuel in the tank; the number one non-start issue is a dry fuel tank right up to pro-level.

### Injectors and Ignition Coils

Again, you need to be sure you have the correct information on your injectors and coils; without this you won't be able to set the dead times, flow rate or dwell correctly.

Injectors and ignition coils need to be bench tested to check that each one is wired and set to the correct ECU channel. This is critical: incorrect wiring or channel setting is like having the HT leads in the wrong order. You will fuel and spark the wrong cylinders.

## Cranking Requirements

The engine must be cranking well with the starter. If the engine cranks lazily, fix that first. You need a good, strong, consistent cranking speed.

Check that your throttle is correctly adjusted with its idle stop, your idle air control valve works, and your ETB config is correct for idling the engine.

See [Cranking](Cranking) for more details.

## Verify Your Crank Sensor Reads the Trigger Wheel

Information on your crank trigger wheel is really really important, knowing the number of teeth on the trigger wheel and where the TDC offset is positioned is half the battle; if these are unknown then you will have to get that information before you can start your engine.

This can be done before setting anything in the ECU and should be the first test done.

To do this go into TunerStudio and disable the fuel injection and the ignition under each of the settings tabs.

Next go into the high-speed logger and simply crank the engine. The rusEFI Console is the best tool for this job as it has a really good logger in the "engine sniffer" tab.

What you should see is the top row giving grey bars that match your expected trigger pattern. If you see no grey bars, you have no trigger events, which means you need to ensure your crank sensor works and your trigger channel is correct.

Hopefully you have grey bars showing your crank pattern. If you're unsure of the pattern it makes a lot of sense at this point to take a screenshot and compare it to the list of rusEFI-compatible crank trigger patterns found in [All Supported Triggers](All-Supported-Triggers).

TunerStudio and rusEFI Console should show correct cranking RPM, usually between 150 and 300 with a fully charged battery.

See [Triggers](Trigger) for more details.

## Confirm Top Dead Center (TDC) Position

Assuming you have the hardware ready to spark we now need to find the TDC position - we know trigger shape but we do not know the trigger wheel position in relation to TDC#1 (Top Dead Center, cylinder #1).

See [Setting Trigger Offset](How-Do-I-Set-My-Trigger-Offset)

## Cranking Parameters

rusEFI has a separate cranking control strategy for your first couple of engine revolutions - usually you want more fuel, different timing, and simultaneous injection to start an engine.

![Initial Cranking Parameters](Images/TS/Initial_cranking_parameters.png)

An engine can start rich, as long as it's not too rich and you have the cranking timing angle set close enough to the optimum. By default, cranking mode is active if RPM is below 500.

Please note that the trigger synchronization point often does not match TDC, so just try different values between 0 and 720. For example, try 0, then 20, then 40. etc. Use `showconfig` to see current setting.

## Next Steps & Troubleshooting

[Get Tuning](Get-tuning-with-TunerStudio-and-your-rusEFI)

There are three ways to produce logs - the intention is for these three to have same exact data.

1. TunerStudio logging
2. SD card logging
3. rusEFI console logging

See also [output_channels.txt](https://github.com/rusefi/rusefi/blob/master/firmware/console/binary/output_channels.txt)

See also [Error Codes](Error-Codes)

## External Links

[Fuel injectors at first start - Forum](https://www.youtube.com/watch?v=lgvt0mh_UB8)

## Diagnostics and Troubleshooting of Your Engine

### Basic Tests

Is the ECU properly powered and communicating with your computer?

See [Troubleshooting](Troubleshooting).

### Tests using Test Equipment

If your ECU is not reading a sensor correctly, you may need electrical test equipment to make sure that the sensor is behaving as you have told the ECU to expect. For simple sensors such as temperature sensors, a digital multimeter is all you need. For other sensors such as crankshaft and camshaft position sensors, you may need an oscilloscope.

### Get Help From a Local

We provide much more info than most OEM options. If you are stuck, you may be able to get help from a local mechanic or someone local. Try asking for help in the forums; there may be a member or a club meeting that's nearby. It's common you can find local people who are willing to help.

### Onboard Hardware Diagnostics

If you don't have an oscilloscope, you can connect the circuit in question to a digital or analog input of your ECU, using it as a basic oscilloscope. Record a log and you will see exactly what your ECU is seeing.

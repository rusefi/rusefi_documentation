# Performing A First Start On A New rusEFI Install

One of the toughest aspects of any new ECU install is the first start of a new engine. It is an issue a lot of users find, so hopefully this comprehensive first start guide will help but clarifying the purpose of the settings and providing some best practice procedures.

Before you can even try to start the engine you have to get some of the basics right:

## Sensor Requirements

You must have known, good sensors with a correct calibration.

Without this you have no hope of getting things to work in the long run so be sure you have a correct working MAP/MAF, CLT, IAT, TPS and Fuel pressure sensor if you have it.

See [How To Get Running With a Universal ECU](HOWTO-Get-Running) for more detailed sensor requirements.

## Ignition and Fuel & Injection System Requirements

### Fuel Supply

You must be sure you have fuel pressure, without a working fuel pump and functional fuel pressure regulator you are not going to get a good start up, if the engine is a dead head fuel line or has a fuel pressure sensor then the same applies and I will address that in the correct section as they are special cases.

Finally, make sure there is fuel in it, the number one non-start issue is a dry fuel tank right up to pro level.

### Injectors and Ignition Coils

Again, you need to be sure you have the correct information on your injectors and coils, without this you wont be able to set the dead times, flow rate or dwell correctly.

Injectors and ignition coils need to be bench tested to check that each one is wired and set to the correct ECU channel. This is critical, incorrect wiring or channel setting is like having the HT leads in the wrong order. You will fuel and spark the wrong cylinders.

## Cranking Requirements

The engine must be cranking well with the starter. If the engine cranks lazily, fix that first. You need a good strong consistent cranking speed.

Check that your throttle is correctly adjusted with its idle stop, your idle air control valve works, or your ETB config is correct for idling the engine.

See [Cranking](Cranking) for more details.

## Verify Your Crank Sensor Reads the Trigger Wheel

Information on your crank trigger wheel is really really important, knowing the number of teeth on the trigger wheel and where the TDC offset is positioned is half the battle, if these are unknown then you will have to get that information before you can start up.

This can be done before setting anything in the ECU and should be the first test done.

To do this go into TunerStudio and disable the fuel injection and the ignition under each of the settings tabs.

Next go into the high speed logger and simply crank the engine. The rusEFI console is the best tool for this job as it has a really good logger in the "engine sniffer" tab.

What you should see is the top row giving grey bars that match your expected trigger pattern. If you see no grey bars then you have no trigger events, this means you need to check your crank sensor works or your trigger channel is correct.

Hopefully you have grey bars showing your crank pattern. If your unsure of the pattern it makes a lot of sense at this point to grab a snapshot of the screen and compare it to the list of rusEFI compatible crank trigger patterns found in [All Supported Triggers](All-Supported-Triggers).

TunerStudio and rusEFI Console should show correct cranking RPM, usually between 150 and 300 with a fully-charged battery.

See [Triggers](Trigger) for more details.

## Confirm Top Dead Center (TDC) Position

Assuming you have the hardware ready to spark we now need to find your TDC position - we know trigger shape but we do not know the trigger wheel position in relation to TDC#1 (Top Dead Center, cylinder #1).

Set cranking advance angle to zero for now. Use a timing gun while cranking. We now need to try different values of Engine->Trigger->global trigger angle offset until we get spark at zero advance - that's because we might know the relation between TDC#1 and trigger signal.

On Engine Sniffer tab of rusEFI console TDC#1 is shown with the green vertical line.

## Cranking Parameters

rusEFI has separate cranking control strategy for your first couple of engine revolutions - usually you want more fuel, different timing and simultaneous injection to start an engine.

![Initial Cranking Parameters](Images/TS/Initial_cranking_parameters.png)

Engine would start rich, as long as it's not too rich, as long as you have close-enough cranking timing angle. By default, cranking mode is active if RPM is below 500 RPM.

Please note that trigger synchronization point often does not match TDC, so just try different values between 0 and 720. For example, try 0, then 20, then 40 etc. Use `showconfig` to see current setting.

## Running Parameters

For first run I suggest running based on MAF sensor - even if you do not have MAF sensor, and flat maps.

Once plain MAF works next step is running with proper MAP sensor calibration & flow rate setting.

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

If your ECU is not reading a sensor correctly, you may need electrical test equipment to make sure that the sensor is behaving as you have told the ECU to expect it to. For simple sensors such as temperature sensors, a digital multi-meter is all you need. For other sensors such as crankshaft and camshaft position sensors, you may need an oscilloscope.

### Get Help From a Local

We provide much more info than most OEM options. If you are stuck, you may be able to get help from a local mechanic or someone local. Try asking for help in the forums there may be a member or a club meeting that's near by. It's common you can find local people who are willing to help.

### Onboard Hardware Diagnostics

If you don't have an oscilloscope, you can connect the circuit in question to a digital or analog input of your ECU, using it as a basic oscilloscope. Record a log and you will see exactly what your ECU is seeing.

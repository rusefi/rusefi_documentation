# Get Running With a Plug-and-Play ECU

## Warm it Up

If possible, run your car using your stock ECU to warm it up. This may make it easier to start, especially when it's cold outside.

## Plug it In

Unplug your stock ECU and plug in your rusEFI ECU. It's best to leave the ECU's case open for now, so you can observe blinking lights, etc.

## Power On

Turn on the ignition, but **do *NOT* start the engine!**

## Connect

Connect TunerStudio to your ECU. See [the TunerStudio guide](HOWTO-create-tunerstudio-project#creating-a-project) if you haven't yet created a project in TunerStudio.

Assuming [the prerequisites for sensors](HOWTO-Start-An-Engine#sensor-requirements) are met, your TunerStudio screen should come to life!

You should see sensor inputs and some output values like ignition timing and dwell.

If things are set up properly, you should see reasonable values for:

* Coolant Temperature (CLT)
* Intake Air Temperature (IAT)
* Battery Voltage (VBATT)
* Manifold Air Pressure (MAP/MAF) (should be near 100 kPa if you're using a MAP sensor)
* Throttle Position Sensor (TPS)

 The values may show some jitters. RPMs should be 0. Push your throttle pedal and see if you get a response. Congratulations—your rusEFI ECU can "see" your car.

## Calibrate the Throttle

Calibrate your throttle pedal.

1. In TunerStudio, go to "Tools" -> "Calibrate TPS".
2. Without touching the throttle, click on "Get Current" next to "Closed Throttle ADC count".
3. With the throttle wide open, click on "Get Current" next to "Full Throttle ADC count".

## Save your Changes

Save (Burn) calibration to ECU.

## Test Outputs

Test your outputs. Under "Controller" -> "Bench Test & Commands" you can see a lot of options for outputs you can test. Let's focus on the basic ones for now.

### Spark and Fuel

First, if your car's fuel pump is controlled by the ECU, test "Fuel Pump". You should hear the fuel pump running.

Then move on to spark. Here it depends on how your car is set up. If you have a 4-cylinder with wasted spark (which is likely the majority of users), you will likely be using "Spark #1" and "Spark #3". When you click the test button, you should hear the corresponding ignition coil firing. If you can't hear the spark, you may want to pull a spark plug (or use a spare) and hook it up to the spark plug connector and ground it. Test again and you should see a spark arcing. Don't shock yourself.

Now it's time to test your injectors. Again, this depends on your vehicle. Most cars will at least have two banks of injectors. So you should definitely hear injectors firing when you're testing "Injector #1" and "Injector #2". If you have full-sequential fuel, you should try as many injectors as your engine has cylinders. **Fuel is flammable. Have a fire extinguisher nearby just in case.**

That's the basic outputs tested. With this, you should be able to get the engine to run. You can go ahead and test the other outputs as well. For example: Check Engine Light, Engine Fan, AC, Cooling Fan, etc.

Close the test window. We're getting close to starting the car.

## Start it Up

*If you have trouble, see [Performing A First Start On A New rusEFI Install](HOWTO-Start-An-Engine) for a more complete guide.*

Turn the ignition off and unplug the USB cable to remove all power sources from the unit, just to make sure we're in a defined state. Then reconnect the USB cable, turn on the ignition, wait for TunerStudio to come to life, and then crank the engine. You should see the RPMs jump to a positive value (typically anywhere between 200 and 600 RPM) and your engine should start. It may take a few cranks for RPMs to register. If you see RPMs in Tunerstudio, but the engine isn't starting, keep at it. It may take quite a bit longer than the stock ECU. rusEFI takes about two seconds of cranking before it can identify the position of the crankshaft, then it will fire the injectors and ignition coils. It may take more than ten seconds for the engine to catch, which seems like an eternity when cranking, but don't give up. There may be coughs and sputters. Play with the throttle a little, and it will start eventually. Post your findings to the [forum](https://rusefi.com/forum/) and we can help!

We're done with the initial startup. Congratulations—you have your car running on your standalone aftermarket ECU! Now the fun really begins! 😃

# Get Running With a Plug-and-Play ECU

Check that your ECU matches your vehicle, then follow its installation guide.
Keep the engine stopped while checking sensors and testing outputs. Complete
the checks in [the first-start guide](HOWTO-Start-An-Engine) before trying to start.

[rusEFI tuner](Console) is recommended. TunerStudio menu steps below are an
alternative; the safety checks apply to both applications.

**Before starting:**

1. With ignition on, check that sensor and throttle readings look right.
2. Calibrate the sensors, save the changes, and safely test each output.
3. Follow the first-start guide to check trigger signals and ignition timing.

If a check fails, fix it or ask for help before moving on.

## Warm it Up

If possible, run your car using your stock ECU to warm it up. This may make it easier to start, especially when it's cold outside.

## Plug it In

Unplug your stock ECU and plug in your rusEFI ECU. It's best to leave the ECU's case open for now, so you can observe blinking lights, etc.

## Power On

Turn on the ignition, but **do *NOT* start the engine!**

## Connect

For a first connection in rusEFI tuner, follow [Quick Start](HOWTO-quick-start).
If you use TunerStudio, connect your project to the ECU; see
[the TunerStudio guide](HOWTO-create-tunerstudio-project#creating-a-project)
if you have not created one yet.

Once connected, check the [sensor prerequisites](HOWTO-Start-An-Engine#sensor-requirements)
and inspect the live readings in your application.

You should see sensor inputs and some output values like ignition timing and dwell.

If things are set up properly, you should see reasonable values for:

* Coolant Temperature (CLT)
* Intake Air Temperature (IAT)
* Battery Voltage (VBATT)
* Manifold Absolute Pressure (MAP), if fitted: with the engine stopped, should be near 100 kPa
* Throttle Position Sensor (TPS)

RPM should be 0 with the engine stopped. Check that throttle or pedal readings
change when moved. For electronic throttle, follow the setup guide below.
Connecting successfully does not mean the sensors are calibrated.

## Calibrate the Throttle

The TunerStudio steps below calibrate the throttle position sensor (TPS), not
the pedal. For electronic throttle, also follow [Throttle and Pedal Sensors](Throttle-and-Pedal-Sensors)
and the full [Electronic Throttle Body Configuration Guide](Electronic-Throttle-Body-Configuration-Guide).

1. In TunerStudio, go to "Tools" -> "Calibrate TPS".
2. Without touching the throttle, click on "Get Current" next to "Closed Throttle ADC count".
3. With the throttle wide open, click on "Get Current" next to "Full Throttle ADC count".

## Save your Changes

Use **Burn to ECU** in rusEFI tuner or **Burn** in TunerStudio. Stop the engine
and confirm the save before switching power off. Saving a tune file on your
computer does not save it on the ECU.

## Test Outputs

Read [Bench Testing Outputs](Bench-Testing) and your ECU's wiring guide first.
With the engine stopped, test one output at a time and check that the right
device responds. Use your wiring and settings to identify each channel, not
just the cylinder count. If unsure, stop and ask for help.

In TunerStudio, the tests are under "Controller" -> "Bench Test & Commands".

### Spark and Fuel

**Keep a suitable fire extinguisher nearby.** Injectors can spray fuel; pressure
can remain after the pump is off. Use a fuel-safe setup for injector tests.
Ignition coils can give a dangerous shock:
use a properly grounded test plug and keep clear. Test fuel and spark separately,
following the [bench-testing precautions](Bench-Testing#before-you-start).

* If the ECU controls the fuel pump, the "Fuel Pump" test should operate that
  pump.
* Check that each spark test fires the right coil or cylinder pair for your setup.
* Check that each injector test operates the right injector or bank.

You can also test outputs such as the check-engine light, fan, or A/C relay.
Keep clear of devices that may start moving. Output tests alone do not mean
the engine is ready to start.

Close the test window. We're getting close to starting the car.

## Start it Up

Follow [Performing A First Start On A New rusEFI Install](HOWTO-Start-An-Engine):
check the trigger pattern with fuel and ignition disabled, then check ignition
timing with fuel disabled as directed.

After saving, restart the ECU as your installation guide directs and check that
the application reconnects. USB may keep the ECU powered even with ignition off.

Follow the vehicle's starting procedure and starter limits. If it does not
start, stop and check the tune, log, and trigger capture before trying again.
An RPM reading alone does not prove timing, fuel, or spark is correct. Do not
keep cranking or move the throttle at random hoping it will start.

If you need help, share the results on the [forum](https://rusefi.com/forum/)
using the [support checklist](Support).

We're done with the initial startup. Congratulations—you have your car running on your standalone aftermarket ECU! Now the fun really begins! 😃

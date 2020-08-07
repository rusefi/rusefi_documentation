This guide is written for the firmware released August 6th 2020. The further away from this date your FW is, the less agreement you will have in specific locations of items in TunerStudio and terms used etc. HOWEVER, the basic principles should still apply. Before you get here, install TunerStudion and MegalogViewer (the pay versions are highly recommeded). Create a new project in TunerStudio. By the way: this is not a TunerStudio manual. 

Most PnP rusEfi units can be powered through the USB port. So you can set it up in the comfort of your living room and have it communicate with Tunerstudio before it is installed in the car. It is highly recommended to try this approach. 

Connect TunerStudio to your ECU. You will need a USB cable to establish communication between your tuning laptop and the rusEfi unit. There will typically be only one USB port on a PnP unit.

If you have a frankenso unit, the "brainboard" which is the smaller green board sitting on top of the red-ish main board, will have TWO USB connectors. One micro (the same as typical for older cellphones pre USB-C). This mirco-USB connector is for communication with TunerStudio. There is also a mini-USB connector on the other side of the brainboard. This is for delivering power and for flashing new firmware. During normal tuning, all you need is the connection with the micro-USB connector. 

Your laptop should give you an audible notification when you plug in the ECU with the ignition turned on. That means that it "sees" a new device connected to a USB port.
Under "Communications" -> "Communication Settings" [IMAGE] you should select the correct COM port for your rusEfi. You will usually see only two COM ports. Chances are, the one with the higher number is the rusEfi COM-port. For most cases, the selected Baud rate does not matter. If you can't establish communication, try baud rate 38,400 | 57,600 or 115,200. If that doesn't work, you may need to try a different COM port. 
After selecting the COM-port (and baud rate), click on "Test Port". This should result in a "successful!" message. If you get a failed message, you need to adjust your settings. After a successful test of the port click "Accept".

With this your TunerStudio screen should come to life! You should see sensor inputs and some output values like ignition timing and dwell. Of course the values displayed miught not make a lot of sense, since your ECU is lacking a car, but at least you can see that TunerStudio and your computer are communicating.

# Getting your car running.

## Step 1: (Optional) 
Run your car on your stock ECU to warm it up. This may make it easier to start, especially when it's cold outside

## Step 2:
Unplug your stock ECU and plug in your rusEfi PnP. You probably don't want to close the lid just yet, so you can observe blinky lights etc. 

## Step 3: 
Turn on the ignition. DO NOT START THE CAR

## Step 4:
Connect TunerStudio to your ECU. 
With this your TunerStudio screen should come to life! You should see sensor inputs and some output values like ignition timing and dwell. If things are set up properly, you should see reasonable values for [Coolant temperature], [Air Intake temperature], [Battery Voltage], [Manifold Air Pressure] (should be near 100kpa if you're using a MAP snesor) and even your [throttle pedal position]. The values may show some jitters. Your rpms should be 0. Push your throttle pedal and see if you get a response. Congratulations- your rusEfi can "see" your car.

## Step 5:
Calibrate your throttle pedal. Go to "Tools" -> "Calibrate TPS". Don't touch the throttle and click on "Get Current" next to "Closed Throttle ADC count". Now do the same for full throttle.

## Step 6:
Test your outputs. Under "Controller" -> "Bench Test & Commands" you can see a lot of options for outputs you can test. Let's focus on the basic ones for now. Spark and Fuel. First, if your car's fuel pump is controlled by the ECU, test "Fuel Pump". You should hear the fuel pump running. 

Then move on to spark. Here it depends on how your car is set up. If you have a 4-cylinder with wasted spark (which is likely the majority of users), you will likely be using "Spark #1" and "Spark #3". When you click the test button, you should hear the corresponding ignition coil firing. If you can't hear the spark, you may want to pull a spark plug (or use a spare) and hook it up to the sparkplug connector and ground it. Test again and you should see a spark arcing. 

Now it's time to test your injectors. Again, this depends on your vehicle. Most cars will at least have two banks of injectors. So you should definitely hear injectors firing when you're testing "Injector #1" and "Injector #2". If you have full-sequential fuel, you should try as many injectors as your engine as cylinders.

That's the basic outputs tested. With this you should be able to get the engine to run. You can go ahead and test the other outputs as well. Like Check Engine Light. fan, AC, AC fan etc.

Turn the ignition off and unplug the USB cable to power the unit off- just to make sure. Then reconnect the USB cable, turn on the ignition, wait for TunerStudio to come to life and the crank the engine. You should see the rpms jump to a positive value (typical would be anywhere between 200 and 600rpm) and your engine should start. It may take a few cranks for rpms to register. 

And we're done with the initial startup. Congratulations- you have your car running on your standalone aftermarket ECU! 
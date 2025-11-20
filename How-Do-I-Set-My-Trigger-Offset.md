# How Do I Set My Trigger Offset?

**DISABLE FUEL WHEN ADJUSTING TRIGGER OFFSET**

**FIRE DANGER**

In TunerStudio, open "Injection"->"Injection Settings". Set "Enabled" to "false", and save the setting. In your fuse box, find and remove the fuse(s) that power your injectors. To set your trigger offset, you will be cranking your engine and firing your plugs, but you do not want the engine to start. Take any means necessary to prevent fire, and have a fire extinguisher ready (you should already have one).

## Setting Trigger Offset

The following guide will provide a general overview of finding and setting the trigger offset value to use in tunerstudio. This is an engine-specific value, but you may be able to use another's settings as a starting point if they have a similar trigger setup on their engine. You should always make sure your trigger setting is accurate to your engine, as this value influences every other value in your tune.

### Why Do I Care About Trigger Offset?

In order for your engine to run properly, the ECU must know *exactly* where the engine is in its rotation. This is determined by your trigger solution, but there's a catch. In many cases, the trigger pattern does not properly align with the position of the engine, and this is what trigger offset is for. Trigger offset is a fixed value that tells the ECU how much the position of the trigger differs from top dead center on cylinder #1.

### How do I Set My Trigger Offset?

To set your trigger offset setting, you must determine how far your ECU is from your engine position. The easiest way to do this is to use a timing light on cylinder #1 and check its position on your engine's timing marks. Set your ignition timing to a fixed value in TunerStudio which corresponds with a mark on your crank pulley. Your engine manufacturer may suggest a value, or 0 may be used. This is highly engine dependant, but critically important. While cranking the engine, watch the timing light and see if it's behind or ahead of the mark you chose. Adjust the trigger offset up or down depending on what direction you want to move the mark. Continue this process until the light is aligned with the mark, and your trigger offset is now set. You can now change your settings back to dynamic timing in TunerStudio and attempt to start your engine.

### Step-by-Step

1. Have a fire extinguisher ready.
2. Disable Fuel. Disable injection in TunerStudio. Pull injector fuses. Drain carburetors.
3. Set ignition timing mode to fixed. Set an advance value that corresponds to a mark on your crank pulley. 0 will correspond with the TDC mark, or your manufacturer may specify different values.
4. Remove spark plugs. This will eliminate compression in the cylinders, allowing the engine to turn freely and give better results when checking timing.
5. Connect a timing light and spark plug to the #1 spark plug wire. In engines with individual coils, you may need to get creative here, such as extending the coil with a spare plug wire to give somewhere to attach the timing light. Ground the threads on this spark plug somewhere on the engine.
6. Crank the engine, watching the position of your engine's timing marks. Adjust the trigger offset value up or down (negative values are allowed) until the marks are properly aligned. This is now your trigger offset.
7. Reinstall your spark plugs, re-enable fuel, set your timing to something sensible (manufacturer recommendations) and try to start your engine. Verify the timing again with a timing light once the engine runs, and adjust the offset if needed.

See also [Trigger-Configuration-Guide](Trigger-Configuration-Guide)

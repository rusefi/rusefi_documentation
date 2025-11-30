# What is Cranking?

In order to get an engine running, it first needs to be rotated at sufficient speed. This gets the fuel pumped up to the cylinders and ignited and enables the engine to run on its own power. Cranking the engine simply means turning the engine's crankshaft that rotates the engine to power itself.

<!-- This would be rendered as a collapsible section. from 'details' to closing 'details' -->

<details markdown="1"><summary><i>See also</i>: <u>Starter Motor</u></summary>

<table markdown="1"><tr markdown="1"><td markdown="1">

![Starter](Images/starter.jpeg)
</td><td markdown="1"> The electric starter motor or cranking motor is the most common type used on gasoline engines and small diesel engines.

You can control the starter using several rusEFI firmware features:  

- Start-Stop Button Control  
- Starter Disable Relay Control

</td></tr></table>

</details>

Cranking mode is defined as any RPM value below the 'cranking RPM' setting. During cranking, special fuel and timing logic is applied.

<!-- this magic '>' make a one line quote block -->

> ![Hint](Images/icons/hint.png) *Hint: If you have a fresh new engine ready for cranking, and you want to prepare the configuration for the first start, please first see: [First Engine Start](First-Engine-Start).*

## Cranking Settings

In TunerStudio, the Cranking Settings are accessed from the top menu:
![table](Images/TS/cranking/menu.png)

The settings are divided into several sections:

- [General settings](#general-cranking-settings)
- [Priming fuel pulse settings](#priming-fuel-pulse)
- [Fuel settings](#fuel-settings)
- [Ignition settings](#ignition-settings)
- [IAC settings](#iac-settings)
- [Post-cranking fuel enrichment settings](#post-cranking-short-time-fuel-enrichment)

rusEFI has a separate cranking control strategy for your first couple of engine revolutions - usually, you want more fuel, different timing and simultaneous injection to start an engine. The engine would start rich, as long as it's not too rich, as long as you have a close-enough cranking timing angle.

> ![Hint](Images/icons/hint.png) *Hint: Click on the screenshot below to see more info on the particular settings:*

<table class="mapped-screenshot" markdown="1" style="width:334px; height:609px;"><td markdown="1" width="334">

![Settings01](Images/TS/cranking/settings_01.png)
[![Cranking RPM limit](Images/TS/cranking/settings_02.png)](#cranking-rpm-limit)
[![Enable cylinder cleanup](Images/TS/cranking/settings_03.png)](#enable-cylinder-cleanup)
[![Enable faster engine spin-up](Images/TS/cranking/settings_04.png)](#enable-faster-engine-spin-up)
[![Duration at -40C degrees](Images/TS/cranking/settings_05.png)](#duration-at-40c-degrees)
[![Falloff temperature](Images/TS/cranking/settings_06.png)](#falloff-temperature)
[![Injection mode](Images/TS/cranking/settings_07.png)](#injection-mode)
[![Fuel Source For Cranking](Images/TS/cranking/settings_08.png)](#fuel-source-for-cranking)
[![Base Fuel Pulse Width](Images/TS/cranking/settings_09.png)](#base-fuel-pulse-width)
[![Advance](Images/TS/cranking/settings_10.png)](#advance)
[![Use separate Advance Table for cranking](Images/TS/cranking/settings_11.png)](#use-separate-advance-table-for-cranking)
[![Use Advance Corrections for cranking](Images/TS/cranking/settings_12.png)](#use-advance-corrections-for-cranking)
[![Use fixed cranking dwell](Images/TS/cranking/settings_13.png)](#use-fixed-cranking-dwell)
[![Cranking IAC position](Images/TS/cranking/settings_14.png)](#cranking-iac-position)
[![After cranking IAC taper duration](Images/TS/cranking/settings_15.png)](#after-cranking-iac-taper-duration)
[![Override IAC multiplier for cranking](Images/TS/cranking/settings_16.png)](#override-iac-multiplier-for-cranking)
[![Post-cranking short-time fuel enrichment](Images/TS/cranking/settings_17.png)](#post-cranking-short-time-fuel-enrichment)
![Settings18](Images/TS/cranking/settings_18.png)
</td></table>

## General Cranking Settings

### Cranking RPM limit  

*This sets the RPM limit below which the ECU will use cranking fuel and ignition logic, typically this is around 350-450 rpm.*  
<details markdown="block">
<summary>CLI shortcut ...</summary>

</details>

### Enable cylinder cleanup  

*When enabled, if the throttle pedal is held above 90% then no fuel is injected while cranking to clear excess fuel from the cylinders.*  

### Enable faster engine spin-up  

- *Smarter cranking logic. When enabled, the ignition and fuel injection will start right after the first sync point of the primary [trigger wheel](All-Supported-Triggers).*

- *Please be aware that this mode currently works only for certain trigger wheel types (e.g. 60-2, 36-1).*

## Priming Fuel Pulse

### Duration at -40C degrees

*Prime injection pulse uses for Wall wetting before cranking. You can set-prime pulse for the cold engine (-40 celsius degree) and set the hottest temperature for use this setting.*

*We use interpolation from smaller CLT to biggest CLT, to make line function for pulse width and interpolate pulse width from bigger(we set it in settings) to zero(when CLT>= falloff temperature).*

*Prime pulse make a big weight when you have a long-distance from the injector to the engine valve.*

*See also isFasterEngineSpinUpEnabled

### Falloff temperature

*This sets the temperature above which no priming pulse is used. The value at -40 is reduced until there is no more priming injection at this temperature.*

## Fuel Settings

### Injection mode

*This is the injection strategy during engine start. See Fuel/Injection settings for more detail.*

*Available options are: "Simultaneous", "Sequential", "Batch", "Single Point".*

- *It is suggested to use "Simultaneous".*

### Fuel Source for cranking

*You can try two different strategies for the fuel math on cranking.*
*Available options are: "Fixed" or "Fuel Map".*

- *In "Fixed" mode, you can manually set the fixed pulse duration (in ms) in the next text field.*

- *In "Fuel Map" mode, the "Running" fuel math used for cranking.*
    > ![Hint](Images/icons/hint.png) *Hint: Please make sure your running fuel tables are extended into the low RPM range for cranking.*

### Base fuel pulse width

*Base duration of the fuel injection during cranking, this is modified by the multipliers for CLT, IAT, TPS ect, to give the final cranking pulse width. Used only if "Fuel Source for cranking" option is set to "Fixed".*

## Ignition Settings

### Advance

*Ignition advance angle used during engine cranking, 5-10 degrees will work as a base setting for most engines.*

### Use separate Advance Table for cranking

*This activates a separate advance table for cranking conditions, which allows the cranking advance to be RPM dependant.*

![Cranking Advance Table](Images/TS/cranking/separate_advance_table.png)

### Use Advance Corrections for cranking

*This enables the various ignition corrections during cranking (IAT, CLT, FSIO and PID idle).*

### Use fixed cranking dwell

*If set to true, will use the specified duration for cranking dwell. If set to false, will use the specified dwell angle. Unless you have a really good reason to, leave this set to true to use duration mode.*

## IAC Settings

### Cranking IAC position

*This is the IAC position during cranking; some engines start better if given more air during cranking to improve cylinder filling.*

### After cranking IAC taper duration

*This is the duration in cycles that the IAC will take to reach its normal idle position; it can be used to hold the idle higher for a few seconds after cranking to improve startup.*

### Override IAC multiplier for cranking

*This setting overrides the normal multiplication values that have been set for the idle air control valve during cranking. If this setting is enabled the "IAC multiplier" table in the Cranking settings tab needs to be adjusted appropriately or potentially no IAC opening will occur.*

![Cranking Idle Air Multiplier](Images/TS/cranking/cranking-idle-air-multiplier.png)

## Post-cranking short-time fuel enrichment

> ![Warning](Images/icons/warning.png) *Warning: Currently not implemented!*

---

## How does it work?

During cranking, two curves control the amount of fuel injected:
"cranking coolant temperature multiplier" and "cranking duration multiplier".
  
A Cold engine usually requires more cranking fuel; cranking fuel usually tapers down during cranking since more fuel is needed in the beginning and not really needed later.

If you have flooded your engine, i.e. got too much fuel on your spark plugs, "Cylinder Cleanup" is recommenced - i.e. cranking with wide-open throttle without any fuel squirted into the cylinders in order to ventilate your cylinders.

As of April 2019 "base fuel pulse" is deprecated, "1" is recommended.

Typical 4 cylinder engine with 200 cc/min injectors, sequential injection, base fuel = 1ms.

![table](Images/cranking_4cylinder.png)

For 1.6 Honda cranking settings see [this image](Images/TS/TunerStudio_ignition_settings.jpg) (note that "base fuel" = 1 is recommended these days, with a corresponding change to cranking temperature multiplier)

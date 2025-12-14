# Cranking

In order to get an engine running, it first needs to be rotated at sufficient speed to achieve good compression of the air/fuel mixture. Cranking the engine simply means turning the engine's crankshaft.

<details markdown="1"><summary><i>Side note</i>: <u>Starter Motor</u></summary>

<table markdown="1"><tr markdown="1"><td markdown="1">

![Starter](Images/starter.jpeg)
</td><td markdown="1">Unless you have a small engine with a pull start, a kick start, or an old car with a crank in front, you most likely have an electric starter.  

You can control the starter using several rusEFI firmware features:  

- Start-Stop Button Control  
- Starter Disable Relay Control

</td></tr></table>

</details>

Cranking mode is defined as any RPM value below the 'Cranking RPM limit' setting. During cranking, special fuel and timing logic is applied.

> ![Hint](Images/icons/hint.png) *Hint: If you have a fresh new engine ready for cranking, and you want to prepare the configuration for the first start, please first see: [How to Start an Engine](HOWTO-Start-An-Engine).*

## Cranking Settings

In TunerStudio, the Cranking Settings are accessed from the top menu:
![table](Images/TS/cranking/menu.png)

The settings are divided into several sections:

- [General settings](#general-cranking-settings)
- [Priming fuel pulse settings](#priming-fuel-pulse)
- [Fuel settings](#fuel-settings)
- [Ignition settings](#ignition-settings)
- [IAC settings](#iac-settings)
- [Post-cranking fuel enrichment settings](#after-start-enrichment)

rusEFI has a separate cranking control strategy for your first couple of engine revolutions - usually, you want more fuel, different timing and simultaneous injection to start an engine. An engine can start rich, as long as it's not too rich and you have the cranking timing angle set close enough to the optimum.

> ![Hint](Images/icons/hint.png) *Hint: Click on the screenshot below to see more info on the particular settings:*

<table class="mapped-screenshot" markdown="1" style="width:334px; height:609px;"><td markdown="1" width="334">

![Settings01](Images/TS/cranking/settings_01.png)
[![Cranking RPM limit](Images/TS/cranking/settings_02.png)](#cranking-rpm-limit)
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
[![Enable flood clear](Images/TS/cranking/settings_03.png)](#enable-flood-clear)
[![Enable faster engine spin-up](Images/TS/cranking/settings_04.png)](#enable-faster-engine-spin-up)
![Settings18](Images/TS/cranking/settings_18.png)
</td></table>

## General Cranking Settings

### Cranking RPM limit

*This sets the RPM limit below which the ECU will use cranking fuel and ignition logic - typically 350-450 RPM.*  

## Fuel Settings

### Injection Mode

*This is the injection strategy during engine start. See [Fuel Control Overview](Fuel-Overview) for more detail.*

*Available options are: "Simultaneous", "Sequential", "Batch", "Single Point".*

- *It is suggested to use "Simultaneous".*

### Fuel Source for Cranking

*You can try two different strategies for the fuel math on cranking.*
*Available options are "Fixed" and "Fuel Map".*

- *In "Fixed" mode, you can manually set the fixed pulse duration (in ms) in the next text field.*

- *In "Fuel Map" mode, the "Running" fuel math is used for cranking.*
    > ![Hint](Images/icons/hint.png) *Hint: Please make sure your running fuel tables are extended into the low RPM range for cranking.*

### Base fuel pulse width

*Base duration of the fuel injection during cranking: this is modified by the multipliers for CLT, IAT, TPS etc, to give the final cranking pulse width. This is used only if "Fuel Source for cranking" option is set to "Fixed".*

## Ignition Settings

### Advance

*Ignition advance angle used during engine cranking: 5-10 degrees will work as a base setting for most engines.*

### Use Separate Advance Table for Cranking

*This activates a separate advance table for cranking conditions, which allows the cranking advance to be RPM-dependent.*

![Cranking Advance Table](Images/TS/cranking/separate_advance_table.png)

### Use Advance Corrections for Cranking

*This enables the various ignition corrections during cranking (IAT, CLT, FSIO and PID idle).*

### Use Fixed Cranking Dwell

*If set to true, will use the specified duration for cranking dwell. If set to false, will use the specified dwell angle. Unless you have a really good reason, leave this set to true to use duration mode.*

## IAC Settings

### Cranking IAC position

*This is the IAC position during cranking; some engines start better if given more air during cranking to improve cylinder filling.*

### After Cranking IAC Taper Duration

*This is the duration in cycles that the IAC will take to reach its normal idle position; it can be used to hold the idle higher for a few seconds after cranking to improve startup.*

### Override IAC multiplier for cranking

*This setting overrides the normal multiplication values that have been set for the idle air control valve during cranking. If this setting is enabled, the "IAC multiplier" table in the Cranking settings tab needs to be adjusted appropriately or potentially no IAC opening will occur.*

![Cranking Idle Air Multiplier](Images/TS/cranking/cranking-idle-air-multiplier.png)

## Advanced Cranking Settings

### Enable flood clear

*When enabled, if the throttle pedal is held above 90% no fuel is injected while cranking to clear excess fuel from the cylinders.*  

### Enable faster engine spin-up

- *Smarter cranking logic. When enabled, the ignition and fuel injection will start right after the first sync point of the primary [trigger wheel](All-Supported-Triggers).*

- *Please be aware that this mode currently works only for certain trigger wheel types (e.g. 60-2, 36-1).*

## Priming Fuel Pulse

### Duration at -40C degrees

*Priming pulse used for wall wetting before cranking.

*The priming pulse has a tunable curve in TunerStudio, so you can set a priming pulse fuel mass for a given coolant temperature.*

*The priming pulse makes a big difference when you have a long distance from the injector to the engine valve.*

*See also isFasterEngineSpinUpEnabled*

## After-start enrichment

*A multiplier table to enrich for some number of engine cycles after start, depending on the coolant temperature*

---

## How does it work?

During cranking, two curves control the amount of fuel injected:
"cranking coolant temperature multiplier" and "cranking duration multiplier".
  
A cold engine usually requires more cranking fuel; cranking fuel usually tapers down during cranking since more fuel is needed in the beginning and not really needed later.

If you have flooded your engine, i.e. got too much fuel on your spark plugs, "Flood Clear" is recommended - i.e. cranking with wide-open throttle without any fuel squirted into the cylinders in order to ventilate your cylinders.

As of April 2019 "base fuel pulse" is deprecated, "1" is recommended.

On a typical 4-cylinder engine with 200 cc/min injectors and sequential injection, base fuel should be about 1ms.

![table](Images/cranking_4cylinder.png)

For 1.6 Honda cranking settings see [this image](Images/TS/TunerStudio_ignition_settings.jpg) (note that "base fuel" = 1 is recommended these days, with a corresponding change to cranking temperature multiplier)

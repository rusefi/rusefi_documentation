# Acceleration Compensation

See also [Fuel Overview](Fuel-Overview)

Acceleration Compensation is required in an EFI system to modify the fuel injection to compensate for the deviation in AFR caused by the change of conditions in the inlet manifold.

When an engine changes load the depression in the inlet manifold changes; during an increase in load the depression increases and this causes fuel to drop out of suspension and collect on the walls of the intake manifold. Because of this fuel drop out, instead of being drawn into the cylinders, the fuel momentarily remains on the walls of the inlet manifold. The result of this is the lean AFR spike you can often see on poorly tuned vehicles when giving a sudden increase of throttle.

rusEFI has implemented several strategies that attempt to compensate for this physical phenomenon. These are detailed in their own specific pages, but a brief overview is shown below.

It is important to note that the Acceleration Compensation is not intended to increase the amount of fuel in order to increase power during acceleration - that is the purpose of the AFR table or VE table, whereas this compensation is purely intended to correct for the fuel dropping out of suspension.  
This is also why it is referred to as "Acceleration Compensation" rather than "Acceleration Enrichment", as the second term implies the wrong purpose.

## TunerStudio screens

Open `Fuel -> AE / Transient fueling`. With injection enabled, the menu groups
the settings into these screens:

| Screen | Contents and availability |
| --- | --- |
| Acceleration enrichment settings | Select the strategy, VE-edit suspension, STFT holdoff, and the applicable TPS detection/pump settings. |
| TPS / Lua AE calibration | MS/Percent Adder table and RPM multiplier, or Lua instructions and cycle-mass readouts. Hidden when MAP Prediction is selected. |
| MAP prediction and sensor fallback | Estimated MAP table and prediction duration for Speed Density. Other fuel algorithms show an explanation when MAP Prediction is selected. Outside prediction mode, the Speed Density fallback editor is available in Full/Installation UI modes. |
| Wall wetting compensation | Independent Basic/Advanced fuel-film settings, first-injection-event diagnostics, and measured lambda/AFR. Advanced exposes all four CLT/MAP curves. |
| Flex fuel transient compensation | Enable and edit CLT/ethanol multipliers. Available when a flex input is configured, including at E0 or with a sensor error. |

Controls for another strategy are hidden. The TPS/Lua calibration readouts use
two rows of three values, with a history graph below. The corrected TPS AE
readout uses milliseconds in MS Adder mode and fractions in Percent Adder mode;
changing modes reinterprets the existing table values without conversion.
Lua has a separate mass readout in grams per cylinder per cycle.

RPM acceleration is an ECU estimate of engine-speed change, not vehicle
acceleration. Intermediate table, pump, wall-film and flex values can retain
their last calculation while their paths are bypassed. Use the screen's help
for the meaning and limits of each diagnostic.

<!-- UI verified against rusEFI cba7263a4dc plus the remaining PR #10384 changes,
     adapted from bf9ce6144104a88c6eb8be968338f4946cf990f6 on 2026-10-16. -->

## TPS based

This is the simplest method. It uses the change in TPS position over time to decide on an additional quantity of fuel to inject.  
It is most similar to a carburetor's accelerator pump in operation.

## Wall Wetting

This is a more sophisticated method that was developed in the 1980s by the Ford Motor Company. It uses a simple model to estimate the amount of fuel that is dropping out of suspension and the time it takes to re-evaporate.  
This is a more accurate method but requires a little more knowledge to tune.

## Lua

**Accel Enrichment Mode = Lua** lets a script replace the built-in acceleration
enrichment strategy. Use [`setAccelEnrichment(grams)`](Lua-Scripting#setaccelenrichmentgrams)
to supply extra fuel per cylinder per engine cycle. Firmware scales this mass
for the selected injection mode; the script controls when enrichment starts,
its amount, and its decay. Native TPS tables, fractional pump, MAP prediction,
and RPM/flex AE multipliers are inactive in Lua mode.

Refresh the request within 200 ms and send zero when enrichment ends. Firmware
clears it on Lua reset, engine stop or configuration changes, suppresses it during
cranking, DFCO and detected VE tuning, and uses the normal closed-loop-fuel
holdoff after enrichment. Wall wetting remains independently configurable.
Log **Fuel: Lua AE cycle mass** (`luaAccelFuel`, grams) for the applied correction.

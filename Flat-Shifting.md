# Flat Shifting

> ⚠️ **Advanced, safety-relevant feature.** Flat shifting momentarily reduces engine torque so you can change gear without lifting off the throttle. It places extra stress on the clutch and drivetrain. Introduce it carefully, and confirm behaviour on a [log](Logging-Guide) before relying on it.

Flat shifting (sometimes called flat-foot shifting) lets you make full-throttle upshifts: when you trigger a shift, rusEFI briefly cuts engine torque so the next gear can engage, then restores power. In rusEFI this is part of the **torque reduction** system, which is closely related to [Launch Control](HOWTO-Launch-Control) and often shares the same input pin.

## Triggering and arming

- The feature is turned on with `torqueReductionEnabled`.
- It is activated by `torqueReductionTriggerPin`, described in the firmware as the "Pin that activates the reduction/cut for shifting. Sometimes shared with the Launch Control pin."
- Because that pin is commonly **shared with launch control**, `torqueReductionArmingRpm` sets the RPM boundary between the two behaviours: the firmware notes that "most people have an RPM where behavior under that is Launch Control, over that is Flat Shift/Torque Reduction."
- `torqueReductionArmingApp` sets the accelerator-pedal position required for the torque reduction to arm when the trigger pin is active.
- `limitTorqueReductionTime` optionally limits how long the reduction is applied.

If you also use launch control, set `torqueReductionArmingRpm` so the shared pin behaves as launch control below that RPM and as flat shift above it.

## Configuring the reduction

The amount and method of the torque reduction are configured in TunerStudio. Set them conservatively, confirm the behaviour on a log, and increase gradually.

## Related pages

- [Launch Control](HOWTO-Launch-Control) — shares the trigger pin with flat shifting.
- [Logging Guide](Logging-Guide) — recording logs to confirm the behaviour.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `torqueReductionEnabled`, `torqueReductionTriggerPin`, `torqueReductionArmingRpm`, `torqueReductionArmingApp`, `limitTorqueReductionTime`.

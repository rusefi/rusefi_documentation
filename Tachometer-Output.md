# Tachometer Output

rusEFI can drive a dashboard tachometer (rev counter) by sending a pulse signal that represents engine speed, so a factory or aftermarket analog tach can display RPM from rusEFI.

## Configuration

- `tachOutputPin` (with `tachOutputPinMode`) — the output that sends the tach signal.
- `tachPulsePerRev` — the number of pulses sent per engine revolution. Set this to what your gauge expects (it usually relates to the cylinder count the gauge was designed for).
- `tachPulseDuractionMs` — the pulse duration, described in the firmware as "Duration in ms or duty cycle depending on selected mode".
- `tachPulseDurationAsDutyCycle` — chooses whether that value is a "Constant time" (a fixed number of milliseconds) or a "Duty cycle" ("Treat milliseconds value as duty cycle value, i.e. 0.5ms would become 50%").

## Setting it up

1. Wire the tach output to the gauge's signal input — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections).
2. Select the tach output pin in TunerStudio.
3. Set `tachPulsePerRev` to match the gauge, then compare the gauge reading to the rusEFI RPM value and adjust pulses-per-rev until they agree.
4. If the gauge reads erratically or sticks, adjust the pulse duration or switch between constant-time and duty-cycle mode.

## Related pages

- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — outputs and wiring.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `tachOutputPin`, `tachOutputPinMode`, `tachPulsePerRev`, `tachPulseDuractionMs`, `tachPulseDurationAsDutyCycle`.

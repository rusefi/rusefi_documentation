# Engine state machine

Open **Advanced → Engine State Machine** to enable operating-state reporting and
shift recognition. It is disabled by default. The settings are stored on the
main configuration page.

The primary states are Off, Cranking, Afterstart, Idle, Coasting, Transient,
WOT, Cruising, Overrun, Accelerating and Decelerating. Separate flags report
launch control, flat-shift torque reduction, upshifts/downshifts and coolant
temperature bands.

## State detection

Off and Cranking take priority. WOT requires driver throttle intent strictly
above **Driver throttle WOT threshold**, initially 90%. This uses the pedal on
electronic-throttle setups and TPS on cable-throttle setups. Transient follows
the TPS acceleration-enrichment detector, with a configurable hold time.

Idle, Afterstart and Coasting follow the idle controller. Overrun additionally
requires closed throttle, RPM above the DFCO high threshold, and an engaged
transmission. Configured clutch inputs are checked even when both shift
directions are None; either input indicating disengagement prevents Overrun.
Shift-switch selections also support virtual inputs without assigned pins.
Off-throttle travel above the configured maximum idle vehicle speed reports Coasting. Other part-throttle operation reports Cruising.

Acceleration and deceleration thresholds are in RPM/s; zero disables that
state. **RPM rate sampling window** controls the update cadence, with a 50 ms
minimum. **Acceleration hold time** bridges brief rate dips, but a transition
to coasting ends the hold. RPM sampling works without shift-switch selections
and during flat shifts. Decelerating additionally needs valid vehicle speed
and a valid detected gear value of zero.

Cold and Hot use the configured coolant thresholds. Their exact boundaries are
Operating, and invalid coolant also reports Operating. Keep Cold below Hot.

## Shift recognition

Select the clutch switch used for each shift direction. Clutch Up means the
pedal is at rest; Clutch Down means fully pressed. Configure the physical
inputs under Switch Inputs. **Second clutch switch available** permits earlier
window opening/closing using the other switch.

With one direction configured, its switch identifies that direction. With both
directions configured, a -100..100 accumulator confirms direction from RPM or
vehicle-speed changes before the clutch opens. Positive values support upshifts;
negative values support downshifts. **Accumulator gain**, **decay rate**, and
the two confirmation thresholds set responsiveness. In VSS Rate mode the
numeric acceleration/deceleration thresholds also normalize km/h/s, while
engine-state detection still uses them as RPM/s.

VSS Rate mode requires valid vehicle speed and honors **Minimum shift speed**
when accumulating evidence. Initial and recovered VSS samples establish a
baseline instead of implying a speed change. Launch and flat-shift torque
reduction do not build new evidence. RPM Rate mode can work without VSS. Evidence freezes
while the shift window is open. Release clears the window; holding it open for
more than three seconds expires it. **Shift latch hold time** can keep a confirmed
flag active after the window closes, and **Relatch on Clutch Down** can extend
that hold. Clutch Up at rest always cancels the shift flag.

Disabling the state machine, stopping the engine, or burning settings clears
its state and history. Losing required vehicle speed cancels shift recognition.
Reset preserves the current clutch-switch levels, so burning settings with a
held pedal does not create a new shift or revive one that already timed out.
These flags describe operating conditions; actuator behavior comes from the
features that consume them.

## State-based fuel trims

**State based STFT** optionally chooses the existing short-term fuel-trim cells:

| Primary state | STFT cell |
| --- | --- |
| Idle, Afterstart, Coasting | Idle |
| Overrun | Overrun |
| WOT | Power |
| Other states | Cruise |

Existing cell gains, limits and learning gates still apply. Turning either
enable off restores RPM/load-based cell selection.

## Logging

Log `engineSmCurrentState`, the individual `engineSmIs*` flags,
`engineSmRpmRate`, and `engineSmShiftAccumulator`. The displayed integer includes
shift/launch priority; the individual primary-state flags remain visible.

## Regression coverage

The regression tests require clearing stale lifecycle state, independent
RPM sampling, valid speed before Decelerating/shift recognition, and correct
clutch-based Overrun/STFT classification. They also check that resetting with
the pedal held does not invent a press, that speed recovery does not revive a
cancelled shift, and that a real subsequent clutch press still works.

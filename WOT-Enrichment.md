# Time-based WOT enrichment

**Fuel → Fuel Corrections → WOT Enrichment** adjusts the target AFR according to
continuous time at wide-open throttle. It is disabled by default, with a zero
curve and an eight-point time axis from 0 to 30 seconds.

Enable both **Enable Engine State Machine** and **WOT Enrichment**. WOT comes
from the [engine state machine](Engine-State-Machine): the engine must be running
and driver throttle intent must be strictly above **Driver throttle WOT
threshold**. The default threshold is 90%; driver intent uses the accelerator
pedal with electronic throttle and TPS with cable throttle.

Tune the curve in AFR units. Negative offsets richen and positive offsets lean.
For example, a base target of 12.0 AFR plus an offset of -1.0 gives 11.0 AFR.
This is an AFR adjustment, not a fuel-percentage increase. The calculation uses
the configured fuel's stoichiometric ratio, including flex-fuel blending, and
updates the published target lambda to match.

The timer starts at the first WOT sample and stops increasing at 30 seconds.
Throttle lift clears the timer and offset on the next slow callback; a later
WOT burst starts again at zero. Disabling either feature, stopping the engine,
or burning settings clears the correction. An offset that would produce a
nonpositive or nonfinite target AFR is ignored, preserving the base target.

Log `isWotEnrichmentActive`, `wotEnrichmentTimer`, `wotEnrichmentAfrAdder`,
`targetAFR` and `targetLambda` to inspect the request and resulting fuel target.

Source reviewed: the report-20 port in rusEFI `0b594fb25c6`, based on AlphaX
`ebb877615ee1`, including the timer-reset and fuel-target fixes.

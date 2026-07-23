# Warning and Check-Engine Light

rusEFI can drive a check-engine / malfunction indicator light (MIL) to warn the driver of a fault, and it exposes a trigger-error output that is useful when diagnosing trigger problems.

## Check-engine light (MIL)

`malfunctionIndicatorPin` drives a check-engine / malfunction indicator light. The firmware describes it as: "Check engine light, also malfunction indicator light. Always blinks once on boot." Wire it to a dashboard warning light so the driver is alerted when rusEFI raises a fault.

Set the output pin (and `malfunctionIndicatorPinMode`) in TunerStudio, and see [rusEFI Error Codes](Error-Codes) for what the faults mean.

## Trigger error output

`triggerErrorPin` is a debugging output. In the firmware's words: "This pin is used for debugging - snap a logic analyzer on it and see if it's ever high". It is driven when the trigger decoder detects an error, so watching it with a scope or logic analyzer helps diagnose trigger and synchronization problems.

## On-board status LEDs

Most rusEFI boards also have on-board status LEDs. What each LED and blink pattern means is documented on the [LED states](LED-states) page.

## Related pages

- [rusEFI Error Codes](Error-Codes) — what a raised fault means.
- [LED states](LED-states) — the on-board status LEDs.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — outputs and wiring.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `malfunctionIndicatorPin` ("Check engine light, also malfunction indicator light. Always blinks once on boot."), `malfunctionIndicatorPinMode`, `triggerErrorPin`.

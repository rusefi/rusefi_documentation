# Air Conditioning (A/C) Control

rusEFI can control the air-conditioning compressor: it reads the A/C request, switches the compressor clutch relay, raises idle to cope with the extra load, and disables the compressor under conditions where it should not run.

## Request and relay

- `acSwitch` — the "A/C button input", the request from the dashboard A/C switch.
- `acRelayPin` (with `acRelayPinMode`) — the output that energizes the A/C compressor clutch relay.

## Idle-up

The compressor adds mechanical load, so rusEFI can raise idle while the A/C is on:

- `acIdleExtraOffset` — "Additional idle % while A/C is active".
- `acIdleRpmTarget` — "Idle target speed when A/C is enabled. Some cars need the extra speed to keep the AC efficient while idling."

See [Idle Control](Idle-Control) for how idle is regulated.

## Cutoff limits

rusEFI disables the compressor when it should not run. Each check can be turned off by setting its value to 0:

- `maxAcRpm` — "Above this RPM, disable AC."
- `maxAcTps` — "Above this TPS, disable AC." (so the compressor drops out at wide-open throttle for full power).
- `maxAcClt` — "Above this CLT, disable AC to prevent overheating the engine."

## Wiring

The compressor clutch is switched through a relay: `acRelayPin` energizes the relay coil, and the relay switches power to the clutch. Wire the dashboard A/C request switch to the `acSwitch` input. A cooling fan can also be tied to the A/C request — see [Cooling Fan Control](Cooling-Fan-Control).

## Related pages

- [Idle Control](Idle-Control) — the idle-up applied when A/C is on.
- [Cooling Fan Control](Cooling-Fan-Control) — a fan can be linked to the A/C request.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — outputs and relays.

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `acSwitch`, `acRelayPin`, `acRelayPinMode`, `acIdleExtraOffset`, `acIdleRpmTarget`, `maxAcRpm`, `maxAcTps`, `maxAcClt`.

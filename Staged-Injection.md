# Staged Injection

Staged injection (also called secondary injection) uses **two sets of fuel injectors** — a primary set and a secondary (staged) set. At low fuel demand only the primary injectors fire; as demand rises, rusEFI brings the secondary injectors into play to add flow.

## Why use staged injection

A single large injector needed for high power has poor control at very short pulse widths, which hurts idle quality, low-load metering, and driveability. Staged injection lets you run **smaller primary injectors** for good resolution at idle and cruise, and **stage in larger or additional secondary injectors** only when the extra flow is needed. This gives a wider usable range than a single injector set of the same total capacity.

## How rusEFI implements it

- The feature is turned on with the `enableStagedInjection` setting.
- The secondary (staged) injectors are configured separately from the primary injectors, including their own flow rate, through the `injectorSecondary` settings. Set the flow for each injector set to match the physical injectors you have fitted.
- rusEFI's injector model accounts for the staged secondary injectors when the feature is enabled and splits the requested fuel between the primary and secondary injectors. The staging behaviour (when, and how much, fuel is delivered through the secondary injectors) is configured in TunerStudio.

Because both injector sets are driven from the ECU, you need enough injector output channels for all of them. Wire the injectors according to your board's pinout — see the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections#fuel-injectors).

## Settings

| Setting | Purpose |
|---|---|
| `enableStagedInjection` | Enables staged (secondary) injection. |
| primary injector flow | The flow rating of the primary injectors, at your fuel pressure. |
| `injectorSecondary` (flow and dead-time correction) | Configures the secondary/staged injectors, including their flow rate. |

Values are specific to your injectors and fuel system, so this page does not prescribe numbers. After setup, verify fuelling on a live [log](Logging-Guide) across the load and RPM range, paying attention to the transition as the secondary injectors stage in.

## Related pages

- [Fuel Overview](Fuel-Overview) — how rusEFI calculates fuel.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — injector wiring.
- [Logging Guide](Logging-Guide) — recording logs to verify fuelling.

## Technical sources

- Injector model (handles the primary/secondary injectors): `firmware/controllers/algo/fuel/injector_model.cpp`.
- Configuration field definitions: `firmware/integration/rusefi_config.txt` (`enableStagedInjection`, `injectorSecondary`).

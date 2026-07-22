# Anti-Lag (ALS)

> ⚠️ **DANGER — competition-only feature. Read this before enabling.**
>
> Anti-lag deliberately keeps combustion energy high in the exhaust so the turbocharger stays spooled while you are off the throttle. This produces **very high exhaust and turbocharger temperatures**, heavy mechanical and thermal stress, and loud backfires. It can shorten the life of, or destroy, the **turbocharger, exhaust, valves, and catalytic converter**, and it is not emissions-legal.
>
> It is intended for **closed-course competition use only**, on engines and turbochargers specifically built and prepared for it. Do not use it on the street or on hardware that is not prepared for it. Introduce it gradually, **monitor exhaust gas temperature (EGT)** continuously, and verify behaviour on a [log](Logging-Guide). Use at your own risk.

Anti-lag (also called ALS, anti-lag system) reduces turbo lag by keeping the turbocharger spinning while the engine is off the throttle, so that boost returns almost immediately when you get back on it.

## Activation

The overall feature is turned on with `antiLagEnabled`. When and how it runs is set by `antiLagActivationMode`, which offers three options:

- **Switch Input** — activated by a driver-operated switch wired to the `ALSActivatePin` input.
- **Always Active** — runs whenever its configured conditions are met.
- **Lua** — activated from a [Lua script](Lua-Scripting), for custom activation logic.

## Tuning

The timing, fuelling, and the RPM and throttle conditions that anti-lag uses are configured in TunerStudio. Set them conservatively, watch EGT closely, and confirm the behaviour on a [log](Logging-Guide) before relying on it.

## Related pages

- [Launch Control](HOWTO-Launch-Control) — often used together with anti-lag.
- [Boost Control](Boost-Control)
- [Lua Scripting](Lua-Scripting) — one of the anti-lag activation modes.
- [Logging Guide](Logging-Guide)

## Technical sources

- Configuration field definitions: `firmware/integration/rusefi_config.txt` — `antiLagEnabled`, `antiLagActivationMode` (Switch Input / Always Active / Lua), `ALSActivatePin`.

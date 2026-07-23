# Nitrous (NOS)

> ⚠️ **Nitrous is high-risk.** Nitrous oxide sharply increases cylinder pressure and power. A mistake — especially a lean air/fuel condition, or too much ignition timing while on nitrous — can destroy an engine almost instantly. This is an advanced modification. If you are not confident tuning fuel and ignition under nitrous, use a purpose-built nitrous controller and get experienced help.

rusEFI does **not** have a dedicated, built-in nitrous controller — there is no nitrous menu or turnkey nitrous feature. If you want rusEFI involved in nitrous, there are two practical approaches.

## Option 1: Lua scripting

rusEFI's [Lua scripting](Lua-Scripting) can implement nitrous control from the building blocks the firmware already provides. A typical script would:

- Read an **arming input** (a driver switch) plus the current **RPM**, **throttle position**, and **coolant temperature**.
- Allow nitrous only inside a safe window — for example above a minimum RPM and throttle, below a maximum RPM, and only once the engine is warm.
- Switch a **general-purpose output** to the nitrous solenoid relay when all the conditions are met.
- Add extra fuel and/or pull ignition timing while nitrous is active, so the mixture and timing stay safe under the added oxygen.

Because you write the logic yourself, you are responsible for making it fail-safe — for example, cutting nitrous the instant the throttle lifts or a fault is detected. See [Lua scripting](Lua-Scripting) for the available functions and the [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) for the outputs that can drive the solenoid relay.

## Option 2: A standalone nitrous controller

Many people run a dedicated nitrous controller (a progressive controller or window switch) alongside rusEFI. The controller handles arming, the activation window, and progressive delivery, while rusEFI runs the engine. Either way, make sure your fuel and ignition tune is safe for the extra power the nitrous adds.

## Related pages

- [Lua Scripting](Lua-Scripting) — the scripting used to build a DIY nitrous controller.
- [Wiring & Connectivity Overview](FAQ-Basic-Wiring-and-Connections) — the general-purpose outputs that can switch a solenoid relay.

## Note

rusEFI's configuration has no nitrous-specific fields; nitrous is not a built-in feature and is implemented through Lua scripting and general-purpose outputs, or handled by external hardware.

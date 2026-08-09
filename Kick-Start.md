# Kick Start

Engines started by a kick lever, pull cord or hand crank rather than an electric starter — small motorcycle, kart and generator engines, and some vintage cars.

The rusEFI trigger decoder is optimized for engines with a starter, but see https://rusefi.com/forum/viewtopic.php?p=44340#p44340

That optimisation is the main thing to be aware of. An electric starter turns the engine at a fairly steady speed for as long as you hold the key, which is the situation the decoder is written for. A kick or a pull gives it far less to work with.

## Settings that matter

**Cranking RPM limit.** rusEFI treats anything below this as cranking and applies cranking fuel and ignition instead of the running tables. The [Cranking](Cranking) page describes it as *"the RPM limit below which the ECU will use cranking fuel and ignition logic - typically 350-450 RPM"*. On an engine that is kicked rather than cranked, whether the engine passes that threshold at all — and how quickly — is worth checking before chasing a fuelling problem.

There is also a `kickStartCranking` setting exposed in TunerStudio. It carries no description in the firmware configuration, so what it changes is not documented here rather than guessed at.

## If it will not fire

`KickStart` is cut code 13. If the ECU is refusing to fire and reports that code, see [Error Codes](Error-Codes), and [Cranking](Cranking) for the wider first-start checklist.

## Related pages

* [Cranking](Cranking) — cranking fuel, timing and the RPM threshold
* [Trigger Configuration Guide](Trigger-Configuration-Guide) — getting the decoder to sync
* [Error Codes](Error-Codes) — cut codes including `KickStart`
* [Bench Testing Outputs](Bench-Testing) — confirming spark and fuel before you kick

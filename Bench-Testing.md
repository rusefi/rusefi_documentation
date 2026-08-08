# Bench Testing Outputs

Bench testing means commanding each output on its own, with the engine not running, to confirm it is wired to the channel rusEFI thinks it is.

Do this before the first start. As [How to Start an Engine](HOWTO-Start-An-Engine) puts it: *"incorrect wiring or channel setting is like having the HT leads in the wrong order. You will fuel and spark the wrong cylinders."* An injector on the wrong channel is not a tuning problem you can chase later — it is a mechanical hazard, and it is invisible until the engine is turning.

Bench testing also confirms the opposite: that an output which does nothing is genuinely miswired, rather than a configuration you have not found yet.

## Before you start

- **The engine must not be running.** rusEFI refuses to run injector and ignition bench tests while the engine is running, but do not rely on that as your only safeguard.
- **Fuel is flammable.** Injector tests spray fuel if the rail is pressurised. Have a fire extinguisher to hand, and consider testing injectors out of the rail or with the pump disabled if you only want to hear them click.
- **Ignition coils produce high voltage.** If you are checking for a spark, ground a spare plug properly and keep clear of it.
- **Relays and pumps will actually run.** Make sure nothing is going to be damaged by a fuel pump, fan or starter energising unexpectedly.

## Testing from TunerStudio

The buttons live under **Controller → Bench Test & Commands**. [Get Running with a Plug-and-Play ECU](HOWTO-Get-Running-PnP) contains a step-by-step walkthrough of this screen, including which spark outputs to expect on a wasted-spark four cylinder — that walkthrough applies equally to a wire-in installation.

There is also a **stop engine** button on the same screen, which is the correct way to stop a running engine without cutting power to the ECU.

## Testing from the console

The same tests are available as console commands, which is useful when you want a specific repeat count or a longer pulse than the buttons give you. Times are in milliseconds.

### Injectors and ignition

| Command | Parameters | Notes |
|---|---|---|
| `fuelbench` | on ms, off ms, count | Firmware example: *"cylinder #2, 5ms ON, 1000ms OFF, repeat 3 times"* |
| `fuelbench2` | cylinder, on ms, off ms, count | Same, with the cylinder chosen explicitly |
| `sparkbench` | on ms, off ms, count | Firmware example: *"5 ms ON, 400 ms OFF, two times"* |
| `sparkbench2` | coil, on ms, off ms, count | Same, with the coil chosen explicitly |

The cylinder and coil numbers are the human-facing numbers, so `1` is cylinder one.

### Pumps, relays and other outputs

| Command | Parameters | Tests |
|---|---|---|
| `fuelpumpbench` | none | [Fuel pump](Fuel-Pump) relay |
| `fuelpumpbench2` | duration ms | Fuel pump for a chosen duration |
| `mainrelaybench` | none | Main relay |
| `starterrelaybench` | none | Starter relay |
| `fanbench` | none | [Cooling fan](Cooling-Fan-Control) |
| `fanbench2` | none, or duration ms | Second cooling fan |
| `acrelaybench` | none | [Air conditioning](Air-Conditioning-Control) compressor relay |
| `milbench` | none | [Check engine light](Warning-and-Check-Engine-Light) |
| `boostbench` | none | [Boost](Boost-Control) control valve |
| `hpfpbench` | none | High pressure fuel pump valve, see [GDI status](GDI-status) |
| `tcusolbench` | solenoid, on ms, off ms, count | Transmission solenoid. Firmware example: *"solenoid #2, 1000ms ON, 1000ms OFF, repeat 3 times"* |

### Wideband modules

| Command | Parameters | Purpose |
|---|---|---|
| `ping_wideband` | index | Check a [wideband controller](rusEFI-Wideband-Controller) is responding |
| `set_wideband_index` | hw index, index | Set a module's index |
| `update_wideband` | hw index | Update module firmware |

These require CAN support in the build.

## What to confirm

Work through the outputs your engine actually uses and confirm each one individually:

- **Every injector** fires on the channel that matches its cylinder, not just "some injectors click". Test them one at a time — see [Injection Modes](Injection-Modes) for how many channels your setup should be using.
- **Every coil** fires on the channel that matches its cylinder or pair. On wasted spark, confirm which pairs you expect — see [Ignition Modes](Ignition-Modes).
- **Fuel pump** primes.
- **Any relay or light** your build depends on.

If an output does nothing, check the pin assignment before rewiring anything. If an output fires on the wrong cylinder, fix it now — this is the entire reason for the exercise.

## Related pages

* [How to Start an Engine](HOWTO-Start-An-Engine) — the wider first-start checklist
* [Get Running with a Plug-and-Play ECU](HOWTO-Get-Running-PnP) — walkthrough of the bench test screen
* [Get Running with a Universal ECU](HOWTO-Get-Running)
* [Troubleshooting](Troubleshooting)
* [Error Codes](Error-Codes) — if the ECU is refusing to fire, the cut code says why

## Technical sources

Command names and parameters are taken from [`firmware/controllers/bench_test.cpp`](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/bench_test.cpp) in the rusEFI firmware, with the example usages quoted from that file's own comments.

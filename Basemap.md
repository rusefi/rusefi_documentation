# Does This Come With a Base Map?

We are of the opinion that basemaps are only useful to help you load your project on a trailer in order to get to your tuning shop. In this regard more or less any map would get your project vehicle on the trailer. :)

That is the short answer, and it is worth understanding why - because a base tune is genuinely useful for one job and genuinely dangerous for another.

## What a base tune actually is

A tune (a `.msq` file in TunerStudio) is the complete set of calibrations for one ECU on
one engine: which pin drives which injector, how big those injectors are, what the trigger
wheel looks like, how the sensors are scaled, and the fuel and ignition tables.

A "base tune" is simply somebody else's tune, used as a starting point instead of a blank
project. It is a **starting point, not a calibration for your engine**.

## What a base tune is good for

- **Getting an engine to fire for the first time.** Starting from a running configuration
  saves you from setting several dozen fields from scratch and mistyping one of them.
- **Sanity-checking your own numbers.** If your injector deadtime is ten times someone
  else's for the same injector, one of you is wrong.
- **Seeing how a feature is set up.** Reading a working tune is often the fastest way to
  understand how somebody configured VVT, a transmission, or an idle valve.
- **Moving the car under its own power** - onto a trailer, off the lift, into the shop.

## What a base tune cannot do

It cannot know anything about *your* engine. Even a tune from the same engine code was
made for a different set of injectors, a different fuel pressure, a different exhaust, a
different altitude and a different set of wear. The fuel and ignition tables in it are
fitted to that engine, not yours.

Treat every value as a guess until you have checked it.

### The parts most likely to hurt you

| What is wrong | Why it matters |
| --- | --- |
| **Output pin assignments** | Pin mapping differs between boards, and often between revisions of the same board. A tune from another board can point injector or ignition outputs at completely different pins. Verify with [Bench Testing](Bench-Testing) before the engine ever turns. |
| **Injector size and deadtime** | Fuelling scales directly off these. Wrong values mean the whole fuel table is wrong by a constant factor - lean enough to damage an engine at load. See [Injector Lag Autotune](Injector-Lag-Autotune) and [Fuelling](Fuel-Overview). |
| **Trigger configuration** | The wrong trigger pattern or offset gives you ignition timing that is not where you think it is. Confirm TDC yourself - see [Confirm Top Dead Center](HOWTO-Start-An-Engine#confirm-top-dead-center-tdc-position) and the [Trigger Configuration Guide](Trigger-Configuration-Guide). |
| **Sensor calibrations** | CLT, IAT, TPS and MAP scaling are specific to the sensors fitted. A mis-scaled coolant sensor quietly ruins warm-up fuelling. See [Sensors and Calibration](Sensors-and-Calibration). |
| **Engine protection limits** | Rev limit, boost limit, lean protection and oil pressure thresholds arrive set for someone else's engine. Review all of them - see [Engine Protection](Engine-Protection). |
| **The VE table** | Reflects the donor's camshaft, compression, and exhaust. It is a shape to start from, not a calibration. |

The single most common way this goes wrong: the engine starts, it sounds fine, and the
tune is lean or over-advanced somewhere the owner has not driven yet. **A base tune that
idles is not a base tune that is safe at load.**

## The rusEFI Online tune library

[rusEFI Online](Online) is where the community's tunes live - several hundred of them, and
several times that many datalogs. It is the closest thing rusEFI has to a base map
library, and it is more useful than a single vendor base map because you can pick a
starting point that resembles *your* project.

Every uploaded tune carries the metadata you need to judge how close a match it is:

| Field | Why you care |
| --- | --- |
| Engine Make / Code | The most important filter - the same engine code is the best starting point |
| Cylinders | Must match |
| Liters | Displacement scales fuelling |
| Compression | Affects safe ignition timing |
| Aspiration | Atmo or Turbo - completely different tables |
| Vehicle Name and Tune Note | The uploader's own description of the build |
| Owner | Whose forum account uploaded it, so you can go and ask |

Browse or search at [rusefi.com/online](https://rusefi.com/online/). At the time of
writing (August 2026) the library skews towards four-cylinder engines and is roughly two
thirds naturally aspirated, with the deepest coverage on Mazda, BMW, Mercedes, Toyota,
Honda, Hyundai, Mitsubishi, Nissan, GM and Ford - but browse rather than assume, it grows
continuously.

Logs sit alongside the tunes, which is often the more valuable half: a tune tells you what
someone set, a log tells you what the engine actually did.

## Using a downloaded tune safely

1. **Check it loads against your firmware.** A tune is tied to a firmware signature. If
   TunerStudio complains, see [.ini Lookup Logic](INI-lookup-logic).
2. **Re-check every output pin** for your board, then confirm each one with
   [Bench Testing](Bench-Testing) - with the engine unable to start.
3. **Re-enter your own injector data**, fuel pressure and sensor calibrations.
4. **Set the trigger up for your engine** and confirm TDC with a timing light.
5. **Set your own protection limits** before the first start.
6. **Then start it** - follow [Performing the First Start](HOWTO-Start-An-Engine).
7. **Log everything** from the first crank and read the logs, do not just listen to the
   engine. See [Logging](Logging-Guide).

## Give one back

If you get your project running, [upload your tune](HOWTO-upload-tune) and a few
[logs](HOWTO-upload-log). The library is only as good as what people put into it, and the
next person with your engine will be glad you did.

## Related pages

- [rusEFI Online](Online) - the tune and log library itself.
- [How to Upload a Tune](HOWTO-upload-tune) - sharing yours, and the metadata fields to fill in.
- [Performing the First Start](HOWTO-Start-An-Engine) - what to do before the engine turns over.
- [Get Tuning with TunerStudio](Get-tuning-with-TunerStudio-and-your-rusEFI) - tuning it properly once it runs.
- [Engine Protection](Engine-Protection) - the limits worth setting before you need them.
- [Bench Testing](Bench-Testing) - verifying outputs without running the engine.

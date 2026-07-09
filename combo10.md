# combo10

* 10" touch screen
* initial tune wizard
* limited tuning support
* we have Windows Dash simulator if you want to give it a try!

## Firmware

https://github.com/rusefi/combo10-releases/releases

<img width="1277" height="795" alt="image" src="https://github.com/user-attachments/assets/9865cd81-4c8f-4ef3-9946-753cc081f41b" />

<img width="1273" height="660" alt="image" src="https://github.com/user-attachments/assets/b987ceb3-ceb8-4c30-9dd7-f34d80516b40" />

<img width="1261" height="501" alt="image" src="https://github.com/user-attachments/assets/195c948d-c6e6-4e68-8e8a-d3fa5495d8d5" />

## Versions

The device runs two separately-versioned pieces of software. Both are shown in
the UI: hold **ABOUT DEVICE** for 5 seconds to open the info panel.

| About screen row | Example | What it is |
|---|---|---|
| **Dash version** | `2026.0.9` | The dashboard **application** (gauges, wizard, tuning UI) |
| **Subsystem version** | `20260708_aed9736` | The **base image** (our custom OS and the Dash app) |

### Dash version — the application

Format: `YEAR.MAJOR.PATCH` (e.g. `2026.0.9`). The patch number is
auto-incremented, so a higher number is always a newer app.

How it updates:

* flashing a full SD image (it includes a dash build), **or**
* the USB auto-update: dropping a `screen_autoupdate_*.7z` on a FAT32 USB drive
  and plugging it into the device updates **only** the app — the Subsystem
  version does not change.

### Subsystem version — the image

Format: `BUILDDATE_GITHASH` (e.g. `20260708_aed9736` = built 2026-07-08 from
commit `aed9736`). It matches the SD image filename you flashed
(`dwin_10in_20260708_aed9736.img`), so you can tell exactly which release is on
the device.

It only changes by flashing a full SD image and letting it install itself to
the device (boot with the card in, wait for "Update complete", remove the
card). USB auto-update never touches it.

> Note: the `screen_autoupdate_*.7z` files use the same `BUILD_DATE_GITHASH`
> naming, but that identifies the **app build inside the package** — after
> applying one, the About screen reflects it in **Dash version**, not in
> Subsystem version.

## troubleshooting

hold "ABOUT DEVICE" for 5 seconds

## FAQ

### Q: where is the source code?

A: combo10 is not open source.

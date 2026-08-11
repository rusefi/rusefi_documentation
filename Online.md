# rusEFI Online

[rusEFI Online](https://rusefi.com/online/) is facilitating data flow within rusEFI open source engine management community.

- Make your tunes and logs easily available so that others can help you with troubleshooting.
- Share your finished tune to give others a starting point for their tune.
- Check out others' tunes

[How To Upload Tune](HOWTO-upload-tune)

[How To Upload Log](HOWTO-upload-log)

[How To Set Up Remote Tuning](HOWTO-Remote-Tuning)

For development details see [the backend Github repo](https://github.com/rusefi/web_backend).

## What is on it

Two libraries, both public and both browsable without an account:

- **Tunes** - complete TunerStudio `.msq` files, several hundred of them, each tagged with
  the engine and vehicle it came from.
- **Logs** - datalogs uploaded alongside them, several times more numerous than the tunes.

You only need to log in - with your [rusEFI forum](https://rusefi.com/forum/) account - in
order to upload. Browsing, searching and downloading are open.

## Finding a tune

The **Browse** tab lists everything; **Search** narrows it. Each tune shows:

| Field | |
| --- | --- |
| Engine Make / Code | the strongest filter - look for your engine code first |
| Cylinders, Liters, Compression | how mechanically close the donor engine is |
| Aspiration | Atmo or Turbo |
| Vehicle Name, Tune Note | the uploader's description of the build |
| Owner | the forum account that uploaded it - you can go and ask them |
| Uploaded, Views | how current and how well used it is |

A tune from the same engine code is the best starting point, but read
[Does This Come With a Base Map?](Basemap) before you put anyone else's calibration into
your engine - a downloaded tune is a starting point, not a calibration for your engine.

## Why upload yours

Posting a tune and a log is what makes community troubleshooting possible at all -
[Support](Support) asks you to do it before requesting help, because a full tune answers
questions that screenshots cannot. It also leaves a starting point for the next person
with your engine.

Please link the exact tune URL when you refer to one on the forum; see the FAQ on
[How to Upload a Tune](HOWTO-upload-tune).

## Under the hood

rusEFI Online is [rusefi/msqur](https://github.com/rusefi/msqur), a fork of
[nearwood/msqur](https://github.com/nearwood/msqur), originally written to save people
from downloading `.msq` files and opening each one in TunerStudio just to see what was in
it. It is open source and takes contributions.

## Related pages

- [Does This Come With a Base Map?](Basemap) - what a downloaded tune is and is not good for.
- [How to Upload a Tune](HOWTO-upload-tune) - and the metadata fields to fill in first.
- [How to Upload a Log](HOWTO-upload-log) - including the data rate that makes a log useful.
- [Remote Tuning](HOWTO-Remote-Tuning) - letting someone tune your car from elsewhere.
- [Support & Community](Support) - where to ask once your tune and log are posted.

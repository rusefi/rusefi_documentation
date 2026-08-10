# .ini Lookup Logic

All official rusEFI .ini files are available at https://rusefi.com/online/ini/

Dots should be replaced with slash and the `.ini` suffix should be added.

For instance, the .ini file for `rusEFI master.2024.02.02.alphax-4chan.1293678056`
would be available at https://rusefi.com/online/ini/rusefi/master/2024/02/02/alphax-4chan/1293678056.ini

Note that the space in the signature is also a separator - it becomes a slash - and the
leading name is lower case in the URL, so `rusEFI master.` becomes `rusefi/master/`.

## What the parts of a signature mean

A signature is assembled by `firmware/gen_signature.sh` at build time as:

```
<white label> <branch>.<YYYY.MM.DD>.<short board name>.<signature hash>
```

| Part | Where it comes from |
| --- | --- |
| White label | `rusEFI` unless the board sets `signature_white_label` |
| Branch | the git branch the firmware was built from, e.g. `master` |
| Date | build date, Europe/London |
| Short board name | the board's `SHORT_BOARD_NAME`, e.g. `uaefi`, `alphax-4chan`, `proteus_f4` |
| Signature hash | generated from the configuration layout, so it changes whenever the config changes |

Because the hash tracks the configuration layout, a signature identifies one exact
build - which is why a definition file from a different build will not talk to your ECU.

## Where to find your signature

TunerStudio shows the signature it expects in the project properties, and the firmware
reports its own signature when probed. If the two do not match, look the correct file up
with the rule above rather than guessing at a nearby date.

## Related pages

- [How to Create a TunerStudio Project](HOWTO-create-tunerstudio-project) - creating the project, auto-detect and manual definition selection.
- [How to Update Firmware](HOWTO-Update-Firmware) - updating firmware, and updating the TunerStudio definition afterwards.
- [rusEFI Bundle](rusEFI-bundle) - what is in the bundle, including `rusefi.ini`.
- [Tunerstudio Connectivity](Tunerstudio-Connectivity) - connection settings and troubleshooting.

## Technical Sources

- `firmware/gen_signature.sh` - builds the signature string.
- `firmware/controllers/generated/rusefi_generated_<board>.h` - the resulting `TS_SIGNATURE` define for each board.

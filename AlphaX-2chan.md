[AlphaX](https://www.alphaxpr.com/)

[Download release firmware](https://github.com/rusefi/rusefi/releases/latest/download/rusefi_bundle_alphax-2chan.zip)

[Snapshot firmware bundle](https://rusefi.com/build_server/rusefi_bundle_alphax-2chan.zip)


[Pinout](https://rusefi.com/docs/pinouts/hellen/alphax-2chan/)

[iBom rev C](https://rusefi.com/docs/ibom/alphax_2ch-c-ibom.html)


[iBom rev B](https://rusefi.com/docs/ibom/alphax_2ch-b-ibom.html)

[Issue tracker & hardware files](https://github.com/rusefi/alphax-2chan)

Hello. [AlphaX 2Chan](https://rusefi.com/build_server/rusefi_bundle_alphax-2chan.zip)

On-board MPXH6400A

![x](Hardware/Hellen/alphax-2chan-rev-a.jpg)

[See also AlphaX-4chan](AlphaX-4chan)


## Q: how many injectors per channel?

A: VND14NV04TR-E 93mJ 18A. In terms of current and switching energy those could handle _many_ injectors per channel, maybe a dozen?


## Changelog

rev E:
December 2022
 - migrated to Hellen MegaModule 0.1

rev D:
September 2022
 - crank/cam test pads https://github.com/rusefi/alphax-2chan/issues/63
 - TSOP-10 TLS115 https://github.com/rusefi/alphax-2chan/issues/64

rev C:
 - pull-down fixed https://github.com/rusefi/alphax-2chan/issues/40
 - affected by BOM issue p-channel mosfet https://github.com/rusefi/alphax-2chan/issues/53

rev B:
 - affected by BOM issue p-channel mosfet https://github.com/rusefi/alphax-2chan/issues/53
* BT fixed
``
bluetooth_jdy 115200 alphax 1234
``

rev A:
 - affected by BOM issue p-channel mosfet https://github.com/rusefi/alphax-2chan/issues/53
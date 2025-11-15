# GDI8

https://rusefi.com/docs/pinouts/GDI8/

🔴 Community support ONLY 🔴 [Support Statement](Support) 🔴 [Facebook group](https://www.facebook.com/groups/rusEfi) 🔴 [Discord](Discord) 🔴

* 8 injectors
* two HPFP (same as with injectors, it's the external ECU which is responsible for pressure build up control)
* CAN bus to adjust settings
* many specs match [GDI4](GDI4) - this board is two GDI4 glued together
* WARNING: main ECU firmware supports only one HPFP!
* WARNING: overall limited integration with main ECU. See https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/gdi8-pressure-input.lua https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/gdi4-communication.lua

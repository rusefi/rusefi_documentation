rusEFI connector mapping is a framework which takes ECU connector photo and pinout metadata file in [yaml](https://en.wikipedia.org/wiki/YAML) format and produces [HTML pinouts](https://rusefi.com/docs/pinouts/), PDF and TunerStudio project .ini.

Input files are located in "connectors" folder of corresponding board configuration folder for example [https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/microrusefi/connectors](https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/microrusefi/connectors) [https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/hellen/hellen64_miataNA6_94](https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/hellen/hellen64_miataNA6_94) [https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/hellen/hellen72](https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/hellen/hellen72)

Each yaml file contains two sections: pin functions and pin locations.

Pin type, function and mapping between user-phasing physical pin and stm32 MCU pin allows us to incapsulate the fact that for example INJ1 pin is handled by stm32 PF10.

Pin locations section is help Java Script of [https://rusefi.com/docs/pinouts/](https://rusefi.com/docs/pinouts/) locate the pin on the user friendly interactive documentation page.

Connector Mapping process is invoked nightly or could be requested on demand.

# Best Practives

YAML is all about space indentation. [http://www.yamllint.com/](http://www.yamllint.com/) is a great online yaml validator.


# Input Files

## `integration/rusefi_config.txt`

Defines the data types, scaling, and memory layout of the ECU's configuration. All parameters/tables/etc are defined here.

## `tunerstudio/rusefi.input`

Defines the template to generate the TunerStudio ini file. This defines the UI layout that presents the ECU's configuration to the user.

## `config/boards/<board>/connectors/*.yaml`

One yaml file per physical connector on a board defines the mapping between MCU pins and the corresponding name and function that pin serves on the outside world. Tool will read all yaml files in the directory and combine them to generate files for the ECU.

For more information on the connector mapping format, [see this page](Connector-Mapping).

## `config/boards/<board>/prepend.txt`

Parsed before `rusefi_config.txt`, to set any definitions that should be different for this board. For example, Proteus uses this file to allocate more configuration space to the Lua script than other boards.

# Output Files

These inputs generate various files:

- `engine_configuration_generated_structures.h`, `rusefi_generated.h`, etc: these generated headers tell the firmware build where various configuration parameters are, and the values of various definitions.
- `signature_<board>.h`: Tells the firmware what signature to report to TunerStudio (et al) so that it can select a matching ini file for this exact firmware.
- `rusefi_<board>.ini`: The ini file used to describe to TunerStudio both the layout of configuration parameters and the layout of the UI presenting those parameters to the user.
- `ramdisk_image.h`, `ramdisk_image_compressed.h`: Generated to create the read-only USB drive presented by the ECU that contains the ini file and some links. Means you don't need internet to connect TunerStudio to the ECU.
- `generated_ts_by_name_by_pin.cpp`: Lets the ECU report errors/warnings using the "friendly name" of each pin, instead of the hardware name.

# Usage

To generate configs for a board called `proteus_f4` from the folder `config/boards/proteus`, run:

`./gen_config.sh proteus proteus_f4`

_nb: the second parameter is there so that you can have multiple generated configs for "similar" boards, for example Proteus has F4, F7 and H7 variants that use the same folder but potentially different configs._

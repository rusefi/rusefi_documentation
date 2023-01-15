# Connector Mapping

rusEFI connector mapping is a framework which requires as input only:

- ECU connector photo (.jpg)
- pinout metadata file in [YAML](https://en.wikipedia.org/wiki/YAML) format

An automated build process creates [interactive pinouts](https://rusefi.com/docs/pinouts/), PDF and TunerStudio project .ini files.

Input files are located in "connectors" folder of corresponding board configuration folder, for example: [firmware/config/boards/microrusefi/connectors](https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/microrusefi/connectors)

A good example to start with is the YAML for microRusEFI's main connector [here](https://github.com/rusefi/rusefi/blob/master/firmware/config/boards/microrusefi/connectors/main.yaml).
The resulting interactive pinout is
[here](https://rusefi.com/docs/pinouts/microrusefi/).

## Syntax of Connector YAML

Each YAML file contains two sections: 'pins' and 'info'

The 'pins' section contains a list of pins, each having the following fields:  
>'pin' - a numeric id corresponding to the physical pin on the connector  
>'id' - the ID of the pin in the firmware  
>'ts_name' - the user-facing name of the pin in TunerStudio  
>'class' - the group of pins in which this pin should be included in TunerStudio, e.g. "outputs"  
>'function' - a human-readable description of what this pin is normally used for  
>'type' - a fixed list of codes to define the purpose (todo: add reference to allowed codes & meaning)  
>'color' - the color of the wire on the official rusEFI wiring harness if applicable  

The 'info' section contains information which is used to generate the interactive pinout. It contains the following fields:  
>'title' - contains the title for the page. Only one connector for a particular board needs this field.  
>'board_url' - contains a URL for documentation, which will be placed as a link on the top of the page. Only one connector for a particular board needs this field.  
>'name' - contains a human-readable name for the connector.  
>'id' - contains a short name for the connector, to be used in the URL when linking to a particular pin.  
>'order' - (optional) contains an index to order the connectors on the page. The lower the number, the nearer the top of the page. If the 'order' field is not present, order is undefined, but will probably be sorted alphabetically by the file name.  
>'image' - subsection which contains a single field, 'file', which contains the filename of the image, which is stored in the same directory as the YAML.  
>'pins' - subsection with a list of the pins' locations on the image. Its fields are 'pin', which matches to an 'id' in the main 'pins' section, 'x' and 'y', which are the coordinates on the image.  

The generation of the interactive pinouts is invoked by nightly build or could be requested on demand (todo: add command).

## Best Practices

YAML is all about space indentation. 
Use an editor with built-in linter for YAML (i.e. VSCode) or use an online YAML validator (i.e. 
[http://www.yamllint.com/](http://www.yamllint.com/) ).

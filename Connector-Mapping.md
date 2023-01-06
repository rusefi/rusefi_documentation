# Connector Mapping

rusEFI connector mapping is a framework which takes ECU connector photo and pinout metadata file in [YAML](https://en.wikipedia.org/wiki/YAML) format and produces [interactive pinouts](https://rusefi.com/docs/pinouts/), PDF and TunerStudio project .ini.

Input files are located in "connectors" folder of corresponding board configuration folder, for example: [firmware/config/boards/microrusefi/connectors](https://github.com/rusefi/rusefi/tree/master/firmware/config/boards/microrusefi/connectors)

[Here](https://github.com/rusefi/rusefi/blob/master/firmware/config/boards/microrusefi/connectors/main.yaml) is the YAML for microRusEFI's main connector, which is a good example of a complete YAML.
[Here](https://rusefi.com/docs/pinouts/microrusefi/) is the resulting interactive pinout.

Each YAML file contains two sections: 'pins' and 'info'

The 'pins' section contains a list of pins, each having the following fields:  
>'pin' - a numeric id cooresponding to the physical pin on the connector  
>'id' - the ID of the pin in the firmware  
>'ts_name' - the user-facing name of the pin in TunerStudio  
>'class' - the group of pins in which this pin should be included in TunerStudio, e.g. "outputs"  
>'function' - a human-readable description of what this pin is normally used for  
>'type' - a short description of the capabilities of this pin  
>'color' - the color of the wire on the official rusEFI wiring harness if applicable  

The 'info' section contains information which is used to generate the interactive pinout. It contains the following fields:  
>'title' - contains the title for the page. Only one connector for a particular board needs this field.  
>'board_url' - contains a URL for documentation, which will be placed as a link on the top of the page. Only one connector for a particular board needs this field.  
>'name' - contains a human-readable name for the connector.  
>'id' - contains a short name for the connector, to be used in the URL when linking to a particular pin.  
>'order' - contains an index to order the connectors on the page. The lower the number, the nearer the top of the page. If the 'order' field is not present, order is undefined, but will probably be sorted alphabetically by the file name.  
>'image' - subsection which contains a single field, 'file', which contains the filename of the image, which is stored in the same directory as the YAML.  
>'pins' - subsection with a list of the pins' locations on the image. Its fields are 'pin', which matches to an 'id' in the main 'pins' section, 'x' and 'y', which are the coordinates on the image.  

The generation of the interactive pinouts is invoked nightly or could be requested on demand.

## Best Practices

YAML is all about space indentation. [http://www.yamllint.com/](http://www.yamllint.com/) is a great online YAML validator.

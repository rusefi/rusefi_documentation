# Dev Console Implementation

## human readable protocol

A typical line in rusEFI human-readable protocol look like

`line:16:rpm,100,maf,3.3,`

Here `line` is a magic prefix, `16` is the length of the payload, and the payload `rpm,100,maf,3.3,` is a comma separated list of keys and pairs, let's call this "a line of known length"

As for sending commands to rusEFI, there are two options

a) plain unwrapped command, for example

`rpm 800<end of line>`

b) a command with specified length (this case the firmware can validate the command):

`sec!7!rpm 400<end of line>`

Pretty much same was as with data coming from rusEFI, we have a prefix `sec` and `7` for the payload length.
TODO: unify `line` and sec `one` day?

## java classes

Incoming data workflow:

transport layer pushes data into EngineState.processNewData() which splits the data into jeys and value, pushing this data into the primary listener for
the specified key. The main listener is SensorCentral which keeps track of 'Sensor' values and listeners. Another interesting key-value consumer is MessagesCentral which takes care of all the human-readable messages which end up in Messages UI console..

Outgoing data flow:
Outgoing data flow:

CommandQueue is the class which takes care of sending commands, making sure a confirmation is recieved and re-trying outgoing data transfer if needed.

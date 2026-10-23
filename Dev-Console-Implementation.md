# rusEFI tuner Implementation

<a id="dev-console-implementation"></a>

## MCP capture through the built-in sniffer

For normal CAN traffic viewing, use the [SLCAN Sniffer tab](Console#slcan-sniffer).
The following instructions are for developers connecting MCP tools to that
interface, not for normal ECU auto-connect or log viewing.

The ECU must provide its secondary USB CDC interface as an SLCAN adapter. Build
the MCP CAN application from the rusEFI repository root:

```sh
./gradlew :mcp_can:fatJar
```

Close the SLCAN tab before opening its serial port from MCP. For example:

```sh
java -jar java_console/mcp_can/build/libs/mcp_can-all.jar --backend slcan --port /dev/ttyACM1
```

Use a port such as `COM5` on Windows. Omit `--port` to discover the first SLCAN
port, or specify it when several devices are attached. The normal ECU connection
uses the other serial interface.

The `connect`, `read_packets`, `wait_for_packet`, and `status` tools support this
backend. PCAN remains the default when `--backend slcan` is omitted.

Configure the bus selection and bitrate in the ECU tune. Enable the appropriate
`canSnifferN_read` setting to capture traffic on that bus.

## Human Readable Protocol

A typical line in rusEFI human-readable protocol looks like:

`line:16:rpm,100,maf,3.3,`

Here `line` is a magic prefix, `16` is the length of the payload, and the payload `rpm,100,maf,3.3,` is a comma-separated list of keys and pairs, let's call this "a line of known length"

As for sending commands to rusEFI, there are two options

1. A plain unwrapped command, for example

    `rpm 800<end of line>`

2. A command with specified length (in this case the firmware can validate the command):

    `sec!7!rpm 400<end of line>`

    Pretty much same was as with data coming from rusEFI, we have a prefix `sec` and `7` for the payload length.

## Java Classes

Incoming data workflow:

The transport layer pushes data into EngineState.processNewData() which splits the data into keys and values, pushing this data into the primary listener for the specified key. The main listener is SensorCentral which keeps track of 'Sensor' values and listeners. Another interesting key-value consumer is MessagesCentral which takes care of all the human-readable messages which end up in the rusEFI tuner Messages UI.

Outgoing data flow:

CommandQueue is the class which takes care of sending commands, making sure a confirmation is received and re-trying outgoing data transfer if needed.

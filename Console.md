# rusEFI Console - Overview

rusEFI updater, previously known as rusEFI Console is a PC application to update rusEFI firmware and calibrations.

* If you don't already have the Dev Console, get it [🆕rusEFI_Universal_Updater🆕](https://rusefi.com/installer/rusEFI_Universal_Updater.exe)

At this point, the Console should be up and running. Play around with it and see what you can learn. Also note that it has some functionality as listed below.

* If used together with the built-in position sensor emulator, the console allows some level of testing on the bench, without a real engine or any additional hardware. The most useful feature is the plain signal sniffer - both real inputs and generated signals can go into it and this is actually quite handy. Another useful feature is the text log.
* You can use the console to invoke rusEFI commands and control the internal flow using the 'Messages Central' tab
![Messages Central](Images/rusEFI_console/messages_central.png)

## ChatGPT troubleshooting

The **Troubleshooting** tab is available in online Console sessions for acceptance
testing and is hidden in offline and log-viewer modes. It uses your ChatGPT plan
to inspect the connected ECU. Connect in Console, open the tab, choose
**Continue with ChatGPT** (or a saved account), select a model and describe the
problem. Sign-in opens your browser and identifies the app as **rusEFI Updater**.

Before account/chat controls appear, the panel checks and extracts the cached
source ZIP. If it needs downloading, click **Start Download** below the source
code prompt and wait for the progress bar to finish. The chat controls appear
only after successful validation and extraction. Failed downloads show an error
and allow retry; no download starts automatically when the cache needs refreshing.
Network downloads bypass stale CDN copies so a newly published source archive
can be retrieved immediately; a valid local cache is still reused without a request.

The assistant can read the firmware identity, discover datalog channel names,
descriptions and units from the connected ECU's INI,
read recent live values and inspect messages captured since the conversation
started. It can also search the downloaded firmware/wiki text and read relevant
line ranges. Your messages, requested ECU evidence and retrieved excerpts are
sent to OpenAI. The terminal shows each tool name while it runs. These tools
have read-only ECU access.

Channel descriptions use INI gauge titles or datalog labels. Output-channel
units take precedence over gauge units; missing, dynamic or conflicting units
are identified explicitly. The assistant does not guess units or evaluate tune
expressions during channel discovery.

For several live readings, the assistant can collect up to 32 channels together
with warning/error channels from one completed poll. Results include a shared
sample ID, timestamp and age so it can correlate the observations. A host poll
is not an atomic ECU measurement. Missing readings are explicitly unavailable;
recent/last error codes and counters can describe past events rather than active
faults. Numeric error codes require interpretation for the connected firmware.

The assistant can also read selected calibration fields directly from ECU RAM:
up to 32 scalar, enum/bitfield or small-array fields per request. It sends only
the selected values to OpenAI. Arrays are limited to 64 elements each and 512
values total; strings and Lua scripts are excluded. Results identify each field
and its read time, with explicit errors for unavailable or unsupported fields.
These sequential reads are separate from live samples and do not prove the
settings have been saved to flash. They do not change settings or use unsent
edits in the Console tune cache.

For Lua questions, the assistant can inspect bounded lines of the ECU's current
RAM script, with line citations and a source hash. This does not prove which
script is running in the Lua VM or saved in flash. It cannot edit or restart Lua.

For changing conditions, it can capture a short in-memory log of up to 16 live
channels and 20 samples over at most ten seconds. This is downsampled evidence,
not a complete high-rate recording. It can also observe the next Digital Sniffer
chart using the current settings, alongside the Console's own chart display.
Returned events and channel summaries are bounded and marked when partial.
The assistant does not enable or reconfigure acquisition. Stop cancels these
captures. Requested Lua source and capture evidence are sent to OpenAI.

Source/wiki citations identify a relative file path and line numbers. New
source archives include firmware-source, libfirmware and wiki revisions, local
edit flags, licenses and content hashes. Console validates the indexed files
before accepting a new archive; older archives report unknown revisions.
Wiki links use a pinned revision when clean metadata and the retrieved file
hash agree, otherwise they refer to current master. The ECU signature identifies
its INI schema, so source/firmware compatibility remains unverified.

Troubleshooting uses the normal Console bundle, Java runtime and native libraries.
Source text downloads on demand and is cached locally. No Git, Python or Gradle
installation is needed to use it. The archive includes subsystem guides, board
references, Lua examples, INI metadata and a searchable documentation index.

Use **Stop** to cancel a turn or **New conversation** to start over. Reconnecting
to an ECU starts a fresh conversation on the next Send. Authorization is saved
in `~/.rusefi/llm-access/accounts.json`; conversations remain in memory except
for explicitly exported cases.

Ask the assistant to **export a diagnostic case** to save findings, hypotheses,
next measurements and selected evidence as JSON in
`~/.rusefi/llm-access/diagnostic-cases/`. The terminal shows the saved file path.
Cases include the original selected tune readings, Lua excerpts, live-log/sniffer
results, messages and source passages with timestamps, hashes and partial-data
flags. They also record the Console build revision and the source revision/hash
metadata attached to the selected passages. They are bounded evidence, not full tune or log files. Analysis is labeled
as model-authored and source/ECU compatibility remains unverified. Credentials
are not included. Review the findings and ECU/Lua data before sharing a case.
A saved case remains on disk after clearing a conversation or signing out.

## Calibration fields

Dialogs, tables and curves with topic help show a **Help** button, including
inside nested panels. Click it to read the instructions in a scrollable popup;
web links open in your browser. The popup closes when you switch views. This
uses the ECU INI's `topicHelp` entry and is separate from individual field help.

Console dialogs can edit individual elements of a one-dimensional array defined
in the ECU's INI file. For example, `gearPositionVoltage[0]` selects the first
gear-voltage value. Each element has its own numeric editor; changing it leaves
the other array values unchanged.

Dialogs also display live, read-only values declared with `runtimeValue`, such
as gear sensor voltage and detected gear. These rows update while the dialog is
active and show `---` until a value is available. They honor the INI's enable
and visibility expressions alongside editable calibration fields.

## Keyboard shortcuts

Choose **Shortcuts** in the main menu bar (or press **F1**) to open the keyboard reference. The window is non-modal: leave it open while using the Console. Its text scrolls vertically and covers table selection/editing, commands, Lua editing, charts, menus, and logging. Click back in the Console before using its shortcuts. Press **Esc** in the reference window to close it.

Hover over buttons and command fields for shortcut hints. Some menus and buttons also show underlined shortcut letters when you press **Alt**, depending on the operating system. Shortcuts are currently fixed rather than configurable.

In tuning tables, use the arrow keys to move between cells and **Shift+arrows**
to extend the selection. **Enter** or **F2** starts editing the active value cell;
**Enter** accepts the value and **Esc** cancels. **Tab** and **Shift+Tab** accept
an edit and move to the next or previous value cell, wrapping between rows and
skipping the axis column. Invalid numbers remain in the editor until corrected
or cancelled. The active value cell's X and Y scale labels have a subtle
background highlight. Axis labels and read-only comparison tables cannot be edited.

With a value cell selected, the **mouse wheel over the grid** moves the active
cell up or down in the same column and keeps it visible. Movement stops at the
first and last rows. Wheel navigation is ignored while editing a cell.

## Connecting over CAN

By default, `use_canbus_connector=false` in `shared_io.properties` keeps direct
serial ECU discovery. Set it to `true` to probe every serial port as a potential
SLCAN adapter and also check PCAN for a responding rusEFI ECU. Both use 500 kbit/s.
PCAN requires its driver to be installed.

When exactly one ECU connection is found, the console uses its normal automatic
connection flow. SLCAN connections appear as `SLCAN:<serial port>` and PCAN as
`PCAN`. An adapter without a rusEFI response does not trigger auto-connect;
discovery retries so an ECU powered on later can be found. Use an SLCAN adapter
connected to the ECU's CAN wiring; the ECU's secondary USB sniffer port alone
does not establish a CAN tuning connection.

## Gauges

Use **Grid Size** to choose the number of rows and columns. Right-click a gauge
to change its selection or switch to live graphs.

**Save Layout...** saves the visible grid to a `.gauges` file, including gauge
selections, graph mode, refresh periods, and scale settings. **Load Layout...**
replaces the current grid with a saved layout. The loaded layout is also kept
in Console preferences for the next session. Gauge names refer to definitions
in the connected ECU's firmware INI, so use a layout with compatible firmware.
Detached gauge windows are managed separately and are not included in the file.

![Console Gauges](Images/rusEFI_console/java_console_1.png)

## Configuration errors

When the Config Error indicator is active, the console retrieves the ECU's explanation and displays it in an overlay on any tab. Click Close to dismiss the overlay and correct the tune. Closing it does not clear the ECU error. The same message stays dismissed until the error clears and returns or the ECU reconnects; a different error message is displayed again.

## Digital Chart

![Log Viewer](Images/rusEFI_console/log_viewer.png)

The green line is the border of an engine cycle. Please note that the angle within the current engine cycle is displayed in the bottom left corner - the angle is from 0 to 720 in case of a four stroke engine.

The red line is the absolute time scale - one line every 20 ms.

## Binary logging

Use **Binary Logging > Start** to choose a `.mlg` data log and **Stop** to finish recording. **Ctrl+S** in the main Console window toggles these actions: it opens the file chooser when idle, stops recording when active, or cancels a pending tune capture. Starting requires an ECU connection. Ctrl+S controls logging; use **File > Save Tune** to save a tune.

The **Save tune** checkbox beside Start/Stop is checked by default. When checked, the console reads a fresh ECU tune before recording and saves it in the same folder as the data log, using the computer's local date: `YYYY-MM-DD.msq`. An unchanged tune reuses the existing file; changed tunes use `_1`, `_2`, and so on. Existing tune files are preserved. Uncheck **Save tune** before starting to record only the data log.

The same MSQ is also embedded inside the `.mlg` file using TunerStudio's starting-tune format, so sharing the log includes its tune. The ECU MCP tool `extract_tune_from_log` can recover it as an `.msq` without an ECU connection or INI file. It also reads tunes embedded by TunerStudio. Unchecking **Save tune** disables both the embedded tune and the separate MSQ snapshot.

Tune capture runs in the background. Stop or disconnect cancels a pending start. If the tune cannot be read or saved, the console reports the error and does not start data logging. The snapshot represents the tune at recording start; later tune edits are captured when the next recording starts.

## SLCAN Sniffer

The universal updater automatically shows the **SLCAN Sniffer** tab when the connected
ECU's firmware INI advertises CAN sniffer support. Open the tab to scan for the second
USB serial port and view CAN traffic. The tab updates when you disconnect or change boards.
Boards need firmware and a matching INI with CAN sniffer support enabled.

### MCP capture through the built-in sniffer

The CAN MCP server can capture the same traffic through the secondary USB serial port:

```sh
java -jar java_console/mcp_can/build/libs/mcp_can-all.jar --backend slcan --port /dev/ttyACM1
```

Use a port such as `COM5` on Windows. Omit `--port` to discover the first SLCAN port;
use an explicit port when multiple ECUs are attached. Close the SLCAN tab before letting
MCP open that port. The normal ECU console connection uses the other serial interface.

Build with `./gradlew :mcp_can:fatJar` from the rusEFI repository root. The existing
`connect`, `read_packets`, `wait_for_packet`, and `status` tools work with SLCAN.
PCAN remains the default backend when `--backend slcan` is omitted.

Configure bus selection and bitrate in the ECU tune. Enable `canSnifferN_read` to capture

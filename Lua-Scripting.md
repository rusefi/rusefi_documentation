# Lua Scripting

TL,DR: Launch rusEFI Console and click on the Lua tab. Use Lua for online scripting. The most popular use case is CAN bus integration.

## Introduction

rusEFI strives to offer users as much flexibility as possible, to provide a completely user-defined control strategy for both primary and auxiliary actuators. It's strongly advised to use boards powered by a F7 to unleash the full power of [Lua](https://www.lua.org/).

## Basics

rusEFI provides a number of hooks to interface with the firmware, manipulate its state, and read/write the current configuration.

- [Hooks for CAN bus communications](#can-bus).
- [Inputs from sensors can be read directly](#input). [You can also produce sensor values](#set-sensor-value) with Lua.
- [ECU general purpose outputs](#output).
- [Aspects of the engine can be controlled directly](#engine-control).
- ECU Configurations can be accessed (read/write) via the [`getCalibration()`](#getcalibrationname) hook, and manipulated via the [`setCalibration()`](#setcalibrationname-value-needevent) hook.
  - Configuration names are dynamically updated to match the current firmware; see here for the current list: [https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/value_lookup_generated.md](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/value_lookup_generated.md).
- ECU internal state, i.e. logic outputs from the firmware can be read via the universal [`getOutput()`](#getoutputname) hook, and some can be altered via the corresponding hooks, i.e. `setOutputName()` where `OutputName` is name of the output, e.g. [`setClutchUpState()`](#setclutchupstatevalue). See also: [Output](#output).
  - Output names are dynamically updated to match the current firmware; see here for the current list: [https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/output_lookup_generated.cpp](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/output_lookup_generated.cpp).
- Hooks to read values from SENT sensors; see [SENT protocol](#sent-protocol).
- A set of useful routines is provided; see [Utility](#utility).

Some example uses are provided in [Examples](#examples).

## Conventions

- The Lua interpreter will trigger an error if there is a mistake in the program; check the rusEFI console to see errors and script output.
- Unless otherwise mentioned, all `index` parameters start with the first element at index 0.

## Installing a Script

Lua scripts are written and loaded from the **rusEFI console**, not from TunerStudio - TunerStudio's own
Lua pages say so directly: *"Use rusEFI console for Lua script editing"*. If you do not have the console
yet, see [Console](Console).

1. **Connect the console to the ECU and open the `Lua Scripting` tab.**
   It has the script editor on the left, a live message pane on the right, and a row of buttons along the
   top.

2. **Type or paste your script into the editor.**
   How much room you have depends on the board - 8000 bytes on most, but a good deal more on some, up to
   48000 on Proteus F7 and uaEFI Pro. Rather than guess, read the `used/limit` counter under the editor:
   it reports the real limit for whatever board you are connected to. While connected the editor also
   refuses input past that limit and beeps, instead of truncating silently. Scripts are sent as plain
   ASCII, so avoid accented characters and other non-ASCII symbols even inside comments and strings.

3. **Press `Write to ECU`.**
   This sends the script to the ECU *and* restarts the Lua interpreter, so your script begins running
   straight away. Nothing has been written to flash yet.

4. **Watch the message pane.**
   `LUA script loaded successfully!` means it is running. Anything your script prints appears there with
   a `LUA:` prefix. A printed message containing `BEEP` also makes the console beep, which is useful when
   you are under the car and cannot see the screen.

   > **Warning:** `print()` is for occasional diagnostics, not a data channel. Each message is cut at
   > 245 characters, only 24 messages can be queued at a time and anything beyond that is dropped
   > without notice. Printing on every `onTick()` at 200 Hz will lose lines and load the ECU for
   > nothing - see [`print(msg)`](#printmsg) for the exact limits.

5. **Press `Burn to ECU` when you are happy with it.**
   This stores the configuration, including your script, in the ECU so that it runs again at the next
   boot. Power-cycle the ECU and confirm the script still runs before you rely on it.

Burning does **not** reload the interpreter on its own. The restart that happens during `Write to ECU` is
what puts a new script into effect.

### When a script does not run

A script that fails to load prints `LUA ERROR loading script:` followed by the Lua error message, and the
interpreter then **stops and waits** - it does not keep retrying. Fix the script and press `Write to ECU`
again, or use `More... -> Reset Lua`.

Every restart also clears whatever the previous run had set: the tick rate returns to 200hz and the
adjustments such as [`setTimingAdd()`](#settimingaddangle) and [`setFuelMult()`](#setfuelmultcoeff) go
back to their defaults. Set those at the top level of your script rather than once inside a condition.

## Writing Your Script

The entire Lua script is read at startup, then a script function called `onTick` is called periodically by rusEFI.

Here is a simple script you can run to illustrate this behavior:

``` lua
print('Hello Lua startup!')

function onTick()
    print('Hello onTick()')
end
```

### Controlling the Tick Rate

The function `setTickRate(hz)` can be used to configure how often rusEFI calls the `onTick` function. If your script does a lot of work in the `onTick()` function it may run slower than the desired rate. Since the Lua virtual machine runs at low priority compared to other functions of the ECU, it is impossible to swamp the ECU with too much Lua work, so set the tick rate to whatever is necessary. `onCanRx` runs at the same rate as `onTick`

``` lua
n = 0
setTickRate(5) --set tick rate to 5hz
function onTick()
    print('Hello Lua: ' ..n)
    n = n + 1
end
```

### Editing Scripts

To ease editing a Lua script, an editor that supports Language Server Protocol (LSP) is highly recommended.
For an option see [LuaLS/lua-language-server](https://github.com/LuaLS/lua-language-server#install)

#### Keeping the script in your own files

The console editor understands two comment directives that let you keep the real script on disk and pull
it back in. Point the console at the folder holding those files with `More... -> Select Working Folder`.

| Directive | What it does |
| --- | --- |
| `-- scriptname NAME` | Names the file this script came from. `More...` then offers `Reload NAME`, which re-reads it from the working folder. |
| `-- include NAME` ... `-- endinclude` | When the script is reloaded, everything between the two markers is replaced with the current contents of `NAME`. Put shared helpers in their own file and include them. |

``` lua
-- scriptname my-dash.lua

-- include can-helpers.lua
-- endinclude

function onTick()
  sendDashFrame()
end
```

Two things to know before using `Reload`:

- **It is not a read-only operation.** `Reload` assembles the file plus its includes, puts the result in
  the editor, and then does exactly what `Write to ECU` does - it sends the script and restarts the
  interpreter. Do not click it on a running engine expecting only to look at the file.
- Because the assembled text lands *in the editor*, the size limit applies to what you end up seeing
  there, includes and all. If the result does not fit, the editor is replaced by a message saying so and
  nothing is sent.

Every `-- include` needs a matching `-- endinclude`. Without one the menu item fails and simply appears to
do nothing.

`More... -> Format Script` re-indents whatever is currently in the editor.

## Hooks/Function Reference

### User Settings

#### `getOutput(name)`

For example `getOutput("clutchUpState")` or `getOutput("brakePedalState")`

See [https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/output_lookup_generated.cpp](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/output_lookup_generated.cpp) for output names.

#### `setClutchUpState(value)`

#### `setBrakePedalState(value)`

Use `setBrakePedalState` to tell rusEFI about a CAN-based brake pedal.

#### `setAcRequestState(value)`

Use `setAcRequestState` to tell rusEFI about a CAN-based A/C request.

#### `setEtbDisabled(value)`

#### `setIgnDisabled(value)`

Use `setIgnDisabled` for all kinds of cranking safety systems.

#### `setAcDisabled(value)`

Disable/suppress A/C functionality regardless of how it is enabled.

#### `getTimeSinceAcToggleMs()`

#### `getCalibration(name)`

Gets current calibration value for a specified scalar setting. For example: `getCalibration("cranking.rpm")`

For complete list of possible calibration names (valid parameter values) and descriptions, see [the generated lookup table](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/generated/value_lookup_generated.md).

#### `setCalibration(name, value, needEvent)`

Sets the specified calibration setting to the specified value. Fires a calibration change event depending on the needEvent parameter.

For example: `setCalibration("cranking.rpm", 900, false)`

#### `burnconfig`

Schedule a calibration write to flash once the engine is stopped.

#### `findSetting(name, defaultValue)`

Find the User Setting with the specified name and returns the numeric value. Useful when the script developer and script consumer are
different people; also useful while Lua script editing is available only in TS.

- Parameters
  - `name`: Variable name, as in corresponding 'name' field in configuration
  - `defaultValue`: value to use if specified setting not located by name

### `isFirmwareError`

Returns true if the ECU is in state of critical/fatal error.

### Engine Control

### `startCrankingEngine()`

Start cranking as if a physical start button was tapped.

#### `stopEngine()`

#### `isEngineStopRequested()`

Returns true if engine stop was requested by either Lua or a start/stop button within the last five seconds.

#### setLaunchTrigger

#### `setSparkSkipRatio(ratio)`

`setSparkSkipRatio(0)` woild skip 0% of the ignition events, i.e. no skipping
`setSparkSkipRatio(0.5)` would skip half of ignition events. We never skip two consecutive ignitions.

This could be used for torque reduction.

#### `setSparkHardSkipRatio(ratio)`

`setSparkHardSkipRatio(0)` to skip 0% of the ignition events, i.e. no skipping
`setSparkHardSkipRatio(0.75)` would skip 75% of ignition events.

#### `setIdleAdd(percent)`

Percent to add to idle (incl. open loop).

#### `setFuelAdd(amount)`

Fuel mass in grams added to each injection. Applied after [`setFuelMult()`](#setfuelmultcoeff) has scaled the base mass, so it is not itself scaled by that multiplier; initially 0.

#### `setFuelMult(coeff)`

Scales the base injected fuel mass; initially 1.0.

#### `setBoostTargetAdd(amount)`

Additive for closed loop target boost pressure.

#### `setBoostTargetMult(coeff)`

Multiplier for closed loop target boost pressure.

#### `setBoostDutyAdd(amount)`

Additive for open loop target boost pressure.

#### `setTimingAdd(angle)`

Use negative values to retard timing.

#### `setTimingMult(coeff)`

This could be used for torque reduction.

#### `setEtbAdd(percent)`

Amount of ETB to add, as a percent of the wide-open value: e.g. `10` for +10%. The value is a static amount to add to
the determined value, e.g. TPS of 5% w/ `10` results in 15% ETB.

This could be used for torque reduction.

### Timer

`yourTimer = Timer.new();` to have a new variable of Timer type

#### reset

`yourTimer:reset();` to reset timer

#### getElapsedSeconds

`yourTimer:getElapsedSeconds();` to get number of seconds since timer was reset

#### getTsButtonCount

`getTsButtonCount X` returns number of times specific Lua button was pressed in TS

See ts-button-example.lua

### CAN bus

#### `enableCanTx(isEnabled)`

Enabled by default

Use enableCanTx(false) to suppress CAN TX

#### `txCan(bus, ID, isExt, payload)`

- Parameters
  - bus: hardware CAN bus index, only '1' on most rusEFI boards, '1' or '2' on Proteus, '1-2-3' on uaCanBridge and purple gateway
  - isExt: 0 for 11 bit mode

#### `canRxAdd(id)`

#### `canRxAdd(bus, id)`

#### `canRxAdd(id, callback)`

#### `canRxAdd(bus, id, callback)`

#### `canRxAddMask(id, mask)`

#### `canRxAddMask(bus, id, mask)`

#### `canRxAddMask(id, mask, callback)`

#### `canRxAddMask(bus, id, mask, callback)`

- Parameters
  - id: CAN ID to listen to.
  - mask: Apply a mask to the received ID before comparing to the `id` parameter. For example, passing an id of `3` and mask of 0xFF will match any frame whose last 8 bits match `3`. If omitted, no masking is applied before comparison, so only a single CAN ID will be received. Use the mask to subscribe to multiple messages with similar IDs with a single call to `canRxAddMask`.
  - bus: Hardware CAN bus index, only '1' on most rusEFI boards, '1' or '2' on Proteus. If this parameter is omitted, messages will be received from any bus.
  - callback: A the callback function to call when the specified ID is received. If this parameter is not passed, the default function `onCanRx` will be used.

Your CAN RX callback should look like this:

``` lua
function onCanRx(bus, id, dlc, data)
    -- Do things with CAN data!
end
```

By the way see [luaCanRxWorkaround](luaCanRxWorkaround) for high performance RX trick.

### SENT protocol

#### `getSentValue(index)`

#### `getSentValues(index)`

### PID

deltaTime is measured automatically between current and previous "pid:get" invocation.

``` lua
-- p, i, d, min, max
pid = Pid.new(2, 0, 0, -100, 100)
pid:setOffset(0.3)
pid:get(target, input)
pid:reset()

-- p, i, d, min, max
industrialPid = IndustrialPid.new(2, 0, 0, -100, 100)
industrialPid:setOffset(0.3)
industrialPid:setDerivativeFilterLoss(0.3)
industrialPid:setAntiwindupFreq(0.3)
industrialPid:get(target, input)
industrialPid:reset()

```

### Utility

#### `print(msg)`

Print a line of text to the ECU's log.

- Parameters
  - `msg`: The message to print. Pass a string or number and it will be printed to the log.
- Returns
  - none

**Limits and warnings**

- **Message length: 245 characters.** Each `print()` becomes one 256-byte log line that also carries
  the `LUA:` prefix and protocol framing. A longer message is **truncated** to fit - it is never split
  over several lines. Build long messages in pieces and print them one at a time.
- **Queue depth: 24 messages.** Lines wait in a small pool of buffers until a background thread copies
  them to the console output. When the pool is exhausted, further `print()` calls are **silently
  dropped** - `print()` never blocks your script, and you get no error.
- **Console output buffer: 6500 bytes** between two reads by TunerStudio / the rusEFI console. Text
  that does not fit is lost until the next read.
- **Rate.** `onTick()` runs at 200 Hz by default, so an unconditional `print()` inside it produces far
  more text than the link can carry; most of it is dropped and the ECU spends time formatting text
  nobody sees. Print on a change, on a counter (e.g. every 200th tick), or from a lower `setTickRate()`.
- Older firmware (before the fix for [#10159](https://github.com/rusefi/rusefi/issues/10159)) could
  **reboot the ECU** when flooded with over-length `print()` messages. If your ECU resets while a
  script prints heavily, update the firmware and shorten / rate-limit the prints.

#### `vin(index)`

Return VIN setting character at specified index

- Parameters
  - index: zero-based index

#### Usage example

Program:

``` lua
n = 5.5
print('Hello Lua, number is: ' ..n)
```

Output:
`Hello Lua, number is 5.5`

#### `setTickRate(hz)`

Sets the rate at which rusEFI calls your `onTick` and `onCanRx` functions, in hz. On reset default is 200hz.

- Parameters
  - `hz`: Desired tick rate, in hz. Values passed will be clamped to a minimum of 1hz, and maximum of 2000hz. Above 150hz the firmware logs a recommendation to enable `luaCanRxWorkaround` - see [luaCanRxWorkaround](luaCanRxWorkaround).
- Returns
  - none

#### `mcu_standby()`

Puts MCU into standby low current consumption mode.

Only built on boards that define `LUA_STM32_STANDBY` - it depends on the board leaving PA0 free. On any
other board the function does not exist, so calling it stops the script with "attempt to call a nil value".

Calling it within the first three seconds after boot raises a critical error instead of entering standby.

#### `interpolate(x1, y1, x2, y2, x)`

Interpolates `x` placing it on the line defined by (x1, y1) and (x2, y2)

#### `findTableIndex(name)`

Find table index by specified human-readable name.

#### `table3d(tableIdx, x, y)`

Looks up a value from the specified Script Table.

- Parameters
  - `tableIdx`: Index of the table to use. Currently 4 tables are supported, so indices 1, 2, 3, and 4 are valid.
  - `x`: X-axis value to look up in the table (this is often RPM)
  - `y`: Y-axis value to look up in the table (this is often load)
- Returns
  - A number representing the value looked up from the table.

#### `findCurveIndex(name)`

Finds curve index by specific curve name

#### `curve(curveIdx, x)`

Looks up a value from the specified Script Curve.

- Parameters
  - `curveIdx`: Index of the curve to use, 1 through 6. An out-of-range index silently returns Script Curve #1 - it is not an error and does not return nil.
  - `x`: Axis value to look up in the table

### Input

#### `getSensor(name)`

Reads the specified sensor. For instance ``getSensor("AcceleratorPedal")``

- Parameters
  - `name`: Name of the sensor to read. [A list of sensor names can be found here.](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/sensors/sensor_type.h)
- Returns
  - A reading from the sensor, or `nil` if the sensor has a problem or isn't configured.

#### `getSensorByIndex(index)`

Reads the specified sensor.

- Parameters
  - `index`: Index of the sensor to read. [A list of sensor indices can be found here.](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/sensors/sensor_type.h)
- Returns
  - A reading from the sensor, or `nil` if the sensor has a problem or isn't configured.

#### `getSensorRaw(index)`

Reads the raw value from the specified sensor. For most sensors, this means the analog voltage on the relevant input pin.

- Parameters
  - `index`: Index of the sensor to read. [A list of sensor indices can be found here.](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/sensors/sensor_type.h)
- Returns
  - The raw value that yielded the sensor reading, or 0 if the sensor doesn't support raw readings, isn't configured, or has failed.

#### `getAuxAnalog(index)`

More or less like getSensorRaw but always voltage of aux analog input.

- Parameters
  - `index`: Index of aux analog sensor to read. From 0 to 7. The index is not range-checked - 8 and above read the Lua gauges instead, which is not an error and does not return nil.
- Returns
  - Voltage of sensor reading, or nil if sensor isn't configured.

#### `hasSensor(index)`

Checks whether a particular sensor is configured (whether it is currently valid or not).

- Parameters
  - `index`: Index of the sensor to check. [A list of sensor indices can be found here.](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/sensors/sensor_type.h)
- Returns
  - A boolean value, `true` if the sensor is configured, and `false` if not.

#### `getDigital(index)`

Reads one of the driver switches tracked by the firmware, which is not the same as reading a pin. Where a physical pin is configured for that switch the pin is used; where one is not, the state is whatever Lua or the rest of the firmware last set (see [`setClutchUpState()`](#setclutchupstatevalue)). To read a pin directly see [`getAuxDigital()`](#getauxdigitalindex).

- Parameters
  - `index`: The index of the switch to read. See table below for values.
- Returns
  - A boolean value representing the state of the switch, or `nil` if `index` is not one of the values below.

Valid `index` parameter values:

| Index | Channel Name |
| --- | ---:|
| 0 | Clutch down switch |
| 1 | Clutch up switch |
| 2 | Brake switch |
| 3 | AC switch |

#### `getAuxDigital(index)`

Reads a digital input from the configurable list.

- Parameters
  - `index`: The index of the digital pin to read. Valid values are 0 through 7, one for each of the 8 user-defined digital pins. See "Lua Digital Aux Inputs" table under "Advanced" settings tab.
- Returns
  - A boolean value representing the state of the input pin. `true` = high voltage (above ~2 volts), `false` = low voltage (below ~3 volts)

#### `readPin(pinName)`

Reads physical value of arbitrary MCU pin in case of emergency. Not a proper way to implement proper logic, use Lua aux inputs.

- Parameters
  - `pinName`: string name of MCU pin, for examples "PD15"

### Output

Not to be confused with internal logic 'Live View'/Log data points/gauges 'outputs'. Not to be confused with GPPWM feature.

#### `selfStimulateRPM(rpm)`

Positive value would start clicking injectors at specified RPM, zero value would stop self-stimulation.

#### `startPwm(index, frequency, duty)`

Initializes PWM on the specified index, starting at the specified frequency and duty cycle. The index selects which config field pin to use, see "Lua PWM Outputs" page in TunerStudio.

- Parameters
  - `index`: The index of the PWM channel to start. Valid values are 0 through 7, one for each of the 8 channels.
  - `frequency`: Initial frequency of the output, in hertz (cycles per second). Valid values are between 1 and 1000hz.
  - `duty`: Initial duty cycle of the output. `0.0` = fully off, and `1.0` = fully on. `0.25` = on 25% of the time, off 75% of the time.
- Returns
  - none

#### `setPwmDuty(index, duty)`

Set the duty cycle of the specified PWM channel.

- Parameters
  - `index`: The index of the PWM channel to set. Valid values are 0 through 7, one for each of the 8 channels.
  - `duty`: Desired duty cycle of the output. `0.0` = fully off, and `1.0` = fully on. `0.25` = on 25% of the time, off 75% of the time.
- Returns
  - none

#### `setPwmFreq(index, frequency)`

- Parameters
  - `index`: The index of the PWM channel to set.
  - `frequency`: Initial frequency of the output, in hertz (cycles per second). Valid values are between 1 and 1000hz.
- Returns
  - none

#### `getGpPwm(index)`

Gets current PWM of GPPWM by index

- Parameters
  - `index`: The index of the PWM channel to set. Valid values are 0 through 3.
- Returns
  - PWM percent, 0 to 100

#### `setLuaGauge(index, value)`

In an ideal world one would be using Sensor.new("LuaGauge1") but looks like that's not the way at the moment :(

- Parameters
  - `index`: The index of the Lua gauge to set. Valid indices are from '1' to '8'.
  - `value`: Desired gauge value.
- Returns
  - none

#### `setDacVoltage(index, value)`

Not enabled on most boards since most boards were not developer with DAC in mind! See https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/dac.txt for more info.

### Additional Hooks

Registered by the firmware but not covered above. A few are not built on every board; where that is the
case the row says so.

#### Engine and vehicle state

| Function | Behaviour |
| --- | --- |
| `getEngineState()` | `0` stopped, `1` cranking or spinning up, `2` running. |
| `getAirmass()` / `getAirmass(mode)` | Cylinder airmass from the configured airmass model, or from the model given by `mode`: `0` speed density, `1` real MAF, `2` alpha-N, `3` Lua. Any other value is a fatal firmware error, not a `nil`. |
| `setAirmass(mass, loadPercent)` | Feeds the Lua airmass model, used when the fuel algorithm is set to Lua. Clamped to 0-10 g and 0-1000 percent. |
| `getTorque()` | Looks up the torque table at current RPM and TPS. Not built on STM32F4. |
| `setEngineTorque(nm)` | Publishes a torque estimate for other logic and for logging. Not built on STM32F4. |
| `getTimeSinceTriggerEventMs()` | Milliseconds since the last *crank* trigger event. Cam events do not reset it, so on a crank sensor failure this keeps growing while the cam still pulses. Not built where `WITH_LUA_STOP_ENGINE` is off, which today means uaEFI and hellen121vag. |
| `secondsSinceTsActivity()` | Seconds since TunerStudio or the console last requested data - use it to tell whether a laptop is connected. The reading saturates around 1070 seconds on STM32, so a threshold above that never fires. |
| `getGlobalConfigurationVersion()` | Increments whenever the tune changes, so a script can notice an edit made underneath it. |

#### Fuel consumption

Built only where the board has vehicle speed support, the odometer module, and `WITH_LUA_CONSUMPTION`
left on - the last of which is off on uaEFI and hellen121vag.

| Function | Behaviour |
| --- | --- |
| `getConsumedGrams()` | Whole grams of fuel consumed this trip. |
| `getConsumedGramsRemainder()` | The fractional part, for when whole grams move too slowly to watch. |
| `getConsumptionGramPerSecond()` | Current consumption rate. |
| `resetOdometer()` | Resets the whole trip odometer - not just fuel, but also trip distance and the engine-running and ignition-on timers. |

#### More CAN bus

| Function | Behaviour |
| --- | --- |
| `txCan(ID, payload)` | Short form of [`txCan()`](#txcanbus-id-isext-payload) - first bus, 11 bit ID. |
| `canSetBaud(bus, baud)` | Changes a bus baud rate at runtime. `baud` is in bits per second and must be one of 33000, 50000, 83000, 100000, 125000, 250000, 500000, 666000 or 1000000; anything else raises a Lua error. |
| `canSetListenMode(bus, isListenOnly)` | Puts a bus into listen-only mode, where it neither transmits nor acknowledges. Reversible, and overrides the configured setting until reboot. |
| `getCanBaudRate(bus)` | The configured baud *setting* for bus 1 or 2, as its dropdown position - not a bits-per-second figure, so it cannot be fed straight back into `canSetBaud`. Not built on STM32F4. |
| `getCanRxDropped()` | Count of received frames dropped because the queue overflowed - the number to watch when raising the tick rate. Not built on STM32F4. |
| `disableExtendedCanBroadcast()` | Turns off the board-statistics frames (the "Send out board statistics" setting) and, where CAN serial is built, the CAN console announcement - so this can drop a TunerStudio-over-CAN link. It does not affect the dash output or the verbose broadcast. Not built on STM32F4. |
| `enableCanRxWorkaround()` | Turns on [luaCanRxWorkaround](luaCanRxWorkaround) from the script instead of from TunerStudio. The script **must** also define `global_can_data` as described there - without it the first matching frame raises a critical error. This writes a configuration bit, so a later burn makes it permanent. |
| `crc8_j1850(payload, length)` | SAE J1850 CRC8 over the first `length` bytes, for building frames that carry that checksum. |

#### More engine control

| Function | Behaviour |
| --- | --- |
| `setIdleRpm(rpm)` | Overwrites the coolant-versus-idle-RPM curve *in the tune* with a flat line at `rpm`. Unlike the `...Add` adjustments beside it this is not a transient override: the original curve is gone, and a later burn writes the flat one to flash. |
| `setEwgAdd(percent)` | Electronic wastegate position adjustment, the wastegate counterpart of [`setEtbAdd()`](#setetbaddpercent). |
| `setFuelDisabled(value)` | Full fuel cut. |
| `setDfcoDisabled(value)` | Suppresses deceleration fuel cut-off. |
| `setClutchDownState(value)` | Clutch-down switch state, the counterpart of [`setClutchUpState()`](#setclutchupstatevalue). |
| `setTorqueReductionState(value)` | Torque reduction / flat shift trigger. |
| `setRollingIdleTrigger(value)` | Antilag trigger state. Takes a **number**, not a boolean - passing `true` raises "number expected". Only read when the antilag activation mode is set to Lua. |
| `restartEtb()` | Re-runs electronic throttle initialisation, so a Lua-fed pedal sensor can come up after the throttle has already started. |

#### Reading back firmware outputs

| Function | Behaviour |
| --- | --- |
| `getFan()` / `getFan2()` | Logic state of the fan relay outputs. |
| `getAcRelay()` | Logic state of the A/C relay output. |
| `getEtbTarget()` | Current electronic throttle target. |
| `hellenEnablePower()` / `hellenDisablePower()` | Main-relay style power control, on Hellen hardware only. Disabling first unmounts the SD card, which can block the Lua thread for up to a second - do not call it from a plain `onTick()` path. |

#### More Sensor methods

Both apply to a sensor created with `Sensor.new()`, see [Set Sensor Value](#set-sensor-value).

| Method | Behaviour |
| --- | --- |
| `yourSensor:invalidate()` | Marks the sensor invalid immediately, without waiting for its timeout. |
| `yourSensor:setRedundant(value)` | Declares the sensor redundant. This is what the electronic throttle checks before it will run, so marking a single Lua-fed pedal redundant lets drive-by-wire operate with no real second sensor. Understand the consequences before using it. |

#### Filtering and debouncing

Both classes are built alongside `Pid`, so they are absent where `WITH_LUA_PID` is off - today uaEFI
and hellen121vag.

| Class | Behaviour |
| --- | --- |
| `Biquad` | `yourFilter = Biquad.new()`, then `yourFilter:configureLowpass(sampleRateHz, cutoffHz)` and `yourFilter:filter(x)`. A low-pass filter for a noisy input. Pass your tick rate as the sample rate. The first sample primes the filter rather than ramping up from zero. |
| `SignalDebounce` | `yourDebounce = SignalDebounce.new(seconds)`, then `yourDebounce:set(rawBool)` every tick and `yourDebounce:get()` for the settled value. Works with any signal, not just a pin. Note the *first* change of state is accepted immediately - the hold time only applies from then on. |

``` lua
rpmFilter = Biquad.new()
rpmFilter:configureLowpass(50, 2)  -- 50hz tick rate, 2hz cutoff
brake = SignalDebounce.new(0.05)   -- 50ms hold, after the first transition

setTickRate(50)

function onTick()
  smoothRpm = rpmFilter:filter(getSensor("RPM"))
  brake:set(getDigital(2))
  if brake:get() then
    setIdleAdd(5)
  end
end
```

#### More utility

| Function | Behaviour |
| --- | --- |
| `random()` | A number from 0 to 1. The generator is seeded identically at every boot, so the sequence repeats - fine for dither, not for anything that has to be unpredictable. |

## Misc console commands

Type these into the command box at the top of the `Lua Scripting` tab, or anywhere else the console takes
commands.

| Command | Effect |
| --- | --- |
| `lua <code>` | Runs a fragment of Lua inside the *running* interpreter, so it can see your script's variables. It executes on the next tick. The console splits the command line on spaces, so the code has to contain none: `lua print(rpm)` works, `lua x = 5` does not. |
| `luareset` | Restarts the interpreter and runs your script again from the top. |
| `luamemory` | Prints the worst-case script duration since you last asked, CAN RX totals and drops, the last cycle time, and Lua heap usage. |
| `lua_button <index>` | Simulates a press of TunerStudio Lua button 1 to 10, so button handlers can be developed without TunerStudio open. |
| `luabench2 <index> <onMs> <offMs> <count>` | Pulses one Lua output pin. `index` counts from 1. |
| `set_lua_setting <index> <value>` | Sets one of the Lua Script Settings without going through TunerStudio. Here `index` counts from **0**, so 0 to 7. It is not bounds-checked, and a value outside that range writes over unrelated configuration - so do not use one. |

## Examples

Read VSS from CAN bus for gear detection see [honda-bcm.txt](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/honda-bcm.txt)

### Timer Example

``` lua
t = Timer.new();
timingAdd = 0;

function onTick()
   auxV = getAuxAnalog(0)
   tps = getSensor("TPS")
-- todo: check for NIL value which is a sign of analog input not assigned in TS
   if auxV > 2 then
     t:reset();
   end

   val = t:getElapsedSeconds();

   if t:getElapsedSeconds() < 3 then
     timingAdd = 10;
   else
     timingAdd = 0;
   end
   setTimingAdd(timingAdd)


   print('Hello analog ' .. auxV .. " " .. val)
end
```

### PWM

``` lua
-- index 0, 100Hz, zero duty initially
startPwm(0, 100, 0)

function onTick()
 enable_pump = getSensor("RPM") > 700 and getSensor("BatteryVoltage") > 13 and getSensor("VehicleSpeed") <60
 
 -- lua does not have ternary ? : operator, this here means "1 if enable_pump and 0 otherwise"
 setPwmDuty(0, enable_pump and 1 or 0)

end
```

### CAN Transmit

``` lua
function onTick()
  tps = getSensor("CLT")
  print('TPS ' .. tps)
  voltage0 = getSensor("aux0")
 
  txPayload = {}
  -- first byte: converted to int
  txPayload[1] = math.floor(((voltage0/256) - math.floor(voltage0/256))*256)
  -- second byte: converted to int
  txPayload[2] = math.floor(voltage0 / 256)

  txCan(1, 0x600, 1, txPayload)

end
```

### Set Sensor Value

 [A list of sensor names can be found here.](https://github.com/rusefi/rusefi/blob/master/firmware/controllers/sensors/sensor_type.h)

``` lua
-- make sure physical input is NOT configured to avoid 'one was already registered' conflict
vssSensor = Sensor.new("VehicleSpeed")
-- any value would be considered valid for three seconds
vssSensor:setTimeout(3000)
function onTick()
 injectedVssValue = 123.4;
 vssSensor : set(injectedVssValue)
 -- here we would read the value we have just injected into the sensor. 
 valFromSensor = getSensor("VehicleSpeed")
        -- we expect output to be "VSS 123.4"
 print ("VSS " .. valFromSensor)
end


```

See also https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/honda-bcm.txt and https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/ford-focus-ii-pps.txt

### CAN receive

``` lua
canRxAdd(0x500)
canRxAdd(0x570)
function onCanRx(bus, id, dlc, data)
 print('got CAN id=' ..id ..' dlc=' ..dlc)
 if id == 0x500 then
  -- Check can state of BCM
  canState = data[1]
 end
 if id == 0x570 then
  mcu_standby()
 end
end
```

``` lua
function decimalToHex(num)
 if num == 0 then
  return '0'
 end

 local hexstr = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "A", "B", "C", "D", "E", "F" }
 local result = ""
 while num > 0 do
  local n = num % 16
  result = hexstr[n + 1] ..result
  num = math.floor(num / 16)
 end
 return result
end



function print_array(arr)
 local str = ""
 local index = 1
 while arr[index] ~= nil do
  str = str.." "..decimalToHex(arr[index])
  index = index + 1
 end
 return str
end
```

### Table

``` lua
tableIndex = findTableIndex("duty")

TurbochargerSpeed = getSensor("TurbochargerSpeed")
tps = getSensor("Tps1")

dutyCycle = table3d(tableIndex, TurbochargerSpeed, tps)

sparkCutCurve = findCurveIndex("sparkcut")
sparkCutByTorque = curve(sparkCutCurve, torquex)

```

## See Also

### BMW iDrive

See <https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/bmw-idrive.txt>

More examples at <https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/examples/>

See also a library for CAN data manipulation <https://github.com/rusefi/rusefi/blob/master/firmware/controllers/lua/lua_lib.h>

See also test driven development approach <https://github.com/rusefi/rusefi/tree/master/unit_tests/tests/lua>

[Lua Ternary Operator](http://lua-users.org/wiki/TernaryOperator)

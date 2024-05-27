# Start Here

    **This page is intended to help ease a new user into the world of rusEFI**

## First things first

It is important for a new user to understand some things about rusEFI before jumping into the hardware or software.

RusEFI is a community project, everyone here is giving there time for free and have normal day jobs, this limits the amount of direct support we can give.
This means that the wiki and forum should be the first port of call for any questions. Most things are covered within these two resources.  
With this in mind it is important that new users take a quick look at the [D is for distraction](D-is-for-DISTRACTION) page and the [What rusEFI cannot do](What-rusEFI-Cannot-Do)

RusEFI is an advance system, many of the features of rusEFI are things you will only find on high end or OEM ECUs. This means that users will need to take time to understand the systems they are working on and the principals behind them, a lot of the information provided is based on the concept of "helping you to help yourself".
You will be expected to put in the time to find information on the sensors you are using and any vehicle specific requirements of your install. (Though the team will always help where they can).

rusEFI is also still very much in development, the dev team provide no guarantee that any of the current features are fully working.

## Identifying your hardware requirements

You are going to need to know technical details about below referenced items.

To get an idea of tested and [available sensors and actuators](Pages-Sensors-and-Actuators)

### Camshaft position sensor (optional)

- [VVT Overview](VVT)

### Crankshaft position sensor

- is it Hall or Variable Reluctance (VR) sensor?
To answer look at [Vault of Sensors](Vault-Of-Sensors)

#### Trigger style

Is the trigger wheel of your engine contained in [All-Supported-triggers](All-Supported-Triggers)

### injectors and flow rate

- is a High or low impedance injector?
- what is the flow rate?

To answer look at [Fuel-Injectors](Fuel-Injectors)

### Temperature sensors

- Oil temperature
- Cooling fluid temperature
- air intake temperature

- NTC sensor curves

To answer look at [Temperature-Sensing](Temperature-Sensing)

### Air Intake sensor

- MAF please see [MAF](MAF)
- MAP (ToDo:)

### Idle Air Control Valve (IACV)

To answer look at [Idle Control](Idle-Control)

### Lambda sensor

- **wide band oxygen sensor required**

please see [Wide-Band-Sensors](Wide-Band-Sensors)

### Throttle control

[ETB](Electronic-Throttle-Body)

### Ignition coils

[Vault-Of-Ignition-Parts](Vault-Of-Ignition-Parts)

### Engine characteristics

- total number of sensors
- number of cylinders
- turbocharged or natural aspiration
- single or dual spark

### ECU connector(s)

- number of pins
- shape of connector
[OEM connectors](OEM-connectors)

## What rusEFI board is correct for your engine?

- Select from [available Plug-and-Play ECUs](Vault-of-Pnp-Vehicle-Pages)

OR

- Build your own custom ECU from a supported MCU kit

## Getting help

[HOWTO ask questions](HOWTO-ask-questions)

## Where to search for information

[HOWTO Search on rusEFI wiki](HOWTO-Search-on-rusEFI-wiki)

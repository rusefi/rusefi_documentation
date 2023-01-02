Below is a copy-paste of [https://github.com/jackm/carhack/blob/master/nissan.md](https://github.com/jackm/carhack/blob/master/nissan.md)

# Nissan Sentra 2010 CAN bus data

## CAN bus frame

CAN message bytes are referenced by letters A-H:

`(A, B, C, D, E, F, G, H)`

Individual bits within a byte are represented by the byte letter followed by a period followed by a number (1-8).
For example, `B.1` would mean the first bit within the second byte, and `C.6` would mean the sixth bit within the third byte.
Hyphens denote a range.
For instances where the data length code (DLC) is not 8 bytes, the DLC is specified.

Many similarities in CAN IDs found in the [Knio/carhack repo](https://github.com/Knio/carhack/blob/master/Cars/Nissan.markdown).
Planning on cross-referencing this soon. It is quite likely that all Nissan vehicles share CAN IDs for common fucntions.

Also planning on cross-referencing from the [commaai/opendbc PR #72](https://github.com/commaai/opendbc/pull/72) which has further categorized Nissan CAN IDs.

## Controls to reverse engineer

A preliminary list of human vehicle controls to sniff the CAN bus for

* Accelorator pedal
* Brake pedal
* Steering wheel angle
* Vehicle headlights
* Windshield wiper controls
* Turn signals
* Hazard lights
* Cruise control
* Horn
* Climate control
* Rear window defrost
* Doors open
* Seat belts
* Parking brake
* Radio buttons
* Power windows
* Power door locks
* Power side mirrors
* Cabin lights
* Gas cap release
* Trunk release

## Setup

Physically connected to vehicle's OBD-II port using a [Kvaser Leaf Light HS v2](https://www.kvaser.com/product/kvaser-leaf-light-hs-v2/) CAN interface.
This CAN interface is connected via USB to a laptop running Linux.
Using the [SocketCAN](https://en.wikipedia.org/wiki/SocketCAN) driver to create a network interface (arbitrarily named "can0").

Discovered via trial and error that the CAN bus bit rate on the Nissan Sentra is 500kbit/s.
The the majority of passenger vehicles will use a CAN bus bit rate of either 250kbit/s or 500kbit/s.

Configuring the CAN network interface

1. `sudo ip link set can0 type can bitrate 500000`
1. `sudo ip link set can0 up`

Using the [can-utils](https://github.com/linux-can/can-utils) package; specifically `cansniffer` to see changes and `canbusload` to monitor bus load.

Arguments used

* `cansniffer -c can0`
* `canbusload -tcbr can0@500000`

All recorded CAN message IDs are in hexadecimal.

## Active CAN IDs

### Key inserted, ACC off, engine off

CAN bus load 7%

When key inserted or removed, messages from the following IDs only last a few seconds then stop sending

* 358
* 35D
* 625

When key moved to first position (before ACC), messages from the following IDs are seen periodically and constantly

* 35D
* **60D**
* 625

When vehicle is off (no key inserted at all) and a control is activated (one that is allowed to be used when the vehicle is off; eg. door open, hazard & head lights) messages with the following IDs are seen in addition to the usual ones associated with said control

* 35D
  * `B.1-B.2` => 0b00=doors closed, 0b11=driver door opened
* 625
  * DLC=6
  * `D.1-D.2` => 0b10=doors closed, 0b01=any door opened

### ACC on, engine off

CAN bus load 30%

Messages from the following IDs always actively changing

* 174
  * `E` => cycles through values 0x01 0x04 0x05 0x09 0x0C 0x0D
* 176
  * DLC=7
  * `G` => cycles through values 0x01 0x05 0x06 0x09 0x0D
* 180
* 182
* 280
* 284
* 285
* 551
  * `A.1-A.2` => cycles through values 0b01 0b10
* 560
  * DLC=3
* 6E2
  * DLC=3
  * `C` => cycles through values 0x78 0x7A and 0x7B 0x79

### Engine running

CAN bus load 30%

Messages from the following IDs always actively changing.
Bolded IDs are newly seen relative to when ACC on.

* **160**
* 174
* 176
* 180
* 182
* **1F9**
* 280
* 284
* 285
* 551
* 560
* 6E2

### Vehicle controls

#### Accelorator pedal

* 160
  * `E-H` => seem to correspond to pedal position
  * `A-B` => 0x3D64 when pedal not pressed, increases to 0x41D4 when fully pressed
  * `C` => always 0xA1

#### Brake pedal

* 354
  * `G.5` => 0=not pressed, 1=pressed
* 35D
  * `E.5` => 0=not pressed, 1=pressed

#### Steering wheel angle

No change in messages

Only tried with ACC on, engine off

#### Vehicle lights

Forward facing lights

Possible states are: off, headlights on, fog lights on, high beams on

* 358
  * `B.8` => 0=off, 1=any light on
* 60D
  * `A.2-A.3`  => 0b00=off, 0b10=headlights on, 0b11=fog lights on
* 60D
  * `B.4` => 0=high beams off, 1=high beams on
* 625
  * DLC=6
  * `B.5-B.7` => 0b000=off, 0b100=headlights on, 0b110=fog lights on, 0b001=high beams on

When car is off (no key inserted)

* 5C5
  * `A.7-A.8` => 0b10=off, 0b01=any light on

#### Windshield wipers

Wiper control stick

Possible states are: off, oneshot ("MIST"), intermittent ("INT"), slow ("LO"), fast ("HI")

* 35D
  * `C.6-C.8` => 0b000=off, 0b110=oneshot, 0b010=intermittent, 0b110=slow, 0b111=fast
  * Bits for oneshot and slow settings are the same
* 354
  * appears during intermittent wiper setting
  * `E.2` => 0=off, 1=intermittent, ...
* 625
  * `A.2-A.3` => 0b01=off, 0b10=intermittent, ...

#### Turn signals

Turn signal control stick

Data bytes change each time turn signal ticks/lights up

* 60D
  * `B.6-B.7` => 0b00=off tick, 0b01=left turn tick, 0b10=right turn tick

#### Hazard lights

Data bytes change each time lights are flashed on and off

* 60D
  * `B.6-B.7` => 0b00=off, 0b11=blink on

This is really just a combination of both the left and right turn signal lights.
Same bits seen when using turn signal control stick.

#### Cruise control

Cruise control on/off button on steering wheel

* 551
  * `F.5-F.7` => 0b000=off, 0b101=on

Did not test setting cruise control speed or increasing/reducing speed setting, this would require the vehicle to be moving (minimum 40 km/h before cruise control can be active)

#### Horn

No change in messages

#### Climate control fan

* 358
  * `B.7` => 0=off, 1=fan on (any speed)
* 35D
  * `A.1` => 0=off, 1=fan on (any speed)

No other climate control setting showed any change in messages

#### Rear defrost

Rear window defrost on/off button

* 35D
  * `A.2-A.3` => 0b00=off, 0b11=on

#### Door ajar

* 60D
  * `A.4`    driver side front door => 0=closed, 1=open
  * `A.5` passenger side front door => 0=closed, 1=open
  * `A.6`    driver side rear  door => 0=closed, 1=open
  * `A.7` passenger side rear  door => 0=closed, 1=open

#### Seat belt

When seat belt is clicked in for the driver

* 280
  * `A.2` => 0=clicked in, 1=not clicked in

Most likely for enabling the seat belt indicator light on the dash

Also tried passenger seat belt but saw no change in messages

#### Parking brake

* 5C5
  * `A.3` => 0=off, 1=parking brake engaged

#### Radio buttons

No change in messages

Unlikely to be on the same bus as the rest of the vehicle controls

#### Power windows

No change in messages

Tried lowering and raising all four windows

#### Power door locks

No change in messages

Tried locking and unlocking all four doors

#### Power side mirrors

No change in messages

Tried adjusting both left and right side mirrors

#### Cabin lights

No change in messages

Tried turning on front cabin light and back seat cabin light

#### Gas cap release

No change in messages

Likely just a mechanical release

#### Trunk release

No change in messages

Likely just a mechanical release

## CAN ID summary

CAN message IDs to control relations identified but not limited to

| ID | Control |
| -- | ------- |
| 160 | Accelorator pedal |
| 280 | Seat belt |
| 354 | Brake, wipers |
| 358 | Headlights, climate control |
| 35D | Brake, wipers, climate control, rear defrost |
| 551 | Cruise control |
| 5C5 | Headlights (car off), parking brake |
| 60D | Headlights, turn signals, doors |
| 625 | Headlights, wipers |

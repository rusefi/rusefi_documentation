# CAN Decoding Hints

Text format CAN traces preferred. Please name files according to scenarios - each scenario separate file name.

For inspiration look at https://github.com/rusefi/rusefi_documentation/tree/master/OEM-Docs/CanAm/maverick-x3-xrs-turbo-rr-max-2021 and https://github.com/rusefi/rusefi_documentation/tree/master/OEM-Docs/CanAm/maverick-x3-xrs-turbo-rr-max-2021-day-2

## Ignition on

Start trace recording, turn ignition key/wake up car, turn key off, record until CAN traffic stops or 30 seconds whatever happens first. Stop trace recording.

## Brake Pedal

Ignition key ON, engine OFF. Tap and hold breaks five times.

## Headlight

Same as above, just use headlight switch instead of brake pedal

## Battery Voltage

Ignition key ON, engine OFF. Hook up battery charger to change voltage.

## Fuel Level

Ignition key ON, engine OFF. Add fuel, name file according to before and after fuel amount.

## TPS/PPS sweep

Ignition key ON, engine OFF. Press pedal all the way down fast, complexly release fast, press all way down slowly, complexly release slowly, repeat from start two more times.

## PPS sweep with TPS disengages

Open hood, unhook TPS sensor plug. Repeat "TPS/PPS sweep"

## 30 seconds of idle

Record 30 seconds of vehicle idling

## Idle with CLT removed

Idle, Unplug and plug coolant sensor if easy to reach

## High RPM Idle to warm engine up

Start cold-ish engine, warm up engine.

## Wheels in the air

Raise car, turn wheels manually while ignition ON or idle.

## PR Special

Idle, Turn A/C on and off a few times

## Change gears while parked idling

Press brake pedal, engage R, engage D, engage R, engage D, engage R, engage D.

## Revving while parked

Rev engine slowly to 3000 RPM, rev engine quickly, rev engine slowly to 3000 RPM, rev engine quickly.

## 20 mph in 1st gear

If you have "1" selector accelerate to 20 mph/32kmh and drive for hundred meters.

## 20 mph in 2st gear

If you have "2" selector accelerate to 20 mph/32kmh and drive for hundred meters.

## 20 mph in 3st gear

If you have "3" selector accelerate to 20 mph/32kmh and drive for hundred meters.

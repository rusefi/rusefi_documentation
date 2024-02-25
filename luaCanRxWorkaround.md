# luaCanRxWorkaround

By default Lua CAN RX is easy but has a performance limitation.

If 300hz and above Lua CAN RX is needed until a more elegant solution is implemented https://github.com/rusefi/rusefi/issues/6041 we have magic 

![image](https://github.com/rusefi/rusefi/assets/48498823/fe140c28-b832-4831-9282-d0692dca9269)

For the magic to work two lines are required in the Lua script:

``global_can_data = { }`` on top

and at least one ``global_can_data[1]`` read access to ``global_can_data`` anywhere in the script

```language=lua
rxCount = 0

-- magic behind the scenes: luaCanRxWorkaround on ParkingLot2 dialog
global_can_data = { }

function onVehicleDetect(bus, id, dlc, data)
	rxCount = rxCount + 1
	if rxCount < 10 then
-- at least one read from global_can_data to prevent garbage collection
		print('onVehicleDetect ' ..id .." " ..global_can_data[1])

	end
end

canRxAddMask(0, 0xFFFFFF00, onVehicleDetect)

everySecondTimer = Timer.new()
keepAlive = 0

function onTick()
	if everySecondTimer : getElapsedSeconds() > 1 then
		everySecondTimer : reset()
		keepAlive = keepAlive + 1
		print("Alive seconds=" ..keepAlive .. " rxCount " .. rxCount )
	end
end
```

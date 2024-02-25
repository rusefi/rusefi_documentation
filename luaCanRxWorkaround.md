# luaCanRxWorkaround

By default Lua CAN RX is easy but has a performance limitation.

If 300hz and above Lua CAN RX is needed until a more elegant solution is implemented https://github.com/rusefi/rusefi/issues/6041 we have **luaCanRxWorkaround** magic option.

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

Give us
`2024-02-25_09_12_32_236: EngineState: LUA: Alive seconds=4 rxCount 596
2024-02-25_09_12_33_240: EngineState: LUA: Alive seconds=5 rxCount 912
2024-02-25_09_12_34_352: EngineState: LUA: Alive seconds=6 rxCount 1166
2024-02-25_09_12_35_357: EngineState: LUA: Alive seconds=7 rxCount 1420
2024-02-25_09_12_36_467: EngineState: LUA: Alive seconds=8 rxCount 1775
2024-02-25_09_12_37_577: EngineState: LUA: Alive seconds=9 rxCount 2030
2024-02-25_09_12_38_577: EngineState: LUA: Alive seconds=10 rxCount 2280
2024-02-25_09_12_39_582: EngineState: LUA: Alive seconds=11 rxCount 2605
2024-02-25_09_12_40_588: EngineState: LUA: Alive seconds=12 rxCount 2851
2024-02-25_09_12_41_592: EngineState: LUA: Alive seconds=13 rxCount 3076
`

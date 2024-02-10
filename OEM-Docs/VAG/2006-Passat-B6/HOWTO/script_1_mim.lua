-- scriptname script_1_mim.lua

-- sometimes we want to cut a CAN bus and install rusEFI into that cut
-- https://en.wikipedia.org/wiki/Man-in-the-middle_attack

-- include misc-util.lua
-- endinclude

-- include PG35-CANbus-ids.lua
-- endinclude

-- this controls onCanRx rate as well!
setTickRate(100)


VEHICLE_BUS = 1
TCU_BUS = 2

totalVehicleMessages = 0
totalTcuMessages = 0
totalDropped = 0
totalReplaced = 0

function relayFromVehicleToTcu(bus, id, dlc, data)
    totalVehicleMessages = totalVehicleMessages + 1
--    print('from ECU ' .. id .. " " .. arrayToString(data) .. " dropped=" .. totalDropped .. " replaced " .. totalReplaced)
    txCan(TCU_BUS, id, 0, data) -- relay non-TCU message to TCU
end

function relayFromTcuToVehicle(bus, id, dlc, data)
    totalTcuMessages = totalTcuMessages + 1
    txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU
end

canRxAddMask(VEHICLE_BUS, 0, 0, relayFromVehicleToTcu)
canRxAddMask(TCU_BUS, 0, 0, relayFromTcuToVehicle)

everySecondTimer = Timer.new()


function onTick()
    if everySecondTimer:getElapsedSeconds() > 1 then
        everySecondTimer:reset()
        print("Total from vehicle " .. totalVehicleMessages .. " from TCU " .. totalTcuMessages .. " dropped=" .. totalDropped .. " replaced " .. totalReplaced)
    end
end

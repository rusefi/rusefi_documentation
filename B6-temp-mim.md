# B6 Temp

```lua

VWTP_OUT = 0x200
VWTP_IN = 0x202
VWTP_TESTER = 0x300

-- 1386
ACC_GRA = 0x56A

-- sometimes we want to cut a CAN bus and install rusEFI into that cut
-- https://en.wikipedia.org/wiki/Man-in-the-middle_attack

-- this controls onCanRx rate as well!
setTickRate(100)

ECU_BUS = 1
-- really 'not ECU'
TCU_BUS = 2

function relayFromECU(bus, id, dlc, data)
	totalEcuMessages = totalEcuMessages + 1
--	print("Relaying to TCU " .. id)
	txCan(TCU_BUS, id, 0, data) -- relay non-TCU message to TCU
end

totalTcuMessages = 0

function relayFromTCU(bus, id, dlc, data)
	totalTcuMessages = totalTcuMessages + 1
--	print("Relaying to ECU " .. id)
	txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU
end

local payLoadIndex = 0

function relayTpPayloadFromTCU(bus, id, dlc, data)
	top4 = math.floor(data[1] / 16)
	if top4 == 0xB then
		return
	end

	if top4 == 2 or top4 == 1 then
		-- 		print ("Looks like payload index " ..payLoadIndex ..": " ..arrayToString(data))

		if payLoadIndex == 1 then
			H4 = data[4]
			H7 = data[7] or -1

--			print("h5/h7 " ..H4 .." " ..H7)

			if H7 == 0 then
				print("No error")
			else
				print("ERROR")
			end

		end

		payLoadIndex = payLoadIndex + 1

		if top4 == 1 then
			payLoadIndex = 0
		end

	end

	totalTcuMessages = totalTcuMessages + 1
	-- 	print("Relaying to ECU " ..id ..arrayToString(data))
	txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU
end

function drop(bus, id, dlc, data)
end

canRxAdd(ECU_BUS, ACC_GRA, drop)

--canRxAdd(ECU_BUS, VWTP_OUT, relayFromECU)
--canRxAdd(ECU_BUS, 0x760, relayFromECU)

--canRxAdd(TCU_BUS, VWTP_IN, relayFromTCU)
canRxAdd(TCU_BUS, VWTP_TESTER, relayTpPayloadFromTCU)

hexstr = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "A", "B", "C", "D", "E", "F" }

function toHexString(num)
 if num == 0 then
  return '0'
 end

 local result = ""
 while num > 0 do
  local n = num % 16
  result = hexstr[n + 1] ..result
  num = math.floor(num / 16)
 end
 return result
end

function arrayToString(arr)
 local str = ""
 local index = 1
 while arr[index] ~= nil do
  str = str.." "..toHexString(arr[index])
  index = index + 1
 end
 return str
end

totalEcuMessages = 0

canRxAddMask(ECU_BUS, 0, 0, relayFromECU)
canRxAddMask(TCU_BUS, 0, 0, relayFromTCU)

function onTick()
end


```

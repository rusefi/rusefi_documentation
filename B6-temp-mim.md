AIRBAG = 0x050
-- 1088
TCU_1 = 0x440
-- 1344
TCU_2 = 0x540
-- 1440
BRAKE_2 = 0x5A0


-- 640
MOTOR_1 = 0x280
-- 644
MOTOR_BRE = 0x284
-- 648
MOTOR_2 = 0x288
-- 896
MOTOR_3 = 0x380
-- 1152
MOTOR_5 = 0x480
-- 1160
MOTOR_6 = 0x488
-- 1386
ACC_GRA = 0x56A
-- 1408 the one with variable payload
MOTOR_INFO = 0x580
-- 1416
MOTOR_7 = 0x588

motor1Data = { 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
motorBreData={ 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
motor2Data = { 0x8A, 0x8D, 0x10, 0x04, 0x00, 0x4C, 0xDC, 0x87 }
motor2mux = {0x8A, 0xE8, 0x2C, 0x64}
canMotor3 = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
motor5Data = { 0x1C, 0x08, 0xF3, 0x55, 0x19, 0x00, 0x00, 0xAD }
motor6Data = { 0x00, 0x00, 0x00, 0x7E, 0xFE, 0xFF, 0xFF, 0x00 }
accGraData = { 0x00, 0x00, 0x08, 0x00, 0x1A, 0x00, 0x02, 0x01 }
canMotorInfo = { 0x00, 0x00, 0x00, 0x14, 0x1C, 0x93, 0x48, 0x14 }
canMotorInfo1= { 0x99, 0x14, 0x00, 0x7F, 0x00, 0xF0, 0x47, 0x01 }
canMotorInfo3= { 0x9B, 0x14, 0x00, 0x11, 0x1F, 0xE0, 0x0C, 0x46 }
motor7Data = { 0x1A, 0x66, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00 }

VWTP_OUT = 0x200
VWTP_IN = 0x202
VWTP_TESTER = 0x300

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

function relayFromECUAndEcho(bus, id, dlc, data)
	totalEcuMessages = totalEcuMessages + 1
	print("Relaying to TCU " .. id)
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
    totalTcuMessages = totalTcuMessages + 1
-- 	print("Relaying to ECU " ..id ..arrayToString(data))
    txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU


    if data[1] == 0xA3 then
-- 		print ("Keep-alive")
        return
    end

	if data[1] == 0xA1 then
		print ("Happy 300 packet")
		return
	end

	if data[1] == 0xA8 then
		print ("They said Bye-Bye")
		return
	end

	if data[1] == 0x10 and dlc == 5 then
--		print ("Sending ACK B1 ")
		return
	end

	top4 = math.floor(data[1] / 16)
	if top4 == 0xB then
        -- ACK
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
        return
	end

    print('Got unexpected ' ..arrayToString(data))
end

function drop(bus, id, dlc, data)
end

function onMotor7(bus, id, dlc, data)
txCan(TCU_BUS, MOTOR_7, 0, motor7Data)
end

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

--canRxAdd(ECU_BUS, MOTOR_7, drop)
--canRxAdd(ECU_BUS, ACC_GRA, drop)

-- kombi 3
canRxAdd(ECU_BUS, 1312, relayFromECU)
-- Soll_Verbauliste_neu
canRxAdd(ECU_BUS, 1500, relayFromECU)
-- power steering
canRxAdd(ECU_BUS, 208, relayFromECU)
-- GRA_Neu
canRxAdd(ECU_BUS, 906, relayFromECU)
canRxAdd(ECU_BUS, 80, relayFromECU)
-- brake 1
canRxAdd(ECU_BUS, 416, relayFromECU)
-- brake 8
canRxAdd(ECU_BUS, 428, relayFromECU)
-- brake 3
canRxAdd(ECU_BUS, 1184, relayFromECU)
-- brake 5
canRxAdd(ECU_BUS, 1192, relayFromECU)
-- brake 2
canRxAdd(ECU_BUS, 1440, relayFromECU)
-- steering
canRxAdd(ECU_BUS, 194, drop)
-- kombi
canRxAdd(ECU_BUS, 800, relayFromECU)
-- ps
canRxAdd(ECU_BUS, 976, relayFromECU)
-- ps
canRxAdd(ECU_BUS, 978, relayFromECU)
-- klima
canRxAdd(ECU_BUS, 1504, drop)
-- EPB_1
canRxAdd(ECU_BUS, 1472, drop)
canRxAdd(ECU_BUS, 1478, relayFromECU)
canRxAdd(ECU_BUS, 912, relayFromECU)
canRxAdd(ECU_BUS, 1488, relayFromECU)
canRxAdd(ECU_BUS, 1056, relayFromECU)
canRxAdd(ECU_BUS, 1392, relayFromECU)
canRxAdd(ECU_BUS, 1360, relayFromECU)
canRxAdd(ECU_BUS, 1394, relayFromECU)
canRxAdd(ECU_BUS, 1490, relayFromECU)
canRxAdd(ECU_BUS, 2000, relayFromECU)

canRxAdd(ECU_BUS, MOTOR_1, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_BRE, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_2, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_3, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_5, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_6, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_7, relayFromECU)
canRxAdd(ECU_BUS, ACC_GRA, relayFromECU)
canRxAdd(ECU_BUS, MOTOR_INFO, relayFromECU)

canRxAdd(ECU_BUS, VWTP_OUT, relayFromECU)
canRxAdd(ECU_BUS, 0x760, relayFromECU)

canRxAdd(TCU_BUS, VWTP_IN, relayFromTCU)
canRxAdd(TCU_BUS, VWTP_TESTER, relayTpPayloadFromTCU)

canRxAddMask(ECU_BUS, 0, 0, drop)
--canRxAddMask(ECU_BUS, 0, 0, relayFromECU)
canRxAddMask(TCU_BUS, 0, 0, relayFromTCU)

function onTick()
onMotor7(0, 0, 0, nil)

end

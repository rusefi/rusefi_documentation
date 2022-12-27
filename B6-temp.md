```

-- 640
MOTOR_1 = 0x280
MOTOR_3 = 0x380
MOTOR_INFO = 0x580
MOTOR_5 = 0x480
-- 1160
MOTOR_6 = 0x488
-- 1416
MOTOR_7 = 0x588


fuelCounter = 0
fakeTorque = 0

function xorChecksum(data, targetIndex)
	local index = 1
	local result = 0
	while data[index] ~= nil do
		if index ~= targetIndex then
			result = result ~ data[index]
		end
		index = index + 1
	end
	data[targetIndex] = result
	return result
end

function setBitRange(data, totalBitIndex, bitWidth, value)
	local byteIndex = totalBitIndex >> 3
	local bitInByteIndex = totalBitIndex - byteIndex * 8
	if (bitInByteIndex + bitWidth > 8) then
		bitsToHandleNow = 8 - bitInByteIndex
		setBitRange(data, totalBitIndex + bitsToHandleNow, bitWidth - bitsToHandleNow, value >> bitsToHandleNow)
		bitWidth = bitsToHandleNow
	end
	mask = (1 << bitWidth) - 1
	data[1 + byteIndex] = data[1 + byteIndex] & (~(mask << bitInByteIndex))
	maskedValue = value & mask
	shiftedValue = maskedValue << bitInByteIndex
	data[1 + byteIndex] = data[1 + byteIndex] | shiftedValue
end

function getBitRange(data, bitIndex, bitWidth)
	byteIndex = bitIndex >> 3
	shift = bitIndex - byteIndex * 8
	value = data[1 + byteIndex]
	if (shift + bitWidth > 8) then
		value = value + data[2 + byteIndex] * 256
	end
	mask = (1 << bitWidth) - 1
	return (value >> shift) & mask
end

-- sometimes we want to cut a CAN bus and install rusEFI into that cut
-- https://en.wikipedia.org/wiki/Man-in-the-middle_attack

-- this controls onCanRx rate as well!
setTickRate(300)

ECU_BUS = 1
-- really 'not ECU'
TCU_BUS = 2

function setTwoBytes(data, offset, value)
	value = math.floor(value)
	data[offset + 2] = value >> 8
	data[offset + 1] = value & 0xff
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
totalTcuMessages = 0

motor1Data = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
canMotorInfo = { 0x00, 0x00, 0x00, 0x14, 0x1C, 0x93, 0x48, 0x14 }
canMotor3 = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
motor5Data = { 0x1C, 0x08, 0xF3, 0x55, 0x19, 0x00, 0x00, 0xAD }
motor6Data = { 0x00, 0x00, 0x00, 0x7E, 0xFE, 0xFF, 0xFF, 0x00 }
motor7Data = { 0x1A, 0x66, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00 }

function onMotor1(bus, id, dlc, data)
	rpm = getBitRange(data, 16, 16) * 0.25
	tps = getBitRange(data, 40, 8) * 0.4

	fakeTorque = interpolate(0, 6, 100, 60, tps)

	-- engineTorque = getBitRange(data, 8, 8) * 0.39
	-- innerTorqWithoutExt = getBitRange(data, 32, 8) * 0.4
	-- torqueLoss = getBitRange(data, 48, 8) * 0.39
	-- requestedTorque = getBitRange(data, 56, 8) * 0.39

	engineTorque = fakeTorque * 0.9
	innerTorqWithoutExt = fakeTorque
	torqueLoss = 20
	requestedTorque = fakeTorque

	motor1Data[2] = engineTorque / 0.39
	setTwoBytes(motor1Data, 2, rpm / 0.25)
	motor1Data[5] = innerTorqWithoutExt / 0.4
	motor1Data[6] = tps / 0.4
	motor1Data[7] = torqueLoss / 0.39
	motor1Data[8] = requestedTorque / 0.39

	print ('fakeTorque ' ..fakeTorque)
	print ('engineTorque ' ..engineTorque ..' RPM ' ..rpm)
	print ('innerTorqWithoutExt ' ..innerTorqWithoutExt ..' tps ' ..tps)

	print ('torqueLoss ' ..torqueLoss ..' requestedTorque ' ..requestedTorque)

	txCan(TCU_BUS, id, 0, motor1Data)
end

function onMotor3(bus, id, dlc, data)
	iat = getBitRange(data, 8, 8) * 0.75 - 48
	pps = getBitRange(data, 16, 8) * 0.40
	tps = getBitRange(data, 56, 8) * 0.40
	print ('pps ' ..pps ..' tps ' ..tps ..' iat ' ..iat)


	desired_wheel_torque = fakeTorque
	canMotor3[2] = (iat + 48) / 0.75
	canMotor3[3] = tps / 0.4
	canMotor3[5] = 0x20
	setBitRange(canMotor3, 24, 12, math.floor(desired_wheel_torque / 0.39))
	canMotor3[8] = tps / 0.4
	txCan(TCU_BUS, id, 0, canMotor3)
end

function onMotor5(bus, id, dlc, data)
	setBitRange(motor5Data, 5, 9, fuelCounter)
	xorChecksum(motor5Data, 8)
	txCan(TCU_BUS, id, 0, motor5Data)
end

function onMotor6(bus, id, dlc, data)
		engineTorque = getBitRange(data, 8, 8) * 0.39
		actualTorque = getBitRange(data, 16, 8) * 0.39
		feedbackGearbox = getBitRange(data, 40, 8) * 0.39

--	    engineTorque = fakeTorque * 0.9
--	    actualTorque = fakeTorque
--  feedbackGearbox = 255

 		motor6Data[2] = math.floor(engineTorque / 0.39)
		motor6Data[3] = math.floor(actualTorque / 0.39)
 		motor6Data[6] = math.floor(feedbackGearbox / 0.39)

		xorChecksum(motor6Data, 1)
	txCan(TCU_BUS, id, 0, motor6Data)
end

function silentDrop(bus, id, dlc, data)
end

function printAndDrop(bus, id, dlc, data)
	print('Dropping ' ..arrayToString(data))
end

function onAnythingFromECU(bus, id, dlc, data)
	totalEcuMessages = totalEcuMessages + 1
	txCan(TCU_BUS, id, 0, data) -- relay non-TCU message to TCU
end

function onAnythingFromTCU(bus, id, dlc, data)
	totalTcuMessages = totalTcuMessages + 1
	txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU
end

-- VAG Motor_1 just as example
canRxAdd(ECU_BUS, MOTOR_1, onMotor1)

canRxAdd(ECU_BUS, MOTOR_3, onMotor3)
canRxAdd(ECU_BUS, MOTOR_5, onMotor5)
canRxAdd(ECU_BUS, MOTOR_INFO, printAndDrop)
canRxAdd(ECU_BUS, MOTOR_6, onMotor6)
canRxAdd(ECU_BUS, MOTOR_7, printAndDrop)

-- last option: unconditional forward of all remaining messages
canRxAddMask(ECU_BUS, 0, 0, onAnythingFromECU)
canRxAddMask(TCU_BUS, 0, 0, onAnythingFromTCU)

everySecondTimer = Timer.new()
canMotorInfoCounter = 0

mafSensor = Sensor.new("maf")
mafCalibrationIndex = findCurveIndex("mafcurve")

function onTick()
    freqValue = getSensor("AuxSpeed1") or 0
	mafValue = curve(mafCalibrationIndex, 5)
--	print(freqValue .. " mafValue=" .. mafValue)
	mafSensor : set(mafValue)



	if everySecondTimer : getElapsedSeconds() > 1 then
		everySecondTimer : reset()
		print("Total from ECU " ..totalEcuMessages .." from TCU " ..totalTcuMessages)

		fuelCounter = fuelCounter + 20


		canMotorInfoCounter = (canMotorInfoCounter + 1) % 8
		motor7Data[1] = 0x90 + (canMotorInfoCounter * 2)
		txCan(1, MOTOR_INFO, 0, motor7Data)

	end
end



```

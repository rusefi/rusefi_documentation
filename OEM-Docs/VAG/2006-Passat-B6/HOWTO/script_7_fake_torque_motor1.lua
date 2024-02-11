-- scriptname script_7_fake_torque_motor1.lua

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

motor1Data = { 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
canMotorInfo02 = { 0x00, 0x00, 0x00, 0x14, 0x1C, 0x93, 0x48, 0x14 }
canMotorInfo1 = { 0x99, 0x14, 0x00, 0x7F, 0x00, 0xF0, 0x47, 0x01 }
canMotorInfo3 = { 0x9B, 0x14, 0x00, 0x11, 0x1F, 0xE0, 0x0C, 0x46 }
motor3Data = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
motor5Data = { 0x1C, 0x08, 0xF3, 0x55, 0x19, 0x00, 0x00, 0xAD }
motor6Data = { 0x00, 0x00, 0x00, 0x7E, 0xFE, 0xFF, 0xFF, 0x00 }
motor7Data = { 0x1A, 0x66, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00 }

totalVehicleMessages = 0
totalTcuMessages = 0
totalDropped = 0
totalReplaced = 0

motor5FuelCounter = 0

function relayFromVehicleToTcu(bus, id, dlc, data)
    totalVehicleMessages = totalVehicleMessages + 1
--    print('from ECU ' .. id .. " " .. arrayToString(data) .. " dropped=" .. totalDropped .. " replaced " .. totalReplaced)
    if id < 0x7FF then
        txCan(TCU_BUS, id, 0, data) -- relay non-TCU message to TCU
    end
end

function relayFromTcuToVehicle(bus, id, dlc, data)
    totalTcuMessages = totalTcuMessages + 1
    if id < 0x7FF then
        txCan(VEHICLE_BUS, id, 0, data) -- relay non-ECU message to ECU
    end
end

counter440 = 0
function onTcu440(bus, id, dlc, data)
	isShiftActive = getBitRange(data, 0, 1)
	tcuError = getBitRange(data, 1, 1)
	EGSRequirement = getBitRange(data, 7, 1)
	counter440 = counter440 + 1
	if counter440 % 40 == 0 then
		print("TCU isShiftActive=" ..isShiftActive .." tcuError=" ..tcuError .." EGSRequirement=" ..EGSRequirement)
	end
	relayFromTcuToVehicle(bus, id, dlc, data)
end

function sendMotor1()
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

	txCan(TCU_BUS, MOTOR_1, 0, motor1Data)
end

function sendMotor3()
	desired_wheel_torque = fakeTorque
	iat = iat or 30
	motor3Data[2] = (iat + 48) / 0.75
	motor3Data[3] = tps / 0.4
	motor3Data[5] = 0x20
	setBitRange(motor3Data, 24, 12, math.floor(desired_wheel_torque / 0.39))
	motor3Data[8] = tps / 0.4
	txCan(TCU_BUS, MOTOR_3, 0, motor3Data)
end

--motor5counter = 0
motor5FuelCounter = 0
function sendMotor5()
--    motor5counter = (motor5counter + 1) % 16
-- todo	index = math.floor(motor5counter / 4)

	setBitRange(motor5Data, 5, 9, motor5FuelCounter)
	vagXorChecksum(motor5Data, 8)
	txCan(TCU_BUS, MOTOR_5, 0, motor5Data)
end

motor6Counter = 0
function sendMotor6()
	motor6Counter = (motor6Counter + 1) % 16

	engineTorque = fakeTorque * 0.9
	actualTorque = fakeTorque
	feedbackGearbox = 255

	motor6Data[2] = math.floor(engineTorque / 0.39)
	motor6Data[3] = math.floor(actualTorque / 0.39)
	motor6Data[6] = math.floor(feedbackGearbox / 0.39)
	setBitRange(motor6Data, 60, 4, motor6Counter)

	vagXorChecksum(motor6Data, 1)
	txCan(TCU_BUS, MOTOR_6, 0, motor6Data)
end

function sendMotor7()
	txCan(TCU_BUS, MOTOR_7, 0, motor7Data)
end

canMotorInfoCounter = 0
function sendMotorInfo()
	canMotorInfoTotalCounter = canMotorInfoTotalCounter + 1
	canMotorInfoCounter = (canMotorInfoCounter + 1) % 16

	baseByte = canMotorInfoTotalCounter < 6 and 0x80 or 0x90
	canMotorInfo02[1] = baseByte + (canMotorInfoCounter)
	canMotorInfo1[1] = baseByte + (canMotorInfoCounter)
	canMotorInfo3[1] = baseByte + (canMotorInfoCounter)
	mod4 = canMotorInfoCounter % 4

	if (mod4 == 0 or mod4 == 2) then
		txCan(TCU_BUS, Motor_Flexia, 0, canMotorInfo02)
	elseif (mod4 == 1) then
		txCan(TCU_BUS, Motor_Flexia, 0, canMotorInfo1)
	else
		txCan(TCU_BUS, Motor_Flexia, 0, canMotorInfo3)
	end
end

motor1counter = 0
function onMotor1(bus, id, dlc, data)
	rpm = getBitRange(data, 16, 16) * 0.25
	if rpm == 0 then
		canMotorInfoTotalCounter = 0
	end

	tps = getBitRange(data, 40, 8) * 0.4

	fakeTorque = interpolate(0, 6, 100, 60, tps)

	motor1counter = motor1counter + 1
	if motor1counter % 40 == 0 then
--		print('RPM=' ..rpm ..' TPS=' ..tps)
	end

end

motor3counter = 0
function onMotor3(bus, id, dlc, data)
 motor3counter = (motor3counter + 1) % 16
	iat = 30 -- getBitRange(data, 8, 8) * 0.75 - 48
	pps = 7 -- getBitRange(data, 16, 8) * 0.40
	tps = 7 -- getBitRange(data, 56, 8) * 0.40
    if motor3counter % 70 == 0 then
--    	print ('MOTOR_3 pps ' ..pps ..' tps ' ..tps ..' iat ' ..iat)
    end
end

canRxAdd(VEHICLE_BUS, Komf_1_912, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, ACC_GRA, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, GRA_Neu, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, Kombi_3, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, Soll_Verbauliste_neu, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, Systeminfo_1, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, Diagnose_1, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, BRAKE_1_416, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, BRAKE_2_1440, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, BRAKE_3_1184, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, BRAKE_5_1192, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, BRAKE_8_428, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, VWTP_OUT, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, VPTP_TCU, relayFromVehicleToTcu)

canRxAdd(VEHICLE_BUS, MOTOR_1, onMotor1)
canRxAdd(VEHICLE_BUS, MOTOR_2, relayFromVehicleToTcu)
canRxAdd(VEHICLE_BUS, MOTOR_3, onMotor3)

canRxAdd(TCU_BUS, VWTP_IN, relayFromTcuToVehicle)
canRxAdd(TCU_BUS, VWTP_TESTER, relayFromTcuToVehicle)
canRxAdd(TCU_BUS, TCU_1344_540, relayFromTcuToVehicle)
canRxAdd(TCU_BUS, TCU_1352_548, relayFromTcuToVehicle)
canRxAdd(TCU_BUS, TCU_1088_440, onTcu440)

-- count what do we drop
canRxAddMask(VEHICLE_BUS, 0, 0, silentDrop)
canRxAddMask(TCU_BUS, 0, 0, printAndDrop)

everySecondTimer = Timer.new()

function onTick()
	sendMotor1()
	sendMotor3()
	sendMotor5()
	sendMotor6()
	sendMotor7()

    if everySecondTimer:getElapsedSeconds() > 1 then
        everySecondTimer:reset()
        print("Total from vehicle " .. totalVehicleMessages .. " from TCU " .. totalTcuMessages .. " dropped=" .. totalDropped .. " replaced " .. totalReplaced)

 		motor5FuelCounter = motor5FuelCounter + 20
 		sendMotorInfo()
    end
end

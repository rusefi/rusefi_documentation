motor5Data = { 0x1C, 0x08, 0xF3, 0x55, 0x19, 0x00, 0x00, 0xAD }
motor5counter = 0
motor5FuelCounter = 0
function sendMotor5()
	setBitRange(motor5Data, 5, 9, motor5FuelCounter)
	xorChecksum(motor5Data, 8)
	txCan(TCU_BUS, MOTOR_5, 0, motor5Data)
end

canMotorInfo02 = { 0x00, 0x00, 0x00, 0x14, 0x1C, 0x93, 0x48, 0x14 }
canMotorInfo1 = { 0x99, 0x14, 0x00, 0x7F, 0x00, 0xF0, 0x47, 0x01 }
canMotorInfo3 = { 0x9B, 0x14, 0x00, 0x11, 0x1F, 0xE0, 0x0C, 0x46 }
canMotorInfoTotalCounter = 0
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
		txCan(TCU_BUS, MOTOR_INFO, 0, canMotorInfo02)
	elseif (mod4 == 1) then
		txCan(TCU_BUS, MOTOR_INFO, 0, canMotorInfo1)
	else
		txCan(TCU_BUS, MOTOR_INFO, 0, canMotorInfo3)
	end
end


motorBreData = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
motorBreCounter = 0
function sendMotorBre()
	motorBreCounter = (motorBreCounter + 1) % 16

	setBitRange(motorBreData, 8, 4, motorBreCounter)
	xorChecksum(motorBreData, 1)

	txCan(TCU_BUS, MOTOR_BRE, 0, motorBreData)
end

accGraData = { 0x00, 0x00, 0x08, 0x00, 0x1A, 0x00, 0x02, 0x01 }
accGraCounter = 0
function sendAccGra()
 accGraCounter = (accGraCounter + 1) % 16
 setBitRange(accGraData, 60, 4, accGraCounter)
    xorChecksum(accGraData, 1)

 txCan(TCU_BUS, ACC_GRA, 0, accGraData)
end

motor7Data = { 0x1A, 0x66, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00 }
function sendMotor7()
	txCan(TCU_BUS, MOTOR_7, 0, motor7Data)
end

motor2mux = { 0x8A, 0xE8, 0x2C, 0x64 }
motor2Data = { 0x8A, 0x8D, 0x10, 0x04, 0x00, 0x4C, 0xDC, 0x87 }
motor2counter = 0
function sendMotor2()
 motor2counter = (motor2counter + 1) % 16

    minTorque = fakeTorque / 2
    -- todo: add CLT
    motor2Data[7] = math.floor(minTorque / 0.39)

--print ( "brake " .. getBitRange(data, 16, 2) .. " " .. rpm)

    brakeBit = rpm < 2000 and 1 or 0
    setBitRange(motor2Data, 16, 1, brakeBit)

    index = math.floor(motor2counter / 4)
    motor2Data[1] = motor2mux[1 + index]

 txCan(TCU_BUS, MOTOR_2_648, 0, motor2Data)
end

motor1Data = { 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
function sendMotor1()
	engineTorque = fakeTorque * 0.9
	innerTorqWithoutExt = fakeTorque
	torqueLoss = 20
	requestedTorque = fakeTorque

	motor1Data[2] = engineTorque / 0.39
	setTwoBytesLsb(motor1Data, 2, rpm / 0.25)
	motor1Data[5] = innerTorqWithoutExt / 0.4
	motor1Data[6] = tps / 0.4
	motor1Data[7] = torqueLoss / 0.39
	motor1Data[8] = requestedTorque / 0.39

	txCan(TCU_BUS, MOTOR_1, 0, motor1Data)
end
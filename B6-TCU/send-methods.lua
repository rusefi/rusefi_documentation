motor5counter = 0
motor5FuelCounter = 0

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
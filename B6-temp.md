# B6 Temp

```lua

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

function onMotor1(bus, id, dlc, data)
    totalEcuMessages = totalEcuMessages + 1
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

-- print ('MOTOR_1 fakeTorque ' ..fakeTorque)
-- print ('MOTOR_1 engineTorque ' ..engineTorque ..' RPM ' ..rpm)
-- print ('MOTOR_1 innerTorqWithoutExt ' ..innerTorqWithoutExt ..' tps ' ..tps)

-- print ('MOTOR_1 torqueLoss ' ..torqueLoss ..' requestedTorque ' ..requestedTorque)

 txCan(TCU_BUS, id, 0, motor1Data)
end

motorBreCounter = 0
function onMotorBre(bus, id, dlc, data)
 motorBreCounter = (motorBreCounter + 1) % 16

    setBitRange(motorBreData, 8, 4, motorBreCounter)
    xorChecksum(motorBreData, 1)

 txCan(TCU_BUS, id, 0, motorBreData)
end

motor2counter = 0
function onMotor2(bus, id, dlc, data)
 motor2counter = (motor2counter + 1) % 16

    minTorque = fakeTorque / 2
    motor2Data[7] = math.floor(minTorque / 0.39)

--print ( "brake " .. getBitRange(data, 16, 2) .. " " .. rpm) 

    brakeBit = rpm < 2000 and 1 or 0
    setBitRange(motor2Data, 16, 1, brakeBit)

    index = math.floor(motor2counter / 4)
    motor2Data[1] = motor2mux[1 + index]

-- txCan(TCU_BUS, id, 0, data)
 txCan(TCU_BUS, id, 0, motor2Data)
end

function onMotor3(bus, id, dlc, data)
    totalEcuMessages = totalEcuMessages + 1
 iat = getBitRange(data, 8, 8) * 0.75 - 48
 pps = getBitRange(data, 16, 8) * 0.40
 tps = getBitRange(data, 56, 8) * 0.40
-- print ('MOTOR_1 pps ' ..pps ..' tps ' ..tps ..' iat ' ..iat)


 desired_wheel_torque = fakeTorque
 canMotor3[2] = (iat + 48) / 0.75
 canMotor3[3] = tps / 0.4
 canMotor3[5] = 0x20
 setBitRange(canMotor3, 24, 12, math.floor(desired_wheel_torque / 0.39))
 canMotor3[8] = tps / 0.4
 txCan(TCU_BUS, id, 0, canMotor3)
end

motor5FuelCounter = 0
function onMotor5(bus, id, dlc, data)
 setBitRange(motor5Data, 5, 9, motor5FuelCounter)
 xorChecksum(motor5Data, 8)
 txCan(TCU_BUS, id, 0, motor5Data)
end

counter16 = 0
function onMotor6(bus, id, dlc, data)
 counter16 = (counter16 + 1) % 16

 -- engineTorque = getBitRange(data, 8, 8) * 0.39
 -- actualTorque = getBitRange(data, 16, 8) * 0.39
 -- feedbackGearbox = getBitRange(data, 40, 8) * 0.39
 engineTorque = fakeTorque * 0.9
 actualTorque = fakeTorque
 feedbackGearbox = 255

 motor6Data[2] = math.floor(engineTorque / 0.39)
 motor6Data[3] = math.floor(actualTorque / 0.39)
 motor6Data[6] = math.floor(feedbackGearbox / 0.39)
 setBitRange(motor6Data, 60, 4, counter16)

 xorChecksum(motor6Data, 1)
 txCan(TCU_BUS, id, 0, motor6Data)
end

accGraCounter = 0
function onAccGra(bus, id, dlc, data)
 accGraCounter = (accGraCounter + 1) % 16
 setBitRange(accGraData, 60, 4, accGraCounter)
    xorChecksum(accGraData, 1)
    
 txCan(TCU_BUS, id, 0, accGraData)
-- txCan(TCU_BUS, id, 0, data)
end

canMotorInfoCounter = 0
function onMotorInfo(bus, id, dlc, data)
 canMotorInfoCounter = (canMotorInfoCounter + 1) % 16
 canMotorInfo[1] = 0x80 + (canMotorInfoCounter)
 canMotorInfo1[1] = 0x80 + (canMotorInfoCounter)
 canMotorInfo3[1] = 0x80 + (canMotorInfoCounter)
 mod4 = canMotorInfoCounter % 4
 
 
 if (mod4 == 0 or mod4 == 2) then
--     txCan(1, MOTOR_INFO, 0, canMotorInfo)
     txCan(TCU_BUS, id, 0, data)
 elseif (mod4 == 1) then
     txCan(1, MOTOR_INFO, 0, canMotorInfo1)
 else
     txCan(1, MOTOR_INFO, 0, canMotorInfo3)
    end
end

function onMotor7(bus, id, dlc, data)
 txCan(TCU_BUS, id, 0, motor7Data)
-- txCan(TCU_BUS, id, 0, data)
end

canRxAdd(ECU_BUS, MOTOR_1, onMotor1)
canRxAdd(ECU_BUS, MOTOR_BRE, onMotorBre)
canRxAdd(ECU_BUS, MOTOR_2, onMotor2)
canRxAdd(ECU_BUS, MOTOR_3, onMotor3)
canRxAdd(ECU_BUS, MOTOR_5, onMotor5)
canRxAdd(ECU_BUS, MOTOR_INFO, onMotorInfo)
canRxAdd(ECU_BUS, MOTOR_6, onMotor6)
canRxAdd(ECU_BUS, MOTOR_7, onMotor7)

canRxAdd(ECU_BUS, ACC_GRA, onAccGra)

everySecondTimer = Timer.new()

mafSensor = Sensor.new("maf")
mafCalibrationIndex = findCurveIndex("mafcurve")

function onTick()
    freqValue = getSensor("AuxSpeed1") or 0
 mafValue = curve(mafCalibrationIndex, 5)
-- print(freqValue .. " mafValue=" .. mafValue)
 mafSensor : set(mafValue)

 if everySecondTimer : getElapsedSeconds() > 1 then
  everySecondTimer : reset()
  print("Total from ECU " ..totalEcuMessages)
  motor5FuelCounter = motor5FuelCounter + 20
 end
end


```

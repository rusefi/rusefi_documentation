ECU_BUS = 1
-- really 'not ECU'
TCU_BUS = 2

totalEcuMessages = 0
totalTcuMessages = 0

function relayFromTCU(bus, id, dlc, data)
	totalTcuMessages = totalTcuMessages + 1
--	print("Relaying to ECU " .. id)
	txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU
end

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

function setTwoBytesMsb(data, offset, value)
	value = math.floor(value)
	data[offset + 1] = value >> 8
	data[offset + 2] = value & 0xff
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

function drop(bus, id, dlc, data)
end

function silentlyRelayFromECU(bus, id, dlc, data)
    onEcuTimer : reset ()
	totalEcuMessages = totalEcuMessages + 1
	txCan(TCU_BUS, id, 0, data)
end

function silentlyRelayFromTCU(bus, id, dlc, data)
	totalTcuMessages = totalTcuMessages + 1
	txCan(ECU_BUS, id, 0, data) -- relay non-ECU message to ECU
end
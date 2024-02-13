function vagXorChecksum(data, targetIndex)
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

function setTwoBytes(data, offset, value)
	data[offset + 1] = value % 255
	data[offset + 2] = (value >> 8) % 255
end

function setBitRange(data, totalBitIndex, bitWidth, value)
	local byteIndex = totalBitIndex >> 3
	local bitInByteIndex = totalBitIndex - byteIndex * 8
	if (bitInByteIndex + bitWidth > 8) then
		bitsToHandleNow = 8 - bitInByteIndex
		setBitRange(data, totalBitIndex + bitsToHandleNow, bitWidth - bitsToHandleNow, value >> bitsToHandleNow)
		bitWidth = bitsToHandleNow
	end
	local mask = (1 << bitWidth) - 1
	data[1 + byteIndex] = data[1 + byteIndex] & (~(mask << bitInByteIndex))
	local maskedValue = value & mask
	local shiftedValue = maskedValue << bitInByteIndex
	data[1 + byteIndex] = data[1 + byteIndex] | shiftedValue
end

function getBitRange(data, bitIndex, bitWidth)
	local byteIndex = bitIndex >> 3
	local shift = bitIndex - byteIndex * 8
	value = data[1 + byteIndex]
	if (shift + bitWidth > 8) then
		value = value + data[2 + byteIndex] * 256
	end
	local mask = (1 << bitWidth) - 1
	return (value >> shift) & mask
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

function silentDrop(bus, id, dlc, data)
    totalDropped = totalDropped + 1
end

function printAndDrop(bus, id, dlc, data)
    if id < 0x800 then
        print('Dropping ID=' .. id .. ' payload ' ..arrayToString(data))
    end
    totalDropped = totalDropped + 1
end


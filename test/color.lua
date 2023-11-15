local bit = require 'bit'
local tohex, bor, band, lshift, rshift, floor = bit.tohex, bit.bor, bit.band, bit.lshift, bit.rshift, math.floor

local M = {}

function M.hex2rgb(hex)
	local num = tonumber(hex:sub(2), 16)
	local r, g, b = rshift(num, 16), band(rshift(num, 8), 0x00ff), band(num, 0x0000ff)
	return { r, g, b }
end

return M

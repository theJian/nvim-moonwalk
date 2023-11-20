local bit = require 'bit'
local tohex, bor, band, lshift, rshift = bit.tohex, bit.bor, bit.band, bit.lshift, bit.rshift

local M = {}

local SA98G = {
	mainTRC = 2.4, -- 2.4 exponent for emulating actual monitor perception
	-- sRGB coefficients
	sRco = 0.2126729,
	sGco = 0.7151522,
	sBco = 0.0721750,

	-- G-4g constants for use with 2.4 exponent
	normBG = 0.56,
	normTXT = 0.57,
	revTXT = 0.62,
	revBG = 0.65,

	-- G-4g Clamps and Scalers
	blkThrs = 0.022,
	blkClmp = 1.414,
	scaleBoW = 1.14,
	scaleWoB = 1.14,
	loBoWoffset = 0.027,
	loWoBoffset = 0.027,
	deltaYmin = 0.0005,
	loClip = 0.1,
}

function M.hex2rgb(hex)
	local num = tonumber(hex:sub(2), 16)
	local r, g, b = rshift(num, 16), band(rshift(num, 8), 0x00ff), band(num, 0x0000ff)
	return { r, g, b }
end

function M.sRGBtoY(rgb)
	local function simpleExp(chan) return math.pow(chan/255.0, SA98G.mainTRC) end
	return SA98G.sRco * simpleExp(rgb[1]) +
			 SA98G.sGco * simpleExp(rgb[2]) +
			 SA98G.sBco * simpleExp(rgb[3])
end

-- @ref: https://github.com/Myndex/apca-w3/blob/master/src/apca-w3.js
function M.APCAcontrast(txtY, bgY)
	local icp = {0.0, 1.1}
	if math.min(txtY, bgY) < icp[1] or math.max(txtY, bgY) > icp[2] then
		return 0.0
	end

	local SAPC = 0.0
	local outputContrast = 0.0

	-- //////////   BLACK SOFT CLAMP   ////////////////////////////////////////
	-- // Soft clamps Y for either color if it is near black.
	txtY = (txtY > SA98G.blkThrs) and txtY
											or txtY + math.pow(SA98G.blkThrs - txtY, SA98G.blkClmp)
	bgY = (bgY > SA98G.blkThrs) and bgY
										 or bgY + math.pow(SA98G.blkThrs - bgY, SA98G.blkClmp)

	-- ///// Return 0 Early for extremely low ∆Y
	if math.abs(bgY - txtY) < SA98G.deltaYmin then
		return 0.0
	end

	-- //////////   APCA/SAPC CONTRAST - LOW CLIP (W3 LICENSE)  ///////////////
	if bgY > txtY then -- For normal polarity, black text on white (BoW)

		-- Calculate the SAPC contrast value and scale
		SAPC = (math.pow(bgY, SA98G.normBG) -
				  math.pow(txtY, SA98G.normTXT)) * SA98G.scaleBoW

		-- Low Contrast smooth rollout to prevent polarity reversal
		-- and also a low-clip for very low contrasts
		outputContrast = (SAPC < SA98G.loClip) and 0.0 or SAPC - SA98G.loBoWoffset
	else
		-- For reverse polarity, light text on dark (WoB)
		-- WoB should always return negative value.

		SAPC = (math.pow(bgY, SA98G.revBG) -
				  math.pow(txtY, SA98G.revTXT)) * SA98G.scaleWoB

		outputContrast = (SAPC > -SA98G.loClip) and 0.0 or SAPC + SA98G.loWoBoffset
	end

	return outputContrast * 100.0
end

function M.calcAPCA(textColor, bgColor)
	local bgClr = M.hex2rgb(bgColor)
	local txClr = M.hex2rgb(textColor)
	return M.APCAcontrast(M.sRGBtoY(txClr), M.sRGBtoY(bgClr))
end

return M

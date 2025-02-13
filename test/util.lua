local bit = require 'bit'
local band, rshift = bit.band, bit.rshift

local M = {}

function M.rgb(num)
  local r, g, b = rshift(num, 16), band(rshift(num, 8), 0x00ff), band(num, 0x0000ff)
  return { r, g, b }
end

function M.hex2rgb(hex)
  local num = tonumber(hex:sub(2), 16)
  return M.rgb(num)
end

function M.color2rgb(color)
  if type(color) == 'string' and color:sub(1, 1) == '#' then
    return M.hex2rgb(color)
  end
  return M.rgb(color)
end

function M.clamp(value, min, max)
    return math.max(min, math.min(max, value))
end

function M.degrees(radians)
    return radians * (180 / math.pi)
end

function M.radians(degrees)
    return degrees * (math.pi / 180)
end

function M.mean(a, b)
    return (a + b) / 2
end


return M

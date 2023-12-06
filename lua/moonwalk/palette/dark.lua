local bit = require 'bit'
local bxor, lshift, rshift, band, tohex, bor = bit.bxor, bit.lshift, bit.rshift, bit.band, bit.tohex, bit.bor
local floor = math.floor
local light_palette = require('moonwalk.palette.light').default

local M = {}

local function invert(hex)
  local num = tonumber(hex:sub(2), 16)
  local r, g, b = rshift(num, 16), band(rshift(num, 8), 0x00ff), band(num, 0x0000ff)
  r = bxor(0xff, r)
  g = bxor(0xff, g)
  b = bxor(0xff, b)
  return '#' .. tohex(bor(lshift(floor(r), 16), lshift(floor(g), 8), floor(b)), 6)
end

M.default = {
  none = 'NONE',
}
for name, color in pairs(light_palette) do
  if M.default[name] == nil then
    M.default[name] = invert(color)
  end
end

return M

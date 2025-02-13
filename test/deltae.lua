local sqrt, sin, cos, atan2, rad, deg, abs, exp, pow =
  math.sqrt, math.sin, math.cos, math.atan2, math.rad, math.deg, math.abs, math.exp, math.pow

local util = require 'util'
local mean, degrees, radians = util.mean, util.degrees, util.radians
local M = {}

function M.ciede2000(lab1, lab2)
  local L1, a1, b1 = lab1[1], lab1[2], lab1[3]
  local L2, a2, b2 = lab2[1], lab2[2], lab2[3]

  -- C* calculation
  local C1 = sqrt(a1 ^ 2 + b1 ^ 2)
  local C2 = sqrt(a2 ^ 2 + b2 ^ 2)
  local C_mean = mean(C1, C2)

  -- G calculation
  local G = 0.5 * (1 - sqrt((C_mean ^ 7) / (C_mean ^ 7 + 25 ^ 7)))
  local a1_prime = a1 * (1 + G)
  local a2_prime = a2 * (1 + G)

  -- C'_ calculation
  local C1_prime = sqrt(a1_prime ^ 2 + b1 ^ 2)
  local C2_prime = sqrt(a2_prime ^ 2 + b2 ^ 2)

  -- h'_ calculation
  local h1_prime = degrees(atan2(b1, a1_prime)) % 360
  local h2_prime = degrees(atan2(b2, a2_prime)) % 360

  -- dL', dC', dH' calculation
  local dL_prime = L2 - L1
  local dC_prime = C2_prime - C1_prime

  local dh_prime
  if C1_prime * C2_prime == 0 then
    dh_prime = 0
  else
    dh_prime = h2_prime - h1_prime
    if dh_prime > 180 then
      dh_prime = dh_prime - 360
    end
    if dh_prime < -180 then
      dh_prime = dh_prime + 360
    end
  end

  local dH_prime = 2 * sqrt(C1_prime * C2_prime) * sin(radians(dh_prime) / 2)

  -- H'_ mean calculation
  local H_mean
  if C1_prime * C2_prime == 0 then
    H_mean = h1_prime + h2_prime
  else
    H_mean = mean(h1_prime, h2_prime)
    if abs(h1_prime - h2_prime) > 180 then
      H_mean = H_mean + 180
    end
  end
  H_mean = H_mean % 360

  -- T calculation
  local T = 1
    - 0.17 * cos(radians(H_mean - 30))
    + 0.24 * cos(radians(2 * H_mean))
    + 0.32 * cos(radians(3 * H_mean + 6))
    - 0.20 * cos(radians(4 * H_mean - 63))

  -- SL, SC, SH calculation
  local SL = 1 + ((0.015 * (L1 + L2) / 2 - 50) ^ 2) / sqrt(20 + ((0.015 * (L1 + L2) / 2 - 50) ^ 2))
  local SC = 1 + 0.045 * C_mean
  local SH = 1 + 0.015 * C_mean * T

  -- RT calculation
  local dTheta = 30 * exp(-((H_mean - 275) / 25) ^ 2)
  local RC = 2 * sqrt((C_mean ^ 7) / (C_mean ^ 7 + 25 ^ 7))
  local RT = -RC * sin(radians(2 * dTheta))

  -- Final ΔE00 calculation
  local deltaE =
    sqrt((dL_prime / SL) ^ 2 + (dC_prime / SC) ^ 2 + (dH_prime / SH) ^ 2 + RT * (dC_prime / SC) * (dH_prime / SH))

  return deltaE
end

function M.rgb_to_lab(rgb)
  local r, g, b = rgb[1] / 255, rgb[2] / 255, rgb[3] / 255

  local function adjust(ch)
    return ch > 0.04045 and ((ch + 0.055) / 1.055) ^ 2.4 or ch / 12.92
  end

  r, g, b = adjust(r), adjust(g), adjust(b)

  local x = r * 0.4124564 + g * 0.3575761 + b * 0.1804375
  local y = r * 0.2126729 + g * 0.7151522 + b * 0.0721750
  local z = r * 0.0193339 + g * 0.1191920 + b * 0.9503041

  local xn, yn, zn = 95.047, 100.0, 108.883
  x, y, z = x * 100 / xn, y * 100 / yn, z * 100 / zn

  local function f(t)
    return t > (6 / 29) ^ 3 and t ^ (1 / 3) or t / (3 * (6 / 29) ^ 2) + 4 / 29
  end

  local L = 116 * f(y) - 16
  local a = 500 * (f(x) - f(y))
  local b = 200 * (f(y) - f(z))

  return { L, a, b }
end

function M.calc_deltaE(color1, color2)
  local rgb1 = util.color2rgb(color1)
  local rgb2 = util.color2rgb(color2)
  local lab1 = M.rgb_to_lab(rgb1)
  local lab2 = M.rgb_to_lab(rgb2)
  return M.ciede2000(lab1, lab2)
end

return M

local util = require 'util'
local M = {}

function M.ciede2000(lab1, lab2)
  local L1, a1, b1 = lab1[1], lab1[2], lab1[3]
  local L2, a2, b2 = lab2[1], lab2[2], lab2[3]

  local kL = 1.0
  local kC = 1.0
  local kH = 1.0

  local C1 = math.sqrt(a1 ^ 2 + b1 ^ 2)
  local C2 = math.sqrt(a2 ^ 2 + b2 ^ 2)

  local C_avg = (C1 + C2) / 2

  local G = 0.5 * (1 - math.sqrt(C_avg ^ 7 / (C_avg ^ 7 + 25 ^ 7)))

  local a1_prime = a1 * (1 + G)
  local a2_prime = a2 * (1 + G)

  local C1_prime = math.sqrt(a1_prime ^ 2 + b1 ^ 2)
  local C2_prime = math.sqrt(a2_prime ^ 2 + b2 ^ 2)

  local h1_prime = math.deg(math.atan2(b1, a1_prime)) % 360
  local h2_prime = math.deg(math.atan2(b2, a2_prime)) % 360

  local delta_h_prime
  if math.abs(h2_prime - h1_prime) <= 180 then
    delta_h_prime = h2_prime - h1_prime
  else
    delta_h_prime = (h2_prime - h1_prime) - 360 * (h2_prime > h1_prime and 1 or -1)
  end

  local H_avg_prime
  if math.abs(h1_prime - h2_prime) > 180 then
    H_avg_prime = (h1_prime + h2_prime + 360) / 2
  else
    H_avg_prime = (h1_prime + h2_prime) / 2
  end

  local T = 1
    - 0.17 * math.cos(math.rad(H_avg_prime - 30))
    + 0.24 * math.cos(math.rad(2 * H_avg_prime))
    + 0.32 * math.cos(math.rad(3 * H_avg_prime + 6))
    - 0.20 * math.cos(math.rad(4 * H_avg_prime - 63))

  local delta_theta = 30 * math.exp(-((H_avg_prime - 275) / 25) ^ 2)

  local R_C = 2 * math.sqrt(C1_prime ^ 7 / (C1_prime ^ 7 + 25 ^ 7))

  local delta_L_prime = L2 - L1
  local delta_C_prime = C2_prime - C1_prime
  local delta_H_prime = 2 * math.sqrt(C1_prime * C2_prime) * math.sin(math.rad(delta_h_prime / 2))

  local S_L = 1 + (0.015 * (L1 + L2 - 50) ^ 2) / math.sqrt(20 + (L1 + L2 - 50) ^ 2)
  local S_C = 1 + 0.045 * (C1_prime + C2_prime) / 2
  local S_H = 1 + 0.015 * (C1_prime + C2_prime) / 2 * T

  local R_T = -math.sin(math.rad(2 * delta_theta)) * R_C

  local delta_E = math.sqrt(
    (delta_L_prime / (kL * S_L)) ^ 2
      + (delta_C_prime / (kC * S_C)) ^ 2
      + (delta_H_prime / (kH * S_H)) ^ 2
      + (R_T * (delta_C_prime / (kC * S_C)) * (delta_H_prime / (kH * S_H)))
  )

  return delta_E
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

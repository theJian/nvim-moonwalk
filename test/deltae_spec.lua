local ciede2000 = require('deltae').ciede2000
local rgb_to_lab = require('deltae').rgb_to_lab

test('CIEDE2000', function()
  local Lab1, Lab2, deltaE

  Lab1 = {50.0000, 2.6772, -79.7751}
  Lab2 = {50.0000, 0.0000, -82.7485}
  deltaE = ciede2000(Lab1, Lab2)
  expect(string.format("%.4f", deltaE)).toBe('2.0425')

  Lab1 = {50.0000, 3.1571, -77.2803}
  Lab2 = {50.0000, 0.0000, -82.7485}
  deltaE = ciede2000(Lab1, Lab2)
  expect(string.format("%.4f", deltaE)).toBe('2.8615')

  Lab1 = {50.0000, 2.8361, -74.0200}
  Lab2 = {50.0000, 0.0000, -82.7485}
  deltaE = ciede2000(Lab1, Lab2)
  expect(string.format("%.4f", deltaE)).toBe('3.4412')
end)

test('RGB to LAB', function ()
  local white_rgb = {255, 255, 255}
  local white_lab = rgb_to_lab(white_rgb)
  expect(string.format("White Lab: L=%.2f, a=%.2f, b=%.2f",
      white_lab[1], math.abs(white_lab[2]), math.abs(white_lab[3]))).toBe("White Lab: L=100.00, a=0.00, b=0.00")

  local red_rgb = {255, 0, 0}
  local red_lab = rgb_to_lab(red_rgb)
  expect(string.format("Red Lab: L=%.2f, a=%.2f, b=%.2f",
      red_lab[1], red_lab[2], red_lab[3])).toBe("Red Lab: L=53.24, a=80.09, b=67.20")
end)

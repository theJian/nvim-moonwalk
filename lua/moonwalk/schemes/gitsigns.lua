function gitsigns(opts, c)
  return {
    GitSignsAddNr = { fg = c.green_softer, bg = c.none },
    GitSignsChangeNr = { fg = c.green_softer, bg = c.none },
    GitSignsDeleteNr = { fg = c.red_soft, bg = c.none },
    GitSignsAddLn = { bg = c.green_bg },
    GitSignsChangeLn = { bg = c.green_bg },
  }
end

return gitsigns

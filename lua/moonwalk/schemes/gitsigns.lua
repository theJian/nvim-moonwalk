function gitsigns(opts, c)
  return {
    GitSignsAddNr = { fg = c.green_softer, bg = c.none },
    GitSignsAddLn = { bg = c.green_bg },
    GitSignsChangeNr = { fg = c.green_softer, bg = c.none },
    GitSignsChangeLn = { bg = c.green_bg },
    GitSignsDeleteNr = { fg = c.red_soft, bg = c.none },
  }
end

return gitsigns

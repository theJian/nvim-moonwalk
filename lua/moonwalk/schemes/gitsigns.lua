function gitsigns(opts, c)
  return {
    GitSignsAdd = { fg = c.green_soft },
    GitSignsAddNr = { fg = c.green_softer, bg = c.none },
    GitSignsAddLn = { bg = c.green_bg },
    GitSignsChange = { fg = c.gold_bolder },
    GitSignsChangeNr = { fg = c.green_softer, bg = c.none },
    GitSignsChangeLn = { bg = c.green_bg },
    GitSignsDeleteNr = { fg = c.red_soft, bg = c.none },
  }
end

return gitsigns

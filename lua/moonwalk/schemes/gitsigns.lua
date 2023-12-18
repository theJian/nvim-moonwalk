function gitsigns(opts, c)
  return {
    GitSignsAdd = { fg = c.green_soft },
    GitSignsAddNr = { fg = c.green_soft },
    GitSignsAddLn = { bg = c.green_bg },
    GitSignsChange = { fg = c.gold_bolder },
    GitSignsChangeNr = { fg = c.gold_softer },
    GitSignsChangeLn = { bg = c.gold_bg },
    GitSignsDelete = { fg = c.red_bolder },
    GitSignsDeleteNr = { fg = c.red_soft, bg = c.none },
    GitSignsAddPreview = { link = 'DiffAdded' },
    GitSignsDeletePreview = { link = 'DiffRemoved' },
    GitSignsAddInline = { link = 'DiffAdd' },
    GitSignsDeleteInline = { link = 'DiffDelete' },
    GitSignsChangeInline = { link = 'DiffChange' },
    GitSignsDeleteVirtLn = { link = 'DiffRemoved' },
    GitSignsDeleteVirtLnInLine = { link = 'DiffRemoved' },
  }
end

return gitsigns

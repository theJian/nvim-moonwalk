function gitsigns(opts, c)
  return {
    GitSignsAdd = { fg = c.green_soft },
    GitSignsAddInline = { link = 'DiffText' },
    GitSignsAddLn = { bg = c.green_bg },
    GitSignsAddNr = { fg = c.green_soft },
    GitSignsAddPreview = { link = 'DiffAdd' },
    GitSignsAddVirtLnInline = { link = 'DiffText' },
    GitSignsChange = { fg = c.gold_bolder },
    GitSignsChangeInline = { link = 'DiffText' },
    GitSignsChangeLn = { bg = c.gold_bg },
    GitSignsChangeNr = { fg = c.gold_softer },
    GitSignsChangeVirtLnInline = { link = 'DiffText' },
    GitSignsDelete = { fg = c.red_bolder },
    GitSignsDeleteInline = { bg = c.red_soft },
    GitSignsDeleteNr = { fg = c.red_soft, bg = c.none },
    GitSignsDeletePreview = { link = 'DiffDelete' },
    GitSignsDeleteVirtLn = { link = 'DiffDelete' },
  }
end

return gitsigns

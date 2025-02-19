function gitsigns(opts, c)
  return {
    GitSignsAdd = { fg = c.fg.green_soft },
    GitSignsAddInline = { link = 'DiffText' },
    GitSignsAddLn = { bg = c.bg.green },
    GitSignsAddNr = { fg = c.fg.green_soft },
    GitSignsAddPreview = { link = 'DiffAdd' },
    GitSignsAddVirtLnInline = { link = 'DiffText' },
    GitSignsChange = { fg = c.fg.gold_bolder },
    GitSignsChangeInline = { link = 'DiffText' },
    GitSignsChangeLn = { bg = c.bg.gold },
    GitSignsChangeNr = { fg = c.fg.gold_soft },
    GitSignsChangeVirtLnInline = { link = 'DiffText' },
    GitSignsDelete = { fg = c.fg.red_bolder },
    GitSignsDeleteInline = { bg = c.fg.red_soft },
    GitSignsDeleteNr = { fg = c.fg.red_soft, bg = c.none },
    GitSignsDeletePreview = { link = 'DiffDelete' },
    GitSignsDeleteVirtLn = { link = 'DiffDelete' },
  }
end

return gitsigns

function gitsigns(opts, c)
  return {
    GitSignsAdd = { fg = c.fg.green30 },
    GitSignsAddInline = { link = 'DiffText' },
    GitSignsAddLn = { bg = c.bg.diff_add },
    GitSignsAddNr = { fg = c.fg.green45 },
    GitSignsAddPreview = { link = 'DiffAdd' },
    GitSignsAddVirtLnInline = { link = 'DiffText' },
    GitSignsChange = { fg = c.fg.gold30 },
    GitSignsChangeInline = { link = 'DiffText' },
    GitSignsChangeLn = { bg = c.bg.diff_change },
    GitSignsChangeNr = { fg = c.fg.gold45 },
    GitSignsChangeVirtLnInline = { link = 'DiffText' },
    GitSignsDelete = { fg = c.fg.red30 },
    GitSignsDeleteInline = { link = 'DiffDelete' },
    GitSignsDeleteNr = { fg = c.fg.red45 },
    GitSignsDeletePreview = { link = 'DiffDelete' },
    GitSignsDeleteVirtLn = { link = 'DiffDelete' },
  }
end

return gitsigns

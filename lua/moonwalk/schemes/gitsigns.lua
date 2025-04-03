function gitsigns(opts, c)
  return {
    GitSignsAdd = { fg = c.fg.green45 },
    GitSignsAddInline = { link = 'DiffText' },
    GitSignsAddLn = { bg = c.bg.diff_add30 },
    GitSignsAddNr = { fg = c.fg.green45 },
    GitSignsAddPreview = { link = 'DiffAdd' },
    GitSignsAddVirtLnInline = { link = 'DiffText' },
    GitSignsChange = { fg = c.fg.blue45 },
    GitSignsChangeInline = { link = 'DiffText' },
    GitSignsChangeLn = { bg = c.bg.diff_change30 },
    GitSignsChangeNr = { fg = c.fg.blue45 },
    GitSignsChangeVirtLnInline = { link = 'DiffText' },
    GitSignsDelete = { fg = c.fg.red45 },
    GitSignsDeleteInline = { link = 'DiffDelete' },
    GitSignsDeleteNr = { fg = c.fg.red45 },
    GitSignsDeletePreview = { link = 'DiffDelete' },
    GitSignsDeleteVirtLn = { link = 'DiffDelete' },
  }
end

return gitsigns

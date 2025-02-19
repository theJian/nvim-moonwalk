function diagnostic(opts, c)
  return {
    DiagnosticError = { fg = c.fg.red_bold },
    DiagnosticWarn = { fg = c.fg.gold_bold },
    DiagnosticInfo = { fg = c.fg.primary_bold },
    DiagnosticHint = { fg = c.fg.soft },
    DiagnosticOk = { fg = c.fg.green_bold },
    DiagnosticUnderlineError = { sp = c.fg.red_bolder, underline = true },
    DiagnosticUnderlineWarn = { sp = c.fg.gold_bolder, underline = true },
    DiagnosticUnderlineInfo = { sp = c.bg.normal2, underline = true },
    DiagnosticUnderlineHint = { sp = c.fg.primary_bold, underline = true },
    DiagnosticUnderlineOk = { sp = c.fg.green_bold, underline = true },
    DiagnosticVirtualTextError = { fg = c.fg.red_soft },
    DiagnosticVirtualTextWarn = { fg = c.fg.gold_bold },
    DiagnosticVirtualTextInfo = { fg = c.fg.soft },
    DiagnosticVirtualTextHint = { fg = c.fg.blue_bold },
    DiagnosticVirtualTextOk = { fg = c.fg.green_soft },
    DiagnosticFloatingError = { link = 'DiagnosticError' },
    DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
    DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
    DiagnosticFloatingHint = { link = 'DiagnosticHint' },
    DiagnosticFloatingOk = { link = 'DiagnosticOk' },
    DiagnosticDeprecated = { fg = c.fg.soft, strikethrough = true },
    DiagnosticUnnecessary = { fg = c.fg.softer },
  }
end

return diagnostic

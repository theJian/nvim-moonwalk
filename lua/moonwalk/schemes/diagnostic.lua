function diagnostic(opts, c)
  return {
    DiagnosticError = { fg = c.red_bold },
    DiagnosticWarn = { fg = c.gold_bold },
    DiagnosticInfo = { fg = c.fg_soft },
    DiagnosticHint = { fg = c.blue },
    DiagnosticOk = { fg = c.green_bold },
    DiagnosticUnderlineError = { sp = c.red_bolder, underline = true },
    DiagnosticUnderlineWarn = { sp = c.gold_bolder, underline = true },
    DiagnosticUnderlineInfo = { sp = c.bg2, underline = true },
    DiagnosticUnderlineHint = { sp = c.blue_bold, underline = true },
    DiagnosticUnderlineOk = { sp = c.green_bold, underline = true },
    DiagnosticVirtualTextError = { fg = c.red_soft },
    DiagnosticVirtualTextWarn = { fg = c.gold_bold },
    DiagnosticVirtualTextInfo = { fg = c.fg_soft },
    DiagnosticVirtualTextHint = { fg = c.blue_cool_bold },
    DiagnosticVirtualTextOk = { fg = c.green_soft },
    DiagnosticFloatingError = { link = 'DiagnosticError' },
    DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
    DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
    DiagnosticFloatingHint = { link = 'DiagnosticHint' },
    DiagnosticFloatingOk = { link = 'DiagnosticOk' },
    DiagnosticDeprecated = { fg = c.fg_soft, strikethrough = true },
    DiagnosticUnnecessary = { fg = c.fg_softer },
  }
end

return diagnostic

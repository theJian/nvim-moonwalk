function diagnostic(opts, c)
  return {
    DiagnosticError = { fg = c.red_bold },
    DiagnosticWarn = { fg = c.gold_bold },
    DiagnosticInfo = { fg = c.fg_soft },
    DiagnosticHint = { fg = c.blue },
    DiagnosticOk = { fg = c.green_bold },
    DiagnosticVirtualTextError = { fg = c.red_soft },
    DiagnosticVirtualTextWarn = { fg = c.gold_bold },
    DiagnosticVirtualTextInfo = { fg = c.fg_soft },
    DiagnosticVirtualTextHint = { fg = c.blue_cool_bold },
    DiagnosticVirtualTextOk = { fg = c.green_soft },
    DiagnosticDeprecated = { fg = c.fg_soft, strikethrough = true },
    DiagnosticUnnecessary = { link = 'DiagnosticDeprecated' },
  }
end

return diagnostic

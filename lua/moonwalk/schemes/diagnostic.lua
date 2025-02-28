function diagnostic(opts, c)
  return {
    DiagnosticError = { fg = c.fg.red30 },
    DiagnosticWarn = { fg = c.fg.gold30 },
    DiagnosticInfo = { fg = c.fg.soft30 },
    DiagnosticHint = { fg = c.fg.cyan30 },
    DiagnosticOk = { fg = c.fg.green30 },
    DiagnosticUnderlineError = { sp = c.fg.red45, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.fg.gold30, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.fg.soft45, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.fg.cyan30, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.fg.green30, undercurl = true },
    DiagnosticVirtualTextError = { fg = c.fg.red30 },
    DiagnosticVirtualTextWarn = { fg = c.fg.gold30 },
    DiagnosticVirtualTextInfo = { fg = c.fg.soft30 },
    DiagnosticVirtualTextHint = { fg = c.fg.cyan30 },
    DiagnosticVirtualTextOk = { fg = c.fg.green30 },
    DiagnosticFloatingError = { fg = c.fg.red },
    DiagnosticFloatingWarn = { fg = c.fg.gold },
    DiagnosticFloatingInfo = { fg = c.fg.soft },
    DiagnosticFloatingHint = { fg = c.fg.cyan },
    DiagnosticFloatingOk = { fg = c.green_bold },
    DiagnosticDeprecated = { fg = c.fg.red45, strikethrough = true },
    DiagnosticUnnecessary = { fg = c.fg.soft45, strikethrough = true },
  }
end

return diagnostic

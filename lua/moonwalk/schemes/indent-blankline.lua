local function indent_blankline(opts, c)
  return {
    IblScope = { fg = c.fg.blue30, bold = true },
  }
end

return indent_blankline

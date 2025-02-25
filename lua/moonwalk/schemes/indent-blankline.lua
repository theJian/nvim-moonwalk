local function indent_blankline(opts, c)
  return {
    IblScope = { fg = c.fg.purple30, bold = true },
  }
end

return indent_blankline

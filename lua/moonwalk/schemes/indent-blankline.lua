local function indent_blankline(opts, c)
  return {
    IblScope = { fg = c.fg.alt_bolder },
  }
end

return indent_blankline

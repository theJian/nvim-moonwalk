local function indent_blankline(opts, c)
  return {
    IblScope = { fg = c.alt_bolder },
  }
end

return indent_blankline

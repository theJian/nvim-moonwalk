local function indent_blankline(opts, c)
  return {
    IblScope = { fg = c.blue_bolder },
  }
end

return indent_blankline

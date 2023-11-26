local function syntax(opts, c)
  return {
    Comment = { fg = c.fg_softer, italic = true },

    Constant = { fg = c.red },
    String = { fg = c.green },
    Character = { link = 'String' },
    Number = { fg = c.red },
    Boolean = { fg = c.red },
    Float = { fg = c.red },

    Identifier = { fg = c.blue },
    Function = { fg = c.blue_bold },

    Statement = { fg = c.fg },
    Conditional = { fg = c.red_bold },
    Repeat = { fg = c.blue_cool },
    Label = { fg = c.blue_cool_bold },
    Operator = { fg = c.fg },
    Keyword = { fg = c.fg },
    Exception = { fg = c.gold },

    PreProc = { fg = c.blue_alt, italic = true },
    Include = { fg = c.blue_alt },
    Define = { fg = c.gold_bold },
    Macro = { fg = c.red_bold },
    PreCondit = { fg = c.green_bold },

    Type = { fg = c.purple },
    StorageClass = { fg = c.purple_bold },
    Structure = { fg = c.purple },
    Typedef = { fg = c.purple },

    Special = { fg = c.red_bold },
    SpecialChar = { fg = c.red_bold },
    Tag = { fg = c.red_bold },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.green_soft },
    Debug = { fg = c.red_bold },

    Underlined = { fg = c.red_bold },
    Ignore = { fg = c.fg_softest },
    Error = { fg = c.red },
    Todo = { fg = c.red_bolder, bold = true },
  }
end

return syntax

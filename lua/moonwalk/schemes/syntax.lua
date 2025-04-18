local function syntax(opts, c)
  return {
    Comment = { fg = c.fg.soft45, italic = true },

    Constant = { fg = c.fg.gold_bold },
    String = { fg = c.fg.green },
    Character = { link = 'String' },
    Number = { fg = c.fg.gold_bold },
    Boolean = { fg = c.fg.gold_bold },
    Float = { fg = c.fg.gold_bold },

    Identifier = { fg = c.fg.blue_bold },
    Function = { fg = c.fg.blue },

    Statement = { fg = c.fg.normal },
    Conditional = { fg = c.fg.purple },
    Repeat = { fg = c.fg.purple },
    Label = { fg = c.fg.purple_bold },
    Operator = { fg = c.fg.normal },
    Keyword = { fg = c.fg.normal },
    Exception = { fg = c.fg.red },

    PreProc = { fg = c.fg.cyan_bold, italic = true },
    Include = { fg = c.fg.cyan_bold },
    Define = { fg = c.fg.green_bold },
    Macro = { fg = c.fg.red_bold },
    PreCondit = { fg = c.fg.green_bold },

    Type = { fg = c.fg.gold },
    StorageClass = { fg = c.fg.cyan },
    Structure = { fg = c.fg.normal },
    Typedef = { fg = c.fg.normal },

    Special = { fg = c.fg.red_bold },
    SpecialChar = { fg = c.fg.red_bold },
    Tag = { fg = c.fg.green_bold },
    Delimiter = { fg = c.fg.soft },
    SpecialComment = { fg = c.fg.soft45, bold = true },
    Debug = { fg = c.fg.red, bold = true },

    Underlined = { fg = c.fg.red },
    Ignore = { fg = c.fg.soft30 },
    Error = { fg = c.fg.red },
    Todo = { fg = c.fg.green, bold = true },
  }
end

return syntax

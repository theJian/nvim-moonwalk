local function syntax(opts, c)
  return {
    Comment = { fg = c.fg.soft45, italic = true },

    Constant = { fg = c.fg.gold_bold },
    String = { fg = c.fg.green },
    Character = { link = 'String' },
    Number = { fg = c.fg.green_bold },
    Boolean = { fg = c.fg.red_bold },
    Float = { fg = c.fg.green_bold },

    Identifier = { fg = c.fg.blue_bold },
    Function = { fg = c.fg.blue },

    Statement = { fg = c.fg.normal },
    Conditional = { fg = c.fg.red_bold, italic = true },
    Repeat = { fg = c.fg.cyan_bold, italic = true },
    Label = { fg = c.fg.cyan_bold },
    Operator = { fg = c.fg.red_bold },
    Keyword = { fg = c.fg.purple },
    Exception = { fg = c.fg.gold },

    PreProc = { fg = c.fg.cyan, italic = true },
    Include = { fg = c.fg.cyan },
    Define = { fg = c.fg.gold_bold },
    Macro = { fg = c.fg.red_bold },
    PreCondit = { fg = c.fg.red_bold },

    Type = { fg = c.fg.gold, italic = true },
    StorageClass = { fg = c.fg.purple_bold },
    Structure = { fg = c.fg.purple_bold },
    Typedef = { fg = c.fg.purple },

    Special = { fg = c.fg.red_bold },
    SpecialChar = { fg = c.fg.red_bold },
    Tag = { fg = c.fg.red_bold },
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

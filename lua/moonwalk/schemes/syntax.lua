local function syntax(opts, c)
  return {
    Comment = { fg = c.fg.softer, italic = true },

    Constant = { fg = c.red },
    String = { fg = c.green },
    Character = { link = 'String' },
    Number = { fg = c.red },
    Boolean = { fg = c.red },
    Float = { fg = c.red },

    Identifier = { fg = c.primary },
    Function = { fg = c.primary_bold },

    Statement = { fg = c.fg.normal },
    Conditional = { fg = c.red_bold },
    Repeat = { fg = c.blue },
    Label = { fg = c.blue_bold },
    Operator = { fg = c.fg.normal },
    Keyword = { fg = c.fg.normal },
    Exception = { fg = c.gold },

    PreProc = { fg = c.alt, italic = true },
    Include = { fg = c.alt },
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
    Delimiter = { fg = c.fg.normal },
    SpecialComment = { fg = c.fg.softer },
    Debug = { fg = c.red_bold },

    Underlined = { fg = c.red_bold },
    Ignore = { fg = c.fg.softest },
    Error = { fg = c.red },
    Todo = { fg = c.red_bolder, bold = true },
  }
end

return syntax

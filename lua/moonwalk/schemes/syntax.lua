local function syntax(opts, c)
  return {
    Comment = { fg = c.fg.softer, italic = true },

    Constant = { fg = c.fg.red },
    String = { fg = c.fg.green },
    Character = { link = 'String' },
    Number = { fg = c.fg.red },
    Boolean = { fg = c.fg.red },
    Float = { fg = c.fg.red },

    Identifier = { fg = c.fg.primary },
    Function = { fg = c.fg.primary_bold },

    Statement = { fg = c.fg.normal },
    Conditional = { fg = c.fg.red_bold },
    Repeat = { fg = c.fg.blue },
    Label = { fg = c.fg.blue_bold },
    Operator = { fg = c.fg.normal },
    Keyword = { fg = c.fg.normal },
    Exception = { fg = c.fg.gold },

    PreProc = { fg = c.fg.alt, italic = true },
    Include = { fg = c.fg.alt },
    Define = { fg = c.fg.gold_bold },
    Macro = { fg = c.fg.red_bold },
    PreCondit = { fg = c.fg.green_bold },

    Type = { fg = c.fg.purple },
    StorageClass = { fg = c.fg.purple_bold },
    Structure = { fg = c.fg.purple },
    Typedef = { fg = c.fg.purple },

    Special = { fg = c.fg.red_bold },
    SpecialChar = { fg = c.fg.red_bold },
    Tag = { fg = c.fg.red_bold },
    Delimiter = { fg = c.fg.normal },
    SpecialComment = { fg = c.fg.softer },
    Debug = { fg = c.fg.red_bold },

    Underlined = { fg = c.fg.red_bold },
    Ignore = { fg = c.fg.softest },
    Error = { fg = c.fg.red },
    Todo = { fg = c.fg.red_bolder, bold = true },
  }
end

return syntax

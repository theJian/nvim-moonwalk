local function treesitter(opts, c)
  return {
    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

    -- misc
    ['@comment'] = { link = 'Comment' }, -- line and block comments
    ['@comment.documentation'] = { link = 'SpecialComment' }, -- comments documenting code
    ['@error'] = { fg = c.red_bolder }, -- syntax/parser errors
    ['@none'] = { link = 'Normal' }, -- completely disable the highlight
    ['@preproc'] = { link = 'PreProc' }, -- various preprocessor directives & shebangs
    ['@define'] = { link = 'Define' }, -- preprocessor definition directives
    ['@operator'] = { link = 'Operator' }, -- symbolic operators (e.g. `+` / `*`)

    -- punctuation
    ['@punctuation.delimiter'] = { link = 'Delimiter' }, -- delimiters (e.g. `;` / `.` / `,`)
    ['@punctuation.bracket'] = { fg = c.fg }, -- brackets (e.g. `()` / `{}` / `[]`)
    ['@punctuation.special'] = { link = 'SpecialChar' }, -- special symbols (e.g. `{}` in string interpolation)

    -- literals
    ['@string'] = { link = 'String' }, -- string literals
    ['@string.documentation'] = { link = 'SpecialComment' }, -- string documenting code (e.g. Python docstrings)
    ['@string.regex'] = { fg = c.green_bold }, -- regular expressions
    ['@string.escape'] = { fg = c.red }, -- escape sequences
    ['@string.special'] = { link = 'SpecialChar' }, -- other special strings (e.g. dates)

    ['@character'] = { link = 'Character' }, -- character literals
    ['@character.special'] = { link = 'SpecialChar' }, -- special characters (e.g. wildcards)

    ['@boolean'] = { link = 'Boolean' }, -- boolean literals
    ['@number'] = { link = 'Number' }, -- numeric literals
    ['@float'] = { link = 'Number' }, -- floating-point number literals

    -- functions
    ['@function'] = { link = 'Function' }, -- function definitions
    ['@function.builtin'] = { fg = c.blue_alt, italic = true }, -- built-in functions
    ['@function.call'] = { fg = c.blue_alt }, -- function calls
    ['@function.macro'] = { link = 'Macro' }, -- preprocessor macros

    ['@method'] = { link = 'Function' }, -- method definitions
    ['@method.call'] = { fg = c.blue_alt }, -- method calls

    ['@constructor'] = { fg = c.purple_bold }, -- constructor calls and definitions
    ['@parameter'] = { link = 'Identifier' }, -- parameters of a function

    -- keywords
    ['@keyword'] = { link = 'Keyword' }, -- various keywords
    ['@keyword.coroutine'] = { fg = c.green_bold, italic = true }, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ['@keyword.function'] = { fg = c.fg_bold, bold = true }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ['@keyword.operator'] = { fg = c.fg_bold, italic = true }, -- operators that are English words (e.g. `and` / `or`)
    ['@keyword.return'] = { fg = c.gold_bold, bold = true }, -- keywords like `return` and `yield`

    ['@conditional'] = { link = 'Conditional' }, -- keywords related to conditionals (e.g. `if` / `else`)
    ['@conditional.ternary'] = { link = 'Conditional' }, -- ternary operator (e.g. `?` / `:`)

    ['@repeat'] = { link = 'Repeat' }, -- keywords related to loops (e.g. `for` / `while`)
    ['@debug'] = { link = 'Debug' }, -- keywords related to debugging
    ['@label'] = { link = 'Label' }, -- GOTO and other labels (e.g. `label:` in C)
    ['@include'] = { link = 'Include' }, -- keywords for including modules (e.g. `import` / `from` in Python)
    ['@exception'] = { link = 'Exception' }, -- keywords related to exceptions (e.g. `throw` / `catch`)

    -- types
    ['@type'] = { link = 'Type' }, -- type or class definitions and annotations
    ['@type.builtin'] = { fg = c.purple, italic = true }, -- built-in types
    ['@type.definition'] = { fg = c.blue }, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ['@type.qualifier'] = { fg = c.fg, italic = true }, -- type qualifiers (e.g. `const`)

    ['@storageclass'] = { link = 'StorageClass' }, -- modifiers that affect storage in memory or life-time
    ['@attribute'] = { fg = c.gold }, -- attribute annotations (e.g. Python decorators)
    ['@field'] = { fg = c.fg }, -- object and struct fields
    ['@property'] = { fg = c.fg }, -- similar to `@field`

    -- identifiers
    ['@variable'] = { link = 'Identifier' }, -- various variable names
    ['@variable.builtin'] = { fg = c.fg, italic = true }, -- built-in variable names (e.g. `this`)

    ['@constant'] = { link = 'Constant' }, -- constant identifiers
    ['@constant.builtin'] = { fg = c.purple, italic = true }, -- built-in constant values
    ['@constant.macro'] = { fg = red, bold = true }, -- constants defined by the preprocessor

    ['@namespace'] = { fg = c.purple_bold }, -- modules or namespaces
    ['@symbol'] = { fg = c.gold }, -- symbols or atoms

    -- text
    ['@text'] = { link = 'Normal' }, -- non-structured text
    ['@text.strong'] = { fg = c.fg, bold = true }, -- bold text
    ['@text.emphasis'] = { fg = c.blue }, -- text with emphasis
    ['@text.underline'] = { link = 'Underlined' }, -- underlined text
    ['@text.strike'] = { fg = c.fg_softer, strikethrough = true }, -- strikethrough text
    ['@text.title'] = { fg = c.fg_bold, bold = true }, -- text that is part of a title
    ['@text.quote'] = { fg = c.fg_soft, italic = true }, -- text quotations
    ['@text.uri'] = { link = 'Tag' }, -- URIs (e.g. hyperlinks)
    ['@text.math'] = { fg = c.blue_bold }, -- math environments (e.g. `$ ... $` in LaTeX)
    ['@text.environment'] = { fg = c.green }, -- text environments of markup languages
    ['@text.environment.name'] = { fg = c.green_bold }, -- text indicating the type of an environment
    ['@text.reference'] = { fg = c.blue_cool }, -- text references, footnotes, citations, etc.

    ['@text.literal'] = { fg = c.fg_bold }, -- literal or verbatim text (e.g., inline code)

    ['@text.todo'] = { fg = c.white, bg = c.blue }, -- todo notes
    ['@text.note'] = { fg = c.white, bg = c.green_bold }, -- info notes
    ['@text.warning'] = { fg = c.white, bg = c.gold_bolder }, -- warning notes
    ['@text.danger'] = { fg = c.white, bg = c.red_bolder }, -- danger/error notes

    ['@text.diff.add'] = { link = 'DiffAdd' }, -- added text (for diff files)
    ['@text.diff.delete'] = { link = 'DiffDelete' }, -- deleted text (for diff files)

    -- tags
    ['@tag'] = { fg = c.purple, bold = true }, -- XML tag names
    ['@tag.attribute'] = { fg = c.blue }, -- XML tag attributes
    ['@tag.delimiter'] = { fg = c.fg }, -- XML tag delimiters

    -- conceal
    ['@conceal'] = { link = 'Conceal' }, -- for captures that are only used for concealing
  }
end

return treesitter

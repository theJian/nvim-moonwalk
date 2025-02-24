local function treesitter(opts, c)
  return {
    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

    -- misc
    ['@comment'] = { link = 'Comment' }, -- line and block comments
    ['@comment.documentation'] = { link = 'SpecialComment' }, -- comments documenting code
    ['@comment.error'] = { fg = c.fg.red45 }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED`)
    ['@comment.warning'] = { fg = c.fg.gold45 }, -- warning-type comments (e.g. `WARNING`, `FIX`, `HACK`)
    ['@comment.todo'] = { fg = c.fg.green45 }, -- todo-type comments (e.g. `TODO`, `WIP`)
    ['@comment.note'] = { fg = c.fg.cyan45 }, -- note-type comments (e.g. `NOTE`, `INFO`, `XXX`)
    ['@error'] = { sp = c.fg.red, undercurl = true }, -- syntax/parser errors
    ['@none'] = { link = 'Normal' }, -- completely disable the highlight
    ['@preproc'] = { link = 'PreProc' }, -- various preprocessor directives & shebangs
    ['@define'] = { link = 'Define' }, -- preprocessor definition directives
    ['@operator'] = { link = 'Operator' }, -- symbolic operators (e.g. `+` / `*`)

    -- punctuation
    ['@punctuation.delimiter'] = { link = 'Delimiter' }, -- delimiters (e.g. `;` / `.` / `,`)
    ['@punctuation.bracket'] = { fg = c.fg.soft }, -- brackets (e.g. `()` / `{}` / `[]`)
    ['@punctuation.special'] = { link = 'SpecialChar' }, -- special symbols (e.g. `{}` in string interpolation)

    -- literals
    ['@string'] = { link = 'String' }, -- string literals
    ['@string.documentation'] = { link = 'SpecialComment' }, -- string documenting code (e.g. Python docstrings)
    ['@string.regex'] = { fg = c.fg.purple }, -- regular expressions
    ['@string.escape'] = { fg = c.fg.red_bold }, -- escape sequences
    ['@string.special'] = { link = 'SpecialChar' }, -- other special strings (e.g. dates)

    ['@character'] = { link = 'Character' }, -- character literals
    ['@character.special'] = { link = 'SpecialChar' }, -- special characters (e.g. wildcards)

    ['@boolean'] = { link = 'Boolean' }, -- boolean literals
    ['@number'] = { link = 'Number' }, -- numeric literals
    ['@float'] = { link = 'Number' }, -- floating-point number literals

    -- functions
    ['@function'] = { link = 'Function' }, -- function definitions
    ['@function.builtin'] = { fg = c.fg.blue_bold, italic = true }, -- built-in functions
    ['@function.call'] = { fg = c.fg.blue_bold }, -- function calls
    ['@function.macro'] = { link = 'Macro' }, -- preprocessor macros

    ['@method'] = { link = 'Function' }, -- method definitions
    ['@method.call'] = { fg = c.fg.blue_bold }, -- method calls

    ['@constructor'] = { fg = c.fg.purple_bold }, -- constructor calls and definitions
    ['@parameter'] = { fg = c.fg.blue_bold }, -- parameters of a function

    -- keywords
    ['@keyword'] = { link = 'Keyword' }, -- various keywords
    ['@keyword.coroutine'] = { fg = c.fg.green_bold, italic = true }, -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ['@keyword.function'] = { fg = c.fg.soft }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ['@keyword.operator'] = { fg = c.fg.bold, italic = true }, -- operators that are English words (e.g. `and` / `or`)
    ['@keyword.return'] = { fg = c.fg.purple, bold = true }, -- keywords like `return` and `yield`

    ['@conditional'] = { link = 'Conditional' }, -- keywords related to conditionals (e.g. `if` / `else`)
    ['@conditional.ternary'] = { link = 'Conditional' }, -- ternary operator (e.g. `?` / `:`)

    ['@repeat'] = { link = 'Repeat' }, -- keywords related to loops (e.g. `for` / `while`)
    ['@debug'] = { link = 'Debug' }, -- keywords related to debugging
    ['@label'] = { link = 'Label' }, -- GOTO and other labels (e.g. `label:` in C)
    ['@include'] = { link = 'Include' }, -- keywords for including modules (e.g. `import` / `from` in Python)
    ['@exception'] = { link = 'Exception' }, -- keywords related to exceptions (e.g. `throw` / `catch`)

    -- types
    ['@type'] = { link = 'Type' }, -- type or class definitions and annotations
    ['@type.builtin'] = { fg = c.fg.gold_bold, italic = true }, -- built-in types
    ['@type.definition'] = { fg = c.fg.cyan }, -- identifiers in type definitions (e.g. `typedef <type> <identifier>` in C)
    ['@type.qualifier'] = { fg = c.fg.normal, italic = true }, -- type qualifiers (e.g. `const`)

    ['@storageclass'] = { link = 'StorageClass' }, -- modifiers that affect storage in memory or life-time
    ['@attribute'] = { fg = c.fg.cyan }, -- attribute annotations (e.g. Python decorators)
    ['@field'] = { fg = c.fg.bold }, -- object and struct fields
    ['@property'] = { fg = c.fg.bold }, -- similar to `@field`

    -- identifiers
    ['@variable'] = { link = 'Identifier' }, -- various variable names
    ['@variable.builtin'] = { fg = c.fg.blue_bold, italic = true }, -- built-in variable names (e.g. `this`)

    ['@constant'] = { link = 'Constant' }, -- constant identifiers
    ['@constant.builtin'] = { fg = c.fg.gold_bold, italic = true }, -- built-in constant values
    ['@constant.macro'] = { fg = c.fg.red_bold, bold = true }, -- constants defined by the preprocessor

    ['@namespace'] = { fg = c.fg.purple_bold }, -- modules or namespaces
    ['@symbol'] = { fg = c.fg.gold }, -- symbols or atoms

    -- text
    ['@text'] = { fg = c.fg.normal }, -- non-structured text
    ['@text.strong'] = { fg = c.fg.bold, bold = true }, -- bold text
    ['@text.emphasis'] = { fg = c.fg.normal, italic = true }, -- text with emphasis
    ['@text.underline'] = { link = 'Underlined' }, -- underlined text
    ['@text.strike'] = { fg = c.fg.soft, strikethrough = true }, -- strikethrough text
    ['@text.title'] = { fg = c.fg.bold, bold = true, underline = true }, -- text that is part of a title
    ['@text.quote'] = { fg = c.fg.soft, italic = true }, -- text quotations
    ['@text.uri'] = { link = 'Tag' }, -- URIs (e.g. hyperlinks)
    ['@text.math'] = { fg = c.fg.blue_bold }, -- math environments (e.g. `$ ... $` in LaTeX)
    ['@text.environment'] = { fg = c.fg.green, italic = true }, -- text environments of markup languages
    ['@text.environment.name'] = { fg = c.fg.green, bold = true }, -- text indicating the type of an environment
    ['@text.reference'] = { fg = c.fg.blue }, -- text references, footnotes, citations, etc.

    ['@text.literal'] = { fg = c.fg.bold }, -- literal or verbatim text (e.g., inline code)

    ['@text.todo'] = { fg = c.fg.green45 }, -- todo notes
    ['@text.note'] = { fg = c.fg.cyan45 }, -- info notes
    ['@text.warning'] = { fg = c.fg.gold45 }, -- warning notes
    ['@text.danger'] = { fg = c.fg.red45 }, -- danger/error notes

    ['@text.diff.add'] = { link = 'DiffAdd' }, -- added text (for diff files)
    ['@text.diff.delete'] = { link = 'DiffDelete' }, -- deleted text (for diff files)

    -- tags
    ['@tag'] = { fg = c.fg.purple, bold = true }, -- XML tag names
    ['@tag.attribute'] = { fg = c.fg.blue }, -- XML tag attributes
    ['@tag.delimiter'] = { fg = c.fg.soft }, -- XML tag delimiters

    -- conceal
    ['@conceal'] = { link = 'Conceal' }, -- for captures that are only used for concealing
    ['@conceal.json'] = { link = 'Conceal' }, -- for captures that are only used for concealing

    -- markup
    ['@markup.heading'] = { fg = c.fg.cyan_bold, bold = true },
    ['@markup.heading.1.delimiter.vimdoc'] = { fg = c.fg.cyan30 },
    ['@markup.heading.2.delimiter.vimdoc'] = { fg = c.fg.cyan30 },
  }
end

return treesitter

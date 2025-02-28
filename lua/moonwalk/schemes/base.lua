local function base(opts, c)
  return {
    Normal = { fg = c.fg.normal, bg = opts.transparent and 'NONE' or c.bg.normal },
    NormalNC = {
      fg = c.fg.normal,
      bg = (opts.transparent and 'NONE' or c.bg.normal),
    },

    Title = {
      fg = c.fg.bold,
      bg = 'NONE',
      blend = vim.o.winblend or 0,
      bold = true,
    },

    FloatTitle = {
      fg = c.fg.bold,
      bg = c.bg.popup,
      blend = vim.o.winblend or 0,
      bold = true,
    },
    FloatBorder = {
      fg = c.fg.soft30,
      bg = c.bg.popup,
      blend = vim.o.winblend or 0,
    },
    NormalFloat = {
      fg = c.fg.normal,
      bg = c.bg.popup,
      blend = vim.o.winblend or 0,
    },

    Italic = { italic = true },
    Bold = { bold = true },

    Conceal = { fg = c.fg.cyan45 },
    SpecialKey = { fg = c.fg.soft },

    TabLine = { fg = c.fg.normal, bg = c.bg.normal, underline = true },
    TabLineSel = { fg = c.fg.blue, bg = 'NONE', bold = true, underline = true },
    TabLineFill = { fg = c.fg.soft30, bg = c.bg.normal, underline = true },

    WinBar = { fg = c.fg.blue, underdashed = true },
    WinBarNC = {
      fg = c.fg.soft30,
      bg = 'NONE',
      underdashed = true,
    },

    StatusLine = { fg = c.fg.normal, bg = c.bg.popup },
    StatusLineNC = { fg = c.fg.soft30, bg = 'NONE' },
    StatusInactive = { fg = c.fg.soft },
    StatusNormal = { fg = c.fg.normal },
    StatusInsert = { fg = c.fg.blue_bold },
    StatusVisual = { fg = c.fg.gold },
    StatusReplace = { fg = c.fg.red },
    StatusCommand = { fg = c.fg.green_bold },
    StatusTerminal = { link = 'StatusInsert' },

    Cursor = { reverse = true },
    CursorIM = { link = 'Cursor' },
    lCursor = { link = 'Cursor' },

    CursorLineNr = { fg = c.fg.bold },
    LineNr = { link = 'NonText' },

    WinSeparator = {
      fg = c.fg.soft,
      bg = opts.transparent and 'NONE' or c.bg.normal,
      bold = false,
    },
    VertSplit = { link = 'WinSeparator' },

    Folded = { fg = c.fg.soft30, bg = 'NONE' },
    FoldColumn = { fg = c.fg.soft45, bg = 'NONE', bold = true },

    NonText = { fg = c.fg.soft30, bg = 'NONE' },
    EndOfBuffer = { link = 'NonText' },
    Whitespace = { link = 'NonText' },
    SignColumn = { bg = 'NONE' },

    DiffAdd = { bg = c.bg.diff_add30 },
    DiffChange = { bg = c.bg.diff_change30 },
    DiffDelete = { fg = c.fg.red, bg = c.bg.diff_delete30 },
    DiffText = { bg = c.bg.diff_text30 },
    DiffAdded = { fg = c.fg.green, bg = c.bg.diff_add30 },
    DiffRemoved = { fg = c.fg.red, bg = c.bg.diff_delete30 },
    DiffChanged = { fg = c.fg.green, bg = c.bg.diff_change30 },
    DiffOldFile = { fg = c.fg.red, bold = true, underline = true },
    DiffNewFile = { fg = c.fg.green, bold = true, underline = true },
    DiffFile = { fg = c.fg.blue, bold = true },
    DiffLine = { fg = c.fg.red },
    DiffIndexLine = { fg = c.fg.soft },

    Added = { link = 'DiffAdded' },
    Removed = { link = 'DiffRemoved' },
    Changed = { link = 'DiffChanged' },

    ErrorMsg = { fg = c.fg.red, bold = true },
    WarningMsg = { fg = c.fg.gold45 },
    Question = { fg = c.fg.bold, italic = true },

    Pmenu = { fg = 'NONE', bg = c.bg.popup },
    PmenuSel = { fg = 'NONE', bg = c.bg.popup_line or c.bg.popup_line30, bold = true, blend = 0 },
    PmenuSbar = { fg = 'NONE', bg = c.bg.popup },
    PmenuThumb = { fg = 'NONE', bg = c.fg.blue, blend = 0 },
    PmenuKind = { fg = c.fg.bold, italic = true },
    PmenuKindSel = { fg = c.fg.bold, bold = true },
    PmenuExtra = { fg = c.fg.gold45 },
    PmenuExtraSel = { fg = c.fg.gold45, bold = true },

    WildMenu = { bg = c.bg.popup },

    Search = { bg = c.bg.search30 },
    IncSearch = { bg = c.bg.search30, bold = true },
    Substitute = { bg = c.bg.visual30, bold = true, underline = true },
    CurSearch = { link = 'IncSearch' },
    Visual = { bg = c.bg.visual30 },
    VisualNOS = { link = 'Visual' },

    CursorColumn = { bg = c.bg.current_line },
    ColorColumn = { fg = c.fg.soft30 },
    CursorLine = { bg = c.bg.current_line },
    CursorLineFold = { link = 'FoldColumn' },
    CursorLineSign = { bg = 'NONE' },
    MatchParen = { bold = true, underline = true },

    SpellBad = { undercurl = true },
    SpellCap = { undercurl = true },
    SpellLocal = { undercurl = true },
    SpellRare = { undercurl = true },

    Terminal = { fg = c.fg.bold, bg = c.bg.normal },
    Directory = { fg = c.fg.blue, bg = 'NONE' },
    QuickFixLine = { bg = c.bg.current_line },

    MsgArea = { bg = 'NONE' },

    FloatShadow = { bg = c.fg.soft30 },
    FloatShadowThrough = { bg = 'NONE', blend = 100 },

    MoreMsg = { fg = c.fg.green, bold = true },
    ModeMsg = { fg = c.fg.normal, bold = true },
  }
end

return base

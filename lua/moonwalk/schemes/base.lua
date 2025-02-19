local function base(opts, c)
  return {
    Normal = { fg = c.fg.normal, bg = opts.transparent and c.none or c.bg.normal },
    NormalNC = {
      fg = c.fg.normal,
      bg = (opts.transparent and c.none or c.bg.normal),
    },

    Title = {
      fg = c.fg.bold,
      bg = c.none,
      blend = vim.o.winblend or 0,
      bold = true,
    },

    FloatTitle = {
      fg = c.fg.bold,
      bg = c.bg.float,
      blend = vim.o.winblend or 0,
      bold = true,
    },
    FloatBorder = {
      fg = c.bg.normal2,
      bg = c.bg.float,
      blend = vim.o.winblend or 0,
    },
    NormalFloat = {
      fg = c.fg.normal,
      bg = c.bg.float,
      blend = vim.o.winblend or 0,
    },

    Italic = { italic = true },
    Bold = { bold = true },

    Conceal = { fg = c.fg.green_soft },
    SpecialKey = { fg = c.fg.soft },

    TabLine = { bg = c.bg.normal, fg = c.bg.normal2, underline = true },
    TabLineSel = { fg = c.fg.blue, bg = c.none, bold = true, underline = true },
    TabLineFill = { fg = c.bg.normal2, bg = c.bg.normal, underline = true },

    WinBar = { fg = c.fg.blue, underdashed = true },
    WinBarNC = {
      fg = c.bg.normal2,
      bg = c.none,
      underdashed = true,
    },

    StatusLine = { fg = c.fg.normal, bg = c.bg.normal2 },
    StatusLineNC = { fg = c.bg.normal2, bg = c.none },
    StatusInactive = { fg = c.fg.soft },
    StatusNormal = { fg = c.fg.normal },
    StatusInsert = { fg = c.fg.primary_bold },
    StatusVisual = { fg = c.fg.gold },
    StatusReplace = { fg = c.fg.red },
    StatusCommand = { fg = c.fg.green },
    StatusTerminal = { link = 'StatusInsert' },

    Cursor = { reverse = true },
    CursorIM = { link = 'Cursor' },
    lCursor = { link = 'Cursor' },

    CursorLineNr = { fg = c.fg.bold },
    LineNr = { link = 'NonText' },

    WinSeparator = {
      fg = c.bg.normal2,
      bg = opts.transparent and c.none or c.bg.normal,
      bold = false,
    },
    VertSplit = { link = 'WinSeparator' },

    Folded = { fg = c.fg.softest, bg = c.none, italic = true },
    FoldColumn = { fg = c.fg.primary_bold, bg = c.none },

    NonText = { fg = c.fg.softest, bg = c.none },
    EndOfBuffer = { link = 'NonText' },
    Whitespace = { link = 'NonText' },
    SignColumn = { bg = c.none },

    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { fg = c.fg.red_soft, bg = c.diff_delete },
    DiffText = { bg = c.diff_text },
    DiffAdded = { fg = c.fg.green, bg = c.diff_add },
    DiffRemoved = { fg = c.fg.red, bg = c.diff_delete },
    DiffChanged = { fg = c.fg.green, bg = c.diff_change },
    DiffOldFile = { fg = c.fg.red, bold = true, underline = true },
    DiffNewFile = { fg = c.fg.green, bold = true, underline = true },
    DiffFile = { fg = c.fg.purple },
    DiffLine = { fg = c.fg.purple },
    DiffIndexLine = { fg = c.fg.purple },

    ErrorMsg = { fg = c.fg.red_bold },
    WarningMsg = { fg = c.fg.bold, bg = c.bg.gold },
    Question = { fg = c.fg.bold },

    Pmenu = { fg = c.none, bg = c.bg.popup },
    PmenuSel = { fg = c.none, bg = c.bg.popup_line, bold = true, blend = 0 },
    PmenuSbar = { fg = c.none, bg = c.bg.popup },
    PmenuThumb = { fg = c.none, bg = c.fg.red_bold, blend = 0 },
    PmenuKind = { fg = c.fg.softer },
    PmenuKindSel = { fg = c.fg.soft },
    PmenuExtra = { fg = c.fg.softer },
    PmenuExtraSel = { fg = c.fg.soft },

    WildMenu = { bg = c.bg.popup },

    Search = { bg = c.bg.gold },
    IncSearch = { bg = c.bg.inc_search, bold = true },
    Substitute = { fg = c.white, bg = c.fg.red_bold, bold = true },
    CurSearch = { link = 'IncSearch' },
    Visual = { bg = c.bg.visual },
    VisualNOS = { link = 'Visual' },

    CursorColumn = { bg = c.bg.current_line },
    ColorColumn = { fg = c.bg.normal2 },
    CursorLine = { bg = c.bg.current_line },
    CursorLineFold = { link = 'FoldColumn' },
    CursorLineSign = { bg = c.none },
    MatchParen = { bg = c.fg.alt_bolder, bold = true },

    SpellBad = { undercurl = true },
    SpellCap = { undercurl = true },
    SpellLocal = { undercurl = true },
    SpellRare = { undercurl = true },

    Terminal = { fg = c.fg.bold, bg = c.bg.normal },
    Directory = { fg = c.fg.primary, bg = c.none },
    QuickFixLine = { bg = c.bg.current_line },

    MsgArea = { bg = c.none },

    FloatShadow = { bg = c.bg.normal2 },
    FloatShadowThrough = { bg = c.none, blend = 100 },

    MoreMsg = { fg = c.fg.green, bold = true },
    ModeMsg = { fg = c.fg.normal, bold = true },
  }
end

return base

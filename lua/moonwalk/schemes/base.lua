local function base(opts)
	local c = opts.colors
	return {
		Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NormalNC = {
			fg = c.fg,
			bg = (opts.transparent and c.none or c.bg),
		},

		Title = {
			fg = c.fg_bold,
			bg = c.none,
			blend = vim.o.winblend or 0,
			bold = true,
		},

		FloatTitle = {
			fg = c.fg_bold,
			bg = c.bg,
			blend = vim.o.winblend or 0,
			bold = true,
		},
		FloatBorder = {
			fg = c.fg,
			bg = c.bg,
			blend = vim.o.winblend or 0,
		},
		NormalFloat = {
			fg = c.fg,
			bg = c.bg,
			blend = vim.o.winblend or 0,
		},

		Italic = { italic = true },
		Bold = { bold = true },

		Conceal = { fg = c.fg_soft },
		SpecialKey = { fg = c.fg_soft },

		TabLine = { bg = c.bg, fg = c.bg2, underline = true },
		TabLineSel = { fg = c.blue, bg = c.none, bold = true, underline = true },
		TabLineFill = { fg = c.bg2, bg = c.bg, underline = true },

		WinBar = { fg = c.blue_bold },
		WinBarNC = {
			fg = c.fg_soft,
			bg = c.none,
		},

		StatusLine = { fg = c.fg, bg = c.bg2 },
		StatusLineNC = { fg = c.bg2, bg = c.none },
		StatusInactive = { fg = c.fg_soft },
		StatusNormal = { fg = c.fg },
		StatusInsert = { fg = c.blue_bold },
		StatusVisual = { fg = c.gold },
		StatusReplace = { fg = c.red },
		StatusCommand = { fg = c.green },
		StatusTerminal = { link = "StatusInsert" },

		Cursor = { fg = c.bg, bg = c.fg },
		CursorIM = { link = "Cursor" },
		lCursor = { link = "Cursor" },

		CursorLineNr = { fg = c.red_bolder, bg = c.current_line },
		LineNr = { fg = c.red_soft, bg = c.none },

		WinSeparator = {
			fg = c.bg2,
			bg = opts.transparent and c.none or c.bg,
			bold = false,
		},
		VertSplit = { link = 'WinSeparator' },

		Folded = { fg = c.fg_soft, bg = c.none, italic = true },
		FoldColumn = { fg = c.blue_bold, bg = c.none },

		NonText = { fg = c.fg_softer, bg = c.none },
		EndOfBuffer = { fg = c.fg_softer, bg = c.none },
		SignColumn = { bg = c.none },

		DiffAdd = { bg = c.diff_add },
		DiffChange = { bg = c.diff_change },
		DiffDelete = { bg = c.diff_delete },
		DiffText = { bg = c.diff_text },
		DiffAdded = { fg = c.diff_added },
		DiffRemoved = { fg = c.diff_removed },
		DiffChanged = { fg = c.diff_change },
		DiffOldFile = { fg = c.diff_removed },
		DiffNewFile = { fg = c.diff_added },
		DiffFile = { fg = c.blue },
		DiffLine = { fg = c.blue },
		DiffIndexLine = { fg = c.blue },

		ErrorMsg = { fg = c.red, bg = c.red_bg },
		WarningMsg  = { fg = c.gold, bg = c.gold_bg },
		Question = { fg = c.blue, bg = c.blue_bg },

		Pmenu = { fg = c.none, bg = c.bg_popup },
		PmenuSel = { fg = c.fg_bold, bg = c.bg_popup_line, bold = true, blend = 0 },
		PmenuSbar = { fg = c.none, bg = c.bg_popup },
		PmenuThumb = { fg = c.none, bg = c.red_bold, blend = 0 },

		WildMenu = { bg = c.bg_popup },

		Search = { bg = c.search },
		IncSearch = { bg = c.inc_search, underline = true },
		Substitute = { fg = c.white, bg = c.red_bold, bold = true },
		CurSearch = { link = "IncSearch" },
		Visual = { bg = c.visual },
		VisualNOS = { fg = c.visual, bg = c.none },

		CursorColumn = { bg = c.current_line },
		ColorColumn = { bg = c.red_bg },
		CursorLine = { bg = c.current_line },
		MatchParen = { fg = c.blue_bold, bg = c.none, bold = true },

		SpellBad = { undercurl = true },
		SpellCap = { undercurl = true },
		SpellLocal = { undercurl = true },
		SpellRare = { undercurl = true },

		Terminal = { fg = c.fg_bold, bg = c.bg },
		Directory = { fg = c.blue, bg = c.none },
		QuickFixLine = { bg = c.current_line },
	}
end

return base

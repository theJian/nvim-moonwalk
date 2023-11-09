local function syntax(opts)
	local c = opts.colors
	return {
		Comment = { fg = c.fg_soft, italic = true },

		Constant = { fg = c.red },
		String = { fg = c.green },
		Character = { link = 'String' },
		Number = { fg = c.red },
		Boolean = { fg = c.red },
		Float = { fg = c.red },

		Identifier = { fg = c.blue },
		Function = { fg = c.blue_bold },

		Statement = { fg = c.blue_cool },
		Conditional = { fg = c.red_bold },
		Repeat = { fg = c.blue_cool },
		Label = { fg = c.blue_cool_bold },
		Operator = { fg = c.none },
		Keyword = { fg = c.blue_cool },
		Exception = { fg = c.gold },

		PreProc = { fg = c.blue_alt, italic = true },
		Include = { fg = c.blue_alt },
		Define = { fg = c.gold_bold },
		Macro = { fg = c.red_bold },
		PreCondit = { fg = c.green_bold },


		Type = { fg = c.purple, italic = true },
		StorageClass = { fg = c.purple_bold },
		Structure = { fg = c.purple },
		Typedef = { fg = c.purple },

		Special = { fg = c.red_bolder },
		SpecialChar = { fg = c.red_bolder },
		Tag = { fg = c.red_bold },
		Delimiter = { fg = c.fg },
		SpecialComment = { fg = c.green_soft },
		Debug = { fg = c.red_bolder },

		Underlined = { fg = c.red_bold },
		Ignore = { fg = c.fg_softer },
		Error = { fg = c.red },
		Todo = { fg = c.blue_alt_bold, bold = true },
	}
end

return syntax

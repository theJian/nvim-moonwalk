local function treesitter(opts, c)
	return {
		-- Reference Highlights
		LspReferenceText = { underline = true },
		LspReferenceRead = { bg = c.blue_bg, underline = true },
		LspReferenceWrite = { bg = c.green_bg, underline = true },

		-- Codelens
		-- LspCodeLens = { fg = c.red },
		-- LspCodeLensSeparator = { fg = c.red },

		LspSignatureActiveParameter = { underline = true, bg = c.green_bg },

		-- Semantic Highlights
		['@lsp.typemod.class.declaration'] = { fg = c.purple_bold, bold = true },

		LspInfoTitle = { fg = c.fg_bold, bg = c.gold_bolder, bold = true },
	}
end

return treesitter

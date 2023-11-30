local function treesitter(opts, c)
  return {
    -- Reference Highlights
    LspReferenceText = { bg = c.blue_bg, underline = true },
    LspReferenceRead = { bg = c.blue_bg, underline = true },
    LspReferenceWrite = { bg = c.blue_bg, underline = true },

    -- Codelens
    LspCodeLens = { fg = c.red_soft, italic = true },
    LspCodeLensSeparator = { fg = c.red_soft },

    LspSignatureActiveParameter = { underline = true, bg = c.green_bg },

    -- Semantic Highlights
    ['@lsp.typemod.class.declaration'] = { fg = c.purple_bold, bold = true },
    ['@lsp.mod.deprecated'] = { strikethrough = true },


    LspInfoTitle = { fg = c.fg_bold, bg = c.gold_bolder, bold = true },
  }
end

return treesitter

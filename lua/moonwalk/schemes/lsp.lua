local function treesitter(opts, c)
  return {
    -- Reference Highlights
    LspReferenceText = { bg = c.gold_bg, underline = true },
    LspReferenceRead = { bg = c.gold_bg, underline = true },
    LspReferenceWrite = { bg = c.gold_bg, underline = true },

    -- Codelens
    LspCodeLens = { link = 'NonText' },
    LspCodeLensSeparator = { link = 'NonText' },

    LspSignatureActiveParameter = { underline = true, bg = c.green_bg },

    -- Semantic Highlights
    ['@lsp.typemod.class.declaration'] = { fg = c.purple_bold, bold = true },

    LspInfoTitle = { fg = c.fg_bold, bg = c.gold_bolder, bold = true },
  }
end

return treesitter

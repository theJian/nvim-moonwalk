local function treesitter(opts, c)
  return {
    -- Reference Highlights
    LspReferenceText = { bg = c.alt_bg, underline = true },
    LspReferenceRead = { bg = c.alt_bg, underline = true },
    LspReferenceWrite = { bg = c.alt_bg, underline = true },

    -- Codelens
    LspCodeLens = { fg = c.red_soft, italic = true },
    LspCodeLensSeparator = { fg = c.red_soft },

    LspSignatureActiveParameter = { underline = true, bg = c.green_bg },
    LspInlayHint = { bg = c.fg.softest, fg = c.fg.bold },
    SnippetTabstop = { link = 'Visual' },

    -- Semantic Highlights
    ['@lsp.type.class'] = { link = 'Structure' },
    ['@lsp.type.comment'] = { link = 'Comment' },
    ['@lsp.type.decorator'] = { link = 'Function' },
    ['@lsp.type.enum'] = { link = 'Structure' },
    ['@lsp.type.enumMember'] = { link = 'Constant' },
    ['@lsp.type.function'] = { link = 'Function' },
    ['@lsp.type.interface'] = { link = 'Structure' },
    ['@lsp.type.macro'] = { link = 'Macro' },
    ['@lsp.type.method'] = { link = 'Function' },
    ['@lsp.type.namespace'] = { link = 'Structure' },
    ['@lsp.type.parameter'] = { link = 'Identifier' },
    ['@lsp.type.property'] = { link = 'Identifier' },
    ['@lsp.type.struct'] = { link = 'Structure' },
    ['@lsp.type.type'] = { link = 'Type' },
    ['@lsp.type.typeParameter'] = { link = 'TypeDef' },
    ['@lsp.type.variable'] = { link = 'Identifier' },
    ['@lsp.typemod.class.declaration'] = { fg = c.purple_bold, bold = true },
    ['@lsp.mod.deprecated'] = { strikethrough = true },

    LspInfoTitle = { fg = c.fg.bold, bg = c.gold_bolder, bold = true },
  }
end

return treesitter

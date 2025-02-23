local function treesitter(opts, c)
  return {
    -- Reference Highlights
    LspReferenceText = { bg = c.bg.active, underdashed = true, bold = true },
    LspReferenceRead = { bg = c.bg.active, underline = true, bold = true },
    LspReferenceWrite = { bg = c.bg.active, underdashed = true, italic = true },

    -- Codelens
    LspCodeLens = { fg = c.fg.purple30, bold = true },
    LspCodeLensSeparator = { fg = c.fg.soft30 },

    LspSignatureActiveParameter = { underline = true, bg = c.bg.active },
    LspInlayHint = { fg = c.fg.soft30, italic = true },
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
    ['@lsp.typemod.class.declaration'] = { fg = c.fg.purple_bold, bold = true },
    ['@lsp.mod.deprecated'] = { strikethrough = true },

    LspInfoTitle = { fg = c.fg.soft, italic = true },
  }
end

return treesitter

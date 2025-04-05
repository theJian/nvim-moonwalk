local function treesitter(opts, c)
  return {
    -- Reference Highlights
    LspReferenceText = { underdashed = true, sp = c.fg.green },
    LspReferenceRead = { sp = c.fg.blue45, underdotted = true },
    LspReferenceWrite = { sp = c.fg.purple45, underdotted = true },

    -- Codelens
    LspCodeLens = { fg = c.fg.cyan45, bold = true },
    LspCodeLensSeparator = { fg = c.fg.soft30 },

    LspSignatureActiveParameter = { fg = c.fg.blue45 },
    LspInlayHint = { fg = c.fg.soft30, italic = true },
    SnippetTabstop = { link = 'Visual' },

    -- Semantic Highlights
    ['@lsp.type.class'] = { link = 'Structure' },
    ['@lsp.type.comment'] = { link = 'Comment' },
    ['@lsp.type.decorator'] = { link = '@attribute' },
    ['@lsp.type.enum'] = { link = 'Structure' },
    ['@lsp.type.enumMember'] = { link = 'Constant' },
    ['@lsp.type.function'] = { link = 'Function' },
    ['@lsp.type.interface'] = { link = 'Structure' },
    ['@lsp.type.macro'] = { link = 'Macro' },
    ['@lsp.type.method'] = { link = 'Function' },
    ['@lsp.type.namespace'] = { link = 'Structure' },
    ['@lsp.type.parameter'] = { link = 'Identifier' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.struct'] = { link = 'Structure' },
    ['@lsp.type.type'] = { link = 'Type' },
    ['@lsp.type.typeParameter'] = { link = 'TypeDef' },
    ['@lsp.type.variable'] = { link = 'Identifier' },
    ['@lsp.typemod.class.declaration'] = { fg = c.fg.purple_bold, bold = true, nocombine = true },
    ['@lsp.mod.deprecated'] = { strikethrough = true },
    ['@lsp.mod.defaultLibrary'] = { fg = c.fg.normal, nocombine = true },

    LspInfoTitle = { fg = c.fg.soft, italic = true },
  }
end

return treesitter

local function treesitter(opts, c)
  return {
    -- Reference Highlights
    LspReferenceText = { underdashed = true, sp = c.fg.green },
    LspReferenceRead = { sp = c.fg.blue45, underdotted = true },
    LspReferenceWrite = { sp = c.fg.purple45, underdotted = true },
    LspReferenceTarget = { sp = c.fg.green_bold, underline = true },

    -- Codelens
    LspCodeLens = { fg = c.fg.soft30 },
    LspCodeLensSeparator = { fg = c.fg.soft30 },

    LspSignatureActiveParameter = { bg = c.bg.popup_line },
    LspInlayHint = { fg = c.fg.soft30, italic = true },
    SnippetTabstop = { sp = c.fg.soft45, bg = c.bg.popup, underline = true, italic = true },
    SnippetTabstopActive = { sp = c.fg.bold, underline = true },

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
    ['@lsp.type.namespace'] = { fg = c.fg.purple_bold },
    ['@lsp.type.parameter'] = { link = 'Identifier' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.struct'] = { link = 'Structure' },
    ['@lsp.type.type'] = { link = 'Type' },
    ['@lsp.type.typeParameter'] = { link = 'TypeDef' },
    ['@lsp.type.variable'] = { link = 'Identifier' },
    ['@lsp.type.builtinType'] = { fg = c.fg.soft, italic = true },

    ['@lsp.mod.deprecated'] = { strikethrough = true },
    ['@lsp.mod.defaultLibrary'] = { fg = c.fg.normal, nocombine = true },
    ['@lsp.mod.async'] = { fg = c.fg.cyan, italic = true },

    ['@lsp.typemod.class.declaration'] = { fg = c.fg.purple_bold, bold = true, nocombine = true },

    LspInfoTitle = { fg = c.fg.soft, italic = true },
  }
end

return treesitter

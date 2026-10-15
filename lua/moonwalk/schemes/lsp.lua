local function treesitter(opts, c)
  return {
    -- Native completion kinds
    LspKindText = { link = '@text' },
    LspKindMethod = { link = '@function.method' },
    LspKindFunction = { link = '@function' },
    LspKindConstructor = { link = '@constructor' },
    LspKindField = { link = '@field' },
    LspKindVariable = { link = '@variable' },
    LspKindClass = { link = '@type' },
    LspKindInterface = { link = '@type' },
    LspKindModule = { link = '@module' },
    LspKindProperty = { link = '@property' },
    LspKindUnit = { link = '@constant' },
    LspKindValue = { link = '@constant' },
    LspKindEnum = { link = '@type' },
    LspKindKeyword = { link = '@keyword' },
    LspKindSnippet = { link = '@constant' },
    LspKindFile = { link = '@text.uri' },
    LspKindReference = { link = '@type' },
    LspKindFolder = { link = '@constant' },
    LspKindEnumMember = { link = '@field' },
    LspKindConstant = { link = '@constant' },
    LspKindStruct = { link = '@type' },
    LspKindEvent = { link = '@type' },
    LspKindOperator = { link = '@operator' },
    LspKindTypeParameter = { link = '@type' },

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

    ['@lsp.typemod.class.declaration'] = { fg = c.fg.purple_bold, nocombine = true },

    LspInfoTitle = { fg = c.fg.soft, italic = true },
  }
end

return treesitter

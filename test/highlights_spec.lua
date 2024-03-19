-- Lc 90 • Preferred level for fluent text and columns of body text with a font
-- no smaller than 18px/weight 300 or 14px/weight 400 (normal), or non-body text
-- with a font no smaller than 12px. Also a recommended minimum for extremely
-- thin fonts with a minimum of 24px at weight 200. Lc 90 is a suggested maximum
-- for very large and bold fonts (greater than 36px bold), and large areas of
-- color.
-- Lc 75 • The minimum level for columns of body text with a font no smaller
-- than 24px/300 weight, 18px/400, 16px/500 and 14px/700. This level may be used
-- with non-body text with a font no smaller than 15px/400. Also, Lc 75 should
-- be considered a minimum for larger for any larger text where readability is
-- important.
-- Lc 60 • The minimum level recommended for content text that is not body,
-- column, or block text. In other words, text you want people to read. The
-- minimums: no smaller than 48px/200, 36px/300, 24px normal weight (400),
-- 21px/500, 18px/600, 16px/700 (bold). These values based on the reference font
-- Helvetica. To use these sizes as body text, add Lc 15 to the minimum
-- contrast.
-- Lc 45 • The minimum for larger, heavier text (36px normal weight or 24px
-- bold) such as headlines, and large text that should be fluently readabile but
-- is not body text. This is also the minimum for pictograms with fine details,
-- or smaller outline icons, , no less than 4px in its smallest dimension.
-- Lc 30 • The absolute minimum for any text not listed above, which means
-- non-content text considered as "spot readable". This includes placeholder
-- text and disabled element text, and some non-content like a copyright bug.
-- This is also the minimum for large/solid semantic & understandable non-text
-- elements such as "mostly solid" icons or pictograms, no less than 10px in its
-- smallest dimension.
-- Lc 15 • The absolute minimum for any non-text that needs to be discernible
-- and differentiable, but does not apply to semantic non-text such as icons,
-- and is no less than 15px in its smallest dimention. This may include
-- dividers, and in some cases large buttons or thick focus visible outlines,
-- but does not include fine details which have a higher minimum. Designers
-- should treat anything below this level as invisible, as it will not be
-- visible for many users. This minimum level should be avoided for any items
-- important to the use, understanding, or interaction of the site.

local calc_apca = require('apca').calc_apca
local abs = math.abs

local IGNORE = {
  'NvimInternalError',
}

local NON_TEXT = {
  'Ignore',
  'NonText',
  'StatusLineNC',
  'WinBarNC',
  'TabLineFill',
  'TabLine',
  'ColorColumn',
  'WinSeparator',
  'VertSplit',
  'Folded',
  'IblScope',
  'GitSignsChange',
  'GitSignsChangeNr',
  'GitSignsAdd',
  'GitSignsAddNr',
}

vim.cmd.colorscheme 'moonwalk'

test('moonwalk is loaded', function()
  expect(vim.g.colors_name).toBe 'moonwalk'
end)

local normal_bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg
-- Test if highlights meet the minimal contrast requirement
do
  local hl_groups = vim.api.nvim_get_hl(0, {})
  for name, _ in pairs(hl_groups) do
    local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
    local fg = hl.fg
    local bg = hl.bg or normal_bg

    local function is_excluded(name)
      repeat
        if not name then
          return false
        end

        if vim.tbl_contains(IGNORE, name) then
          return true
        end

        if vim.tbl_contains(NON_TEXT, name) then
          return true
        end

        name = vim.api.nvim_get_hl(0, { name = name }).link
      until not name
    end

    if fg and not is_excluded(name) then
      test(string.format('contrast of %s should be >= Lc 30', name), function()
        expect(abs(calc_apca(fg, bg))).toBeGreaterThanOrEqual(30)
      end)
    end
  end
end

-- Test non-text contrast ratio
for _, name in pairs(NON_TEXT) do
  local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
  local fg = hl.fg
  local bg = hl.bg or normal_bg

  if fg then
    test(string.format('contrast of %s should be >= Lc 15', name), function()
      expect(abs(calc_apca(fg, bg))).toBeGreaterThanOrEqual(15)
    end)
  end
end

-- Test terminal colors
for i = 1, 7 do
  local bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg
  local fg = vim.g['terminal_color_' .. i]
  test(string.format('contrast of vim.g.terminal_color_%s should be >= Lc 60', i), function()
    expect(abs(calc_apca(fg, bg))).toBeGreaterThanOrEqual(60)
  end)

  local fg_bright = vim.g['terminal_color_' .. i + 8]
  test(string.format('contrast of bright color vim.g.terminal_color_%s should be >= Lc 45', i + 8), function()
    expect(abs(calc_apca(fg_bright, bg))).toBeGreaterThanOrEqual(45)
  end)
end

-- Test content text
local CONTENT_TEXT = {
  'Constant',
  'String',
  'Character',
  'Number',
  'Boolean',
  'Float',
  'Identifier',
  'Function',
  'Statement',
  'Conditional',
  'Repeat',
  'Label',
  'Operator',
  'Keyword',
  'Exception',
  'PreProc',
  'Include',
  'Define',
  'Macro',
  'PreCondit',
  'Type',
  'StorageClass',
  'Structure',
  'Typedef',
  'Special',
  'SpecialChar',
  'Tag',
  'Debug',
  'Underlined',
  'Error',
}
do
  local hl_groups = vim.api.nvim_get_hl(0, {})
  local exclude = {
    '@text.strike',
    '@comment',
    '@comment.documentation',
    '@lsp.type.comment',
    '@conceal',
    '@conceal.json',
    '@punctuation.special',
    '@string.documentation',
    '@error',
  }
  for name, _ in pairs(hl_groups) do
    if name:sub(1, 1) == '@' and not vim.tbl_contains(exclude, name) then
      table.insert(CONTENT_TEXT, name)
    end
  end
end
for _, name in pairs(CONTENT_TEXT) do
  local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
  local fg = hl.fg
  local bg = hl.bg or normal_bg

  if fg then
    test(string.format('contrast of content text %s should be >= Lc 60', name), function()
      expect(abs(calc_apca(fg, bg))).toBeGreaterThanOrEqual(60)
    end)
  end
end

local schemes = require 'moonwalk.schemes'

local M = {}

function M.get_palette()
  if vim.env.MOONWALK_DEV then
    package.loaded['moonwalk.palette.light'] = nil
  end
  local palette = require 'moonwalk.palette.light'
  return palette
end

function M.load_schemes(opts)
  local colors = require('moonwalk.palette').get_colors()
  for _, name in ipairs(schemes.exports) do
    local module = 'moonwalk.schemes.' .. name
    if vim.env.MOONWALK_DEV then
      package.loaded[module] = nil
    end
    local f = require(module)
    local scheme = f(opts, colors)
    for group, hl in pairs(scheme) do
      M.highlight(group, hl)
    end
  end
end

function M.highlight(group, hl)
  vim.api.nvim_set_hl(0, group, hl)
end

function M.live_reloading()
  if vim.env.MOONWALK_DEV then
    vim.api.nvim_create_autocmd('BufWritePost', {
      group = vim.api.nvim_create_augroup('NvimMoonwalk', { clear = true }),
      pattern = '*.lua',
      callback = function()
        local theme = vim.g.colors_name
        if string.match(theme, 'moonwalk') then
          vim.cmd 'colorscheme moonwalk'
        end
      end,
    })
  end
end

function M.set_terminal_color(flavour)
  local c = require('moonwalk.palette').get_colors(flavour, 'term')

  vim.g.terminal_color_0 = c.term.black
  vim.g.terminal_color_8 = c.term.bright_black

  vim.g.terminal_color_1 = c.term.red
  vim.g.terminal_color_9 = c.term.bright_red

  vim.g.terminal_color_2 = c.term.green
  vim.g.terminal_color_10 = c.term.bright_green

  vim.g.terminal_color_3 = c.term.yellow
  vim.g.terminal_color_11 = c.term.bright_yellow

  vim.g.terminal_color_4 = c.term.blue
  vim.g.terminal_color_12 = c.term.bright_blue

  vim.g.terminal_color_5 = c.term.purple
  vim.g.terminal_color_13 = c.term.bright_purple

  vim.g.terminal_color_6 = c.term.cyan
  vim.g.terminal_color_14 = c.term.bright_cyan

  vim.g.terminal_color_7 = c.term.white
  vim.g.terminal_color_15 = c.term.bright_white
end

return M

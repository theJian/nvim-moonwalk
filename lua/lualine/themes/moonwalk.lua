local c = require('moonwalk.palette').get_colors(nil, 'lualine')

return {
  normal = {
    a = { fg = c.block_black.fg, bg = c.block_black.bg, gui = 'bold' },
    b = { fg = c.block_beige.fg, bg = c.block_beige.bg },
    c = { fg = c.block_soft.fg, bg = c.block_soft.bg },
  },
  insert = { a = { fg = c.block_blue.fg, bg = c.block_blue.bg, gui = 'bold' } },
  visual = { a = { fg = c.block_cyan.fg, bg = c.block_cyan.bg, gui = 'bold' } },
  replace = { a = { fg = c.block_red.fg, bg = c.block_red.bg, gui = 'bold' } },
  command = { a = { fg = c.block_purple.fg, bg = c.block_purple.bg, gui = 'bold' } },
  terminal = { a = { fg = c.block_green.fg, bg = c.block_green.bg, gui = 'bold' } },
  inactive = {
    a = { fg = c.block_soft.fg, bg = c.block_soft.bg, gui = 'bold' },
    b = { fg = c.block_soft.fg, bg = c.block_soft.bg },
    c = { fg = c.block_soft.fg, bg = c.block_soft.bg },
  },
}

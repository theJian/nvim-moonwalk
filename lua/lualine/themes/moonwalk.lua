local c = require('moonwalk.palette').get_colors()

return {
  normal = {
    a = { fg = c.white, bg = c.fg.bold, gui = 'bold' },
    b = { fg = c.primary, bg = c.gold_bg },
    c = { fg = c.primary, bg = c.bg.normal },
  },
  insert = { a = { fg = c.white, bg = c.primary, gui = 'bold' } },
  visual = { a = { fg = c.fg.bold, bg = c.gold_bolder, gui = 'bold' } },
  replace = { a = { fg = c.white, bg = c.red_bolder, gui = 'bold' } },
  command = { a = { fg = c.white, bg = c.purple, gui = 'bold' } },
  terminal = { a = { fg = c.white, bg = c.green, gui = 'bold' } },
  inactive = {
    a = { fg = c.blue, bg = c.bg.normal2, gui = 'bold' },
    b = { fg = c.fg.softest, bg = c.gold_bg },
    c = { fg = c.fg.softest, bg = c.bg.normal },
  },
}

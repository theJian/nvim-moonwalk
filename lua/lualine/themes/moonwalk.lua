local c = require('moonwalk.palette').get_colors()

return {
  normal = {
    a = { fg = c.white, bg = c.fg.bold, gui = 'bold' },
    b = { fg = c.fg.primary, bg = c.bg.gold },
    c = { fg = c.fg.primary, bg = c.bg.normal },
  },
  insert = { a = { fg = c.white, bg = c.fg.primary, gui = 'bold' } },
  visual = { a = { fg = c.fg.bold, bg = c.fg.gold_bolder, gui = 'bold' } },
  replace = { a = { fg = c.white, bg = c.fg.red_bolder, gui = 'bold' } },
  command = { a = { fg = c.white, bg = c.fg.purple, gui = 'bold' } },
  terminal = { a = { fg = c.white, bg = c.fg.green, gui = 'bold' } },
  inactive = {
    a = { fg = c.fg.blue, bg = c.bg.normal2, gui = 'bold' },
    b = { fg = c.fg.softest, bg = c.bg.gold },
    c = { fg = c.fg.softest, bg = c.bg.normal },
  },
}

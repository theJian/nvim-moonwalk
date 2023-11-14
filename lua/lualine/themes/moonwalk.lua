local c = require('moonwalk.palette').default

return {
  normal = {
    a = { fg = c.white, bg = c.fg_bold, gui = 'bold' },
    b = { fg = c.blue, bg = c.gold_bg },
    c = { fg = c.blue, bg = c.bg },
  },
  insert = { a = { fg = c.white, bg = c.blue, gui = 'bold' } },
  visual = { a = { fg = c.fg_bold, bg = c.gold_bolder, gui = 'bold' } },
  replace = { a = { fg = c.white, bg = c.red_bolder, gui = 'bold' } },
  command = { a = { fg = c.white, bg = c.purple, gui = 'bold' } },
  terminal = { a = { fg = c.white, bg = c.green, gui = 'bold' } },
  inactive = {
    a = { fg = c.blue_cool, bg = c.bg2, gui = 'bold' },
    b = { fg = c.fg_softer, bg = c.gold_bg },
    c = { fg = c.fg_softer, bg = c.bg },
  },
}

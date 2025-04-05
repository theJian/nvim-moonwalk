local M = {}

M.default = {
  fg = {
    normal = '#061f4a',
    bold = '#212121',
    soft = '#494440',
    soft45 = '#7d7e82',
    soft30 = '#9c958d',

    blue = '#0d50c5',
    blue_bold = '#002fa7',
    blue45 = '#0087a6',
    blue30 = '#8695c1',

    cyan = '#20655a',
    cyan_bold = '#004347',
    cyan45 = '#00878a',
    cyan30 = '#60a7a9',

    red = '#af1608',
    red_bold = '#7a0047',
    red45 = '#ef0b17',
    red30 = '#d1847e',

    gold = '#705700',
    gold_bold = '#782400',
    gold45 = '#bd6500',
    gold30 = '#c29540',

    green = '#3f5515',
    green_bold = '#174A24',
    green45 = '#028d19',
    green30 = '#75a36c',

    purple = '#952197',
    purple_bold = '#5400a8',
    purple45 = '#c400c7',
    purple30 = '#af88af',
  },

  bg = {
    normal = '#e4e2e0',
    popup = '#d8d8da',
    popup_line = '#ffebd1',
    current_line = '#f2ede9',
    visual30 = '#b8d2e5',
    search30 = '#ffcf24',
    diff_add30 = '#ebf5eb',
    diff_change30 = '#cae4ca',
    diff_delete30 = '#fce3de',
    diff_text30 = '#cae4ca',
  },
}

M.lualine = {
  block_normal = { fg = M.default.fg.normal, bg = M.default.bg.normal },
  block_soft = { fg = M.default.fg.soft, bg = 'NONE' },
  block_black = { fg = '#ffffff', bg = '#000000' },
  block_beige = { fg = M.default.fg.blue_bold, bg = M.default.bg.popup_line },
  block_blue = { fg = '#ffffff', bg = M.default.fg.blue },
  block_cyan = { fg = '#ffffff', bg = M.default.fg.cyan },
  block_red = { fg = '#ffffff', bg = M.default.fg.red },
  block_purple = { fg = '#ffffff', bg = M.default.fg.purple },
  block_green = { fg = '#ffffff', bg = M.default.fg.green },
}

M.term = {
  black = M.default.fg.bold,
  bright_black = M.default.fg.soft,

  red = M.default.fg.red_bold,
  bright_red = M.default.fg.red,

  green = M.default.fg.green_bold,
  bright_green = M.default.fg.green,

  yellow = M.default.fg.gold_bold,
  bright_yellow = M.default.fg.gold,

  blue = M.default.fg.blue_bold,
  bright_blue = M.default.fg.blue,

  purple = M.default.fg.purple_bold,
  bright_purple = M.default.fg.purple,

  cyan = M.default.fg.cyan_bold,
  bright_cyan = M.default.fg.cyan,

  white = M.default.fg.soft30,
  bright_white = M.default.bg.popup_line,
}

return M

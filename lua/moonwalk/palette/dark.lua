local M = {}

M.default = {
  fg = {
    normal = '#fff8e8',
    bold = '#f7f7f7',
    soft = '#ccc0c6',
    soft45 = '#979fa5',
    soft30 = '#808080',

    blue = '#adbfff',
    blue_bold = '#B3DBF0',
    blue45 = '#00b3ff',
    blue30 = '#727fa4',

    cyan = '#29ffd4',
    cyan_bold = '#b1fbfb',
    cyan45 = '#03adb1',
    cyan30 = '#568e8f',

    red = '#ff9d94',
    red_bold = '#ffd1ec',
    red45 = '#ff6e79',
    red30 = '#bc6a68',

    gold = '#ffba66',
    gold_bold = '#ffda24',
    gold45 = '#f28100',
    gold30 = '#a3821f',

    green = '#a3f20c',
    green_bold = '#a3ffbc',
    green45 = '#3ab082',
    green30 = '#528e43',

    purple = '#e49ff5',
    purple_bold = '#e8d1ff',
    purple45 = '#c086e0',
    purple30 = '#b36bb3',
  },

  bg = {
    normal = '#1a2526',
    popup = '#151e1f',
    popup_line = '#1d2634',
    current_line = '#1e2c2d',
    visual30 = '#264156',
    search30 = '#5b3d5c',
    diff_add30 = '#004200',
    diff_change30 = '#006100',
    diff_delete30 = '#400000',
    diff_text30 = '#006100',
  },
}

M.lualine = {
  block_normal = { fg = M.default.fg.normal, bg = M.default.bg.normal },
  block_soft = { fg = M.default.fg.soft, bg = 'NONE' },
  block_black = { fg = M.default.fg.blue_bold, bg = '#2a465a' },
  block_beige = { fg = '#000000', bg = '#b1a397' },
  block_blue = { fg = '#000000', bg = M.default.fg.blue45 },
  block_cyan = { fg = '#000000', bg = M.default.fg.cyan },
  block_red = { fg = '#000000', bg = M.default.fg.red45 },
  block_purple = { fg = '#000000', bg = M.default.fg.purple },
  block_green = { fg = '#000000', bg = M.default.fg.green },
}

M.term = {
  black = M.default.bg.popup,
  bright_black = M.default.fg.soft30,

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

  white = M.default.fg.soft,
  bright_white = M.default.fg.bold,
}

return M

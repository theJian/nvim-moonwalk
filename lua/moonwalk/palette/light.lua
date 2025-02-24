local M = {}

local C = {
  primary_bold = '#105bd8',
  primary = '#002fa7',
  fg = '#061f4a',
  fg_bold = '#212121',
  gray = '#5b616b',
  gray_dark = '#323a45',
  gray_light = '#aeb0b5',
  gray_lighter = '#d6d7d9',
  gray_lightest = '#f1f1f1',
  fg_soft = '#494440',
  bg = '#e4e2e0',
  bg2 = '#8ba6ca',
  fg_softer = '#8c8a8a',
  white = '#ffffff',
  alt_bolder = '#02bfe7',
  alt = '#046b99',
  alt_bold = '#00a6d2',
  alt_soft = '#9bdaf1',
  alt_bg = '#e1f3f8',
  red_bolder = '#dd361c',
  red = '#801a17',
  red_bold = '#c22c1f',
  red_soft = '#c4837a',
  red_bg = '#f9e0de',
  gold = '#61330e',
  gold_bold = '#965c12',
  gold_bolder = '#ff9d1e',
  gold_soft = '#f9aa43',
  gold_softer = '#ffc375',
  gold_bg = '#ffebd1',
  green = '#174A24',
  green_bold = '#29783b',
  green_soft = '#4aa564',
  green_softer = '#94bfa2',
  green_bg = '#e7f4e4',
  blue = '#205493',
  blue_bold = '#426b9e',
  blue_bg = '#dce4ef',
  purple_bold = '#6F46C8',
  purple = '#4c2c92',
}

M.default = {
  fg = {
    normal = C.fg,
    bold = C.fg_bold,
    soft = '#494440',
    soft45 = '#707275',
    soft30 = '#9c958d',

    blue = '#0d50c5',
    blue_bold = '#002fa7',
    blue45 = '#007ebd',
    blue30 = '#8695c1',

    cyan = '#20655a',
    cyan_bold = '#004347',
    cyan45 = '#00878a',
    cyan30 = '#60a7a9',

    red = '#af1608',
    red_bold = '#7a0047',
    red45 = '#ef0b17',
    red30 = '#d1847e',

    gold = '#7f4806',
    gold_bold = '#504300',
    gold45 = '#bd6500',
    gold30 = '#be9260',

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
    popup_line = '#efefdc',
    float = '#d8d8da',
    current_line = '#f7f5f3',
    active = '#fffeb8',
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
  block_beige = { fg = M.default.fg.blue_bold, bg = '#ffebd1' },
  block_blue = { fg = '#ffffff', bg = M.default.fg.blue },
  block_cyan = { fg = '#ffffff', bg = M.default.fg.cyan },
  block_red = { fg = '#ffffff', bg = M.default.fg.red },
  block_purple = { fg = '#ffffff', bg = M.default.fg.purple },
  block_green = { fg = '#ffffff', bg = M.default.fg.green },
}

M.term = {
  black = C.bg,
  bright_black = C.gray,

  red = C.red,
  bright_red = C.red_bolder,

  green = C.green,
  bright_green = C.green_bold,

  yellow = C.gold,
  bright_yellow = C.gold_bold,

  blue = C.primary,
  bright_blue = C.primary_bold,

  purple = C.purple,
  bright_purple = C.purple_bold,

  cyan = C.blue,
  bright_cyan = C.blue_bold,

  white = C.fg,
  bright_white = C.fg_bold,
}

return M

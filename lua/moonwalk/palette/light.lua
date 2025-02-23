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
    soft = C.fg_soft,
    soft45 = '#817e7e',
    soft30 = '#9c958d',

    blue = '#105bd8',
    blue_bold = '#002fa7',
    blue45 = '#009fef',
    blue30 = '#93aadb',

    cyan = '#0b6b5b',
    cyan_bold = '#004347',
    cyan45 = '#00adaf',
    cyan30 = '#7aacae',

    red = '#c22c1f',
    red_bold = '#7a0047',
    red45 = '#ff5059',
    red30 = '#d1847e',

    gold = '#804b0a',
    gold_bold = '#504300',
    gold45 = '#b87400',
    gold30 = '#c49764',

    green = '#3f5515',
    green_bold = '#174A24',
    green45 = '#00af1d',
    green30 = '#75a36c',

    purple = '#a515a8',
    purple_bold = '#5400a8',
    purple45 = '#ed47f0',
    purple30 = '#c18ec1',
  },

  bg = {
    normal = '#e4e2e0',
    popup = '#d7d4d1',
    popup_line = '#efefdc',
    float = '#d7d4d1',
    current_line = '#f1f0ef',
    visual = '#bfcde8',
    search = '#ffcf24',
    diff_add = '#ebf5eb',
    diff_change = '#cae4ca',
    diff_delete = '#fce3de',
    diff_text = '#cae4ca',
    active = '#fffeb8',
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

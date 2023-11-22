local M = {}

local C = {
  primary = '#105bd8',
  primary_darker = '#0b3d91',
  primary_darkest = '#061f4a',
  base = '#212121',
  gray = '#5b616b',
  gray_dark = '#323a45',
  gray_light = '#aeb0b5',
  gray_lighter = '#d6d7d9',
  gray_lightest = '#f1f1f1',
  gray_warm_dark = '#494440',
  gray_warm_light = '#e4e2e0',
  gray_warm_lighter = '#8c8a8a',
  white = '#ffffff',
  primary_alt = '#02bfe7',
  primary_alt_darkest = '#046b99',
  primary_alt_dark = '#00a6d2',
  primary_alt_light = '#9bdaf1',
  primary_alt_lightest = '#e1f3f8',
  secondary = '#dd361c',
  secondary_darkest = '#99231b',
  secondary_dark = '#c62d1f',
  secondary_light = '#e59892',
  secondary_lightest = '#f9e0de',
  gold_darkest = '#945400',
  gold_dark = '#B76801',
  gold = '#ff9d1e',
  gold_light = '#f9aa43',
  gold_lighter = '#ffc375',
  gold_lightest = '#ffebd1',
  green_dark = '#174A24',
  green = '#2e8540',
  green_light = '#4aa564',
  green_lighter = '#94bfa2',
  green_lightest = '#e7f4e4',
  blue = '#205493',
  blue_light = '#4773aa',
  blue_lighter = '#8ba6ca',
  blue_lightest = '#dce4ef',
  purple_light = '#6F46C8',
  purple = '#4c2c92',
}

M.default = {
  none = 'NONE',
  bg = C.gray_warm_light,
  bg2 = C.blue_lighter,
  bg_popup = C.blue_lightest,
  bg_popup_line = C.primary_alt_light,
  fg = C.primary_darkest,
  fg_bold = C.base,
  fg_soft = C.gray_warm_dark,
  fg_softer = C.gray_warm_lighter,
  fg_softest = C.gray_light,

  white = C.white,
  blue_bolder = C.primary_alt,
  blue_bold = C.primary,
  blue = C.primary_darker,
  blue_bg = C.primary_alt_lightest,
  blue_alt = C.primary_alt_darkest,
  blue_alt_bold = C.primary_alt_dark,
  blue_cool = C.blue,
  blue_cool_bold = C.blue_light,
  red_bolder = C.secondary,
  red_bold = C.secondary_dark,
  red_soft = C.secondary_light,
  red = C.secondary_darkest,
  red_bg = C.secondary_lightest,
  gold_bolder = C.gold,
  gold_bold = C.gold_dark,
  gold = C.gold_darkest,
  gold_bg = C.gold_lightest,
  green_soft = C.green_light,
  green = C.green_dark,
  green_bold = C.green,
  green_bg = C.green_lightest,
  purple_bold = C.purple_light,
  purple = C.purple,

  diff_add = C.green_lighter,
  diff_delete = C.secondary_light,
  diff_change = C.green_lightest,
  diff_text = C.green_lighter,
  diff_added = C.green,
  diff_removed = C.secondary_darkest,

  search = C.gold_lighter,
  inc_search = C.gold_light,
  visual = C.gold_lightest,
  current_line = C.gray_lighter,

  term_black = C.gray_warm_light,
  term_bright_black = C.gray,

  term_red = C.secondary_dark,
  term_bright_red = C.secondary,

  term_green = C.green_dark,
  term_bright_green = C.green,

  term_yellow = C.gold_darkest,
  term_bright_yellow = C.gold_dark,

  term_blue = C.primary_darker,
  term_bright_blue = C.primary,

  term_purple = C.purple,
  term_bright_purple = C.purple_light,

  term_cyan = C.blue,
  term_bright_cyan = C.blue_light,

  term_white = C.primary_darkest,
  term_bright_white = C.base,
}

function M.get_colors()
  return M.default
end

return M

local M = {}

function M.get_colors(flavour, group)
  flavour = flavour or 'light'
  group = group or 'default'

  local module = 'moonwalk.palette.' .. flavour
  if vim.env.MOONWALK_DEV then
    package.loaded[module] = nil
  end
  local palette = require(module)
  return palette[group]
end

return M

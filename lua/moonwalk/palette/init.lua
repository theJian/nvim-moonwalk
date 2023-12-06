local M = {}

function M.get_colors()
  -- local variant = vim.o.background == 'dark' and 'dark' or 'light'
  local variant = 'light'
  local module = 'moonwalk.palette.' .. variant
  if vim.env.MOONWALK_DEV then
    package.loaded[module] = nil
  end
  local palette = require(module)
  return palette.default
end

return M

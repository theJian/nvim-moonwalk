local M = {}

M.default = {
	terminal_colors = true,
	transparent = false,
}

function M.user_config(opts) return vim.tbl_deep_extend("force", M.default, opts or {}) end

return M

local M = {}

M.default = {
	terminal_colors = true,
	transparent = false,
}

function M.set(opts)
	M.current = vim.tbl_deep_extend("force", M.get(), opts)
end

function M.get()
	return M.current or M.default
end

return M

local M = {}

function M.load()
	if vim.g.colors_name then vim.cmd.highlight "clear" end
	if vim.fn.exists "syntax_on" then vim.cmd.syntax "reset" end
	vim.o.termguicolors = true
	vim.g.colors_name = "moonwalk"
end

return M

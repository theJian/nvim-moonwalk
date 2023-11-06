local M = {}

function M.get_palette()
	if vim.env.MOONWALK_DEV then package.loaded['moonwalk.palette'] = nil end
	local palette = require 'moonwalk.palette'
	return palette
end

function M.load_schemes()
	local names = {
		'base',
		'syntax',
	}
	local palette = M.get_palette()
	for _, name in ipairs(names) do
		local module = 'moonwalk.schemes.' .. name
		if vim.env.MOONWALK_DEV then package.loaded[module] = nil end
		local f = require(module)
		local scheme = f({ colors = palette.default })
		for group, hl in pairs(scheme) do
			M.highlight(group, hl)
		end
	end
end

function M.highlight(group, hl)
	vim.api.nvim_set_hl(0, group, hl)
end

function M.live_reloading()
	if vim.env.MOONWALK_DEV then
		vim.api.nvim_create_autocmd('BufWritePost', {
			group = vim.api.nvim_create_augroup('NvimMoonwalk', { clear = true }),
			pattern = '*.lua',
			callback = function()
				local theme = vim.g.colors_name
				if string.match(theme, 'moonwalk') then
					vim.cmd("colorscheme moonwalk")
				end
			end,
		})
	end
end

return M

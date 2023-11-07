local schemes = require 'moonwalk.schemes'

local M = {}

function M.get_palette()
	if vim.env.MOONWALK_DEV then package.loaded['moonwalk.palette'] = nil end
	local palette = require 'moonwalk.palette'
	return palette
end

function M.load_schemes()
	local palette = M.get_palette()
	for _, name in ipairs(schemes.exports) do
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

function M.set_terminal_colors()
	local c = M.get_palette().default
	vim.g.terminal_color_0 = c.term_black
	vim.g.terminal_color_8 = c.term_bright_black

	vim.g.terminal_color_1 = c.term_red
	vim.g.terminal_color_9 = c.term_bright_red

	vim.g.terminal_color_2 = c.term_green
	vim.g.terminal_color_10 = c.term_bright_green

	vim.g.terminal_color_3 = c.term_yellow
	vim.g.terminal_color_11 = c.term_bright_yellow

	vim.g.terminal_color_4 = c.term_blue
	vim.g.terminal_color_12 = c.term_bright_blue

	vim.g.terminal_color_5 = c.term_purple
	vim.g.terminal_color_13 = c.term_bright_purple

	vim.g.terminal_color_6 = c.term_cyan
	vim.g.terminal_color_14 = c.term_bright_cyan

	vim.g.terminal_color_7 = c.term_white
	vim.g.terminal_color_15 = c.term_bright_white
end

return M

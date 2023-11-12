local palette = require 'moonwalk.palette'
local util = require 'moonwalk.util'
local config = require 'moonwalk.config'

local M = {}

function M.load()
	local opts = config.get()
	if vim.g.colors_name then vim.cmd.highlight 'clear' end
	if vim.fn.exists 'syntax_on' then vim.cmd.syntax 'reset' end
	vim.o.termguicolors = true
	vim.g.colors_name = 'moonwalk'
	util.load_schemes(opts)
	if vim.env.MOONWALK_DEV then util.live_reloading() end
	if opts.terminal_colors then util.set_terminal_colors() end
end

function M.setup(opts)
	config.set(opts or {})
end

return M

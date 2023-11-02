local palette = require 'moonwalk.palette'

local M = {}

function M.load_schemes()
	local names = {
		'base',
	}
	for _, name in ipairs(names) do
		local module = 'moonwalk.schemes.' .. name
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

return M

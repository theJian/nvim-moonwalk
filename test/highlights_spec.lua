local calc_apca = require'color'.calc_apca
local abs = math.abs

vim.cmd.colorscheme('moonwalk')

test('moonwalk is loaded', function()
	expect(vim.g.colors_name).toBe('moonwalk')
end)

-- Test if highlights meet the minimal contrast requirement
do
	local excludes = vim.tbl_add_reverse_lookup{
		'Ignore',
		'NonText',
		'NvimInternalError',
		'StatusLineNC',
		'WinBarNC',
		'TabLineFill',
		'TabLine',
		'ColorColumn',
		'WinSeparator',
		'VertSplit',
	}
	local normal_bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg
	local hl_group = vim.api.nvim_get_hl(0, {})
	for name, _ in pairs(hl_group) do
		local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
		local fg = hl.fg
		local bg = hl.bg or normal_bg

		local function is_excluded(name)
			repeat
				if not name then
					return false
				end

				if excludes[name] then
					return true
				end

				name = vim.api.nvim_get_hl(0, { name = name }).link
			until not name
		end

		if fg and not is_excluded(name) then
			test(string.format('contrast of %s should be >= Lc40', name), function()
				expect(abs(calc_apca(fg, bg))).toBeGreaterThanOrEqual(40)
			end)
		end
	end
end

-- Test terminal colors
do
	for i = 0,6 do
		-- local bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg
		-- local fg = vim.g['terminal_color_' .. i]
		-- test(string.format('contrast of vim.g.terminal_color_%s should be >= 75', i), function()
		-- end)
	end
end

local calc_apca = require'color'.calc_apca
local abs = math.abs

vim.cmd.colorscheme('moonwalk')

test('moonwalk is loaded', function()
	expect(vim.g.colors_name == 'moonwalk')
end)

do
	local excludes = vim.tbl_add_reverse_lookup{
		'NvimInternalError',
	}
	local normal_bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg
	local hl_group = vim.api.nvim_get_hl(0, {})
	for name, v in pairs(hl_group) do
		hl = vim.api.nvim_get_hl(0, { name = name, link = false })
		local fg = hl.fg
		local bg = hl.bg or normal_bg
		local is_excluded = excludes[name] or v.link and excludes[v.link]
		if fg and not is_excluded then
			test(name .. ' minimum contrast Lc40', function()
				expect(abs(calc_apca(fg, bg)) > 0)
			end)
		end
	end
end

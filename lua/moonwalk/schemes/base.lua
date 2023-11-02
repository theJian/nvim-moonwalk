local function base(opts)
	local c = opts.colors
	return {
		Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
		NormalNC = {
			fg = c.fg,
			bg = (opts.transparent and c.none or c.bg),
		},
	}
end

return base

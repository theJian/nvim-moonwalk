local color = require'color'

vim.cmd.colorscheme('moonwalk')

test('moonwalk is loaded', function()
	expect(vim.g.colors_name == 'moonwalk')
end)

test('TODO', function()
	-- TODO
end)

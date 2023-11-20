-- @ref: https://github.com/Myndex/apca-w3/blob/master/test/index.js

local calcAPCA = require'color'.calcAPCA

local color = {'#888888', '#FFFFFF', '#000000', '#aaaaaa',
	'#112233', '#ddeeff', '#112233', '#444444'}

local contrastResult = {63.056469930209424, -68.54146436644962, 58.146262578561334, -56.24113336839742, 91.66830811481631, -93.06770049484275, 8.32326136957393, -7.526878460278154,54.62184067441377,54.62184067441377}

for i=1,#color-1,2 do
	test(string.format('Lc value for %s and %s', color[i], color[i+1]), function ()
		expect(contrastResult[i] == calcAPCA(color[i], color[i+1]))
	end)

	test(string.format('Lc value for %s and %s', color[i+1], color[i]), function ()
		expect(contrastResult[i+1] == calcAPCA(color[i+1], color[i]))
	end)
end

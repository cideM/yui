local colour = require("colour")
local Lightline = {}

setmetatable(Lightline, {
	__call = function(self, ...)
		return self:new(...)
	end,
})

function Lightline:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.__tostring = self.render
	return o
end

function Lightline:render()
	for i, v in ipairs(self) do
		if type(v) == "function" then
			self[i] = v()
		end
	end

	local fg, bg, gui = table.unpack(self)
	local ctermfg, ctermbg = colour.hex_to_256(fg), colour.hex_to_256(bg)

	-- From lightline docs
	-- let s:p.{mode}.{where} = [ [ {guifg}, {guibg}, {ctermfg}, {ctermbg} ], ... ]
	if gui then
		return string.format("['%s', '%s', %d, %d, '%s']", fg, bg, ctermfg, ctermbg, gui)
	else
		return string.format("['%s', '%s', %d, %d]", fg, bg, ctermfg, ctermbg)
	end
end

return Lightline

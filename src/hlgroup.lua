local colour = require("colour")

local HLGroup = {}

setmetatable(HLGroup, {
	__call = function(self, ...)
		return self:new(...)
	end,
})

function HLGroup:new(o)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.__tostring = self.render
	return o
end

function HLGroup:render()
	for k, v in pairs(self) do
		if type(v) == "function" then
			self[k] = v()
		end
	end

	local name = self[1]

	-- special colors that can be used for guifg and guibg
	local special_colors = {
		fg = true,
		bg = true,
		foreground = true,
		background = true,
		NONE = true,
	}

	local buf = {}

	if self.link then
		table.insert(buf, string.format("hi! link %s %s", name, self.link))
		goto done
	end

	table.insert(buf, "hi " .. name)

	if self.guifg then
		if special_colors[self.guifg] then
			table.insert(buf, string.format("guifg=%s ctermfg=%s", self.guifg, self.guifg))
		else
			table.insert(buf, string.format("guifg=%s ctermfg=%d", self.guifg, colour.hex_to_256(self.guifg)))
		end
	end

	if self.guibg then
		if special_colors[self.guibg] then
			table.insert(buf, string.format("guibg=%s ctermbg=%s", self.guibg, self.guibg))
		else
			table.insert(buf, string.format("guibg=%s ctermbg=%d", self.guibg, colour.hex_to_256(self.guibg)))
		end
	end

	if self.guisp then
		table.insert(buf, "guisp=" .. self.guisp)
	end

	if self.gui then
		if type(self.gui) == "string" then
			self.gui = { self.gui }
		end
		table.insert(buf, "gui=" .. table.concat(self.gui, ","))
		if not self.cterm then
			table.insert(buf, "cterm=" .. table.concat(self.gui, ","))
		end
	end

	if self.cterm then
		table.insert(buf, "cterm=" .. table.concat(self.cterm, ","))
	end

	::done::
	return table.concat(buf, " ")
end

return HLGroup

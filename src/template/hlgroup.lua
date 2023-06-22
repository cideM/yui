local colour = require("colour")

local HLGroup = {}

-- special colors that can be used for guifg and guibg
local special_colors = {
	fg = true,
	bg = true,
	foreground = true,
	background = true,
	NONE = true,
	none = true,
}

-- allowed values for gui
local underlines = {
	undercurl = true,
	underline = true,
	underdouble = true,
	underdotted = true,
	underdashed = true,
}

-- allowed attributes for gui and cterm
local allowed_attrs = {
	bold = true,
	underline = true,
	undercurl = true,
	underdouble = true,
	underdotted = true,
	underdashed = true,
	inverse = true,
	reverse = true,
	standout = true,
	italic = true,
	strikethrough = true,
	nocombine = true,
	NONE = true,
}

local hlgroup_mt = {
	__tostring = function(self)
		return self:to_vim()
	end,
	__index = HLGroup,
}

setmetatable(HLGroup, {
	__call = function(cls, ...)
		return cls:new(...)
	end,
})

function HLGroup:iter()
	return coroutine.wrap(function()
		coroutine.yield(self)
	end)
end

function HLGroup:to_vim()
	local buf = {}

	if self.link then
		table.insert(buf, string.format("hi! link %s %s", self.name, self.link))
		goto done
	end

	table.insert(buf, "hi " .. self.name)

	if self.guifg then
		if special_colors[self.guifg] then
			table.insert(buf, string.format("guifg=%s ctermfg=%s", self.guifg, self.guifg))
		else
			table.insert(
				buf,
				string.format("guifg=%s ctermfg=%d", self.guifg, colour.hex_to_256(self.guifg))
			)
		end
	end

	if self.guibg then
		if special_colors[self.guibg] then
			table.insert(buf, string.format("guibg=%s ctermbg=%s", self.guibg, self.guibg))
		else
			table.insert(
				buf,
				string.format("guibg=%s ctermbg=%d", self.guibg, colour.hex_to_256(self.guibg))
			)
		end
	end

	if self.guisp then
		table.insert(buf, "guisp=" .. self.guisp)
	end

	if self.gui then
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

function HLGroup:new(init)
	local t = {}
	setmetatable(t, hlgroup_mt)

	assert(init.name, "name is required")
	t.name = init.name

	if init.link then
		for _, s in ipairs { "guibg", "guifg", "gui", "guisp", "cterm" } do
			assert(init[s] == nil, s .. " must be nil for link but was " .. tostring(init[s]))
		end
		t.link = init.link
		goto done
	end

	t.guifg = init.guifg
	t.guibg = init.guibg

	if init.gui then
		if type(init.gui) == "string" then
			assert(allowed_attrs[init.gui], "invalid gui attribute: " .. init.gui)
			t.gui = { init.gui }
		else
			for _, attr in ipairs(init.gui) do
				assert(allowed_attrs[attr], "invalid gui attribute: " .. attr)
			end
			t.gui = init.gui
		end
	end

	if init.cterm then
		if type(init.cterm) == "string" then
			assert(allowed_attrs[init.cterm], "invalid cterm attribute: " .. init.cterm)
			t.cterm = { init.cterm }
		else
			for _, attr in ipairs(init.cterm) do
				assert(allowed_attrs[attr], "invalid cterm attribute: " .. attr)
			end
			t.cterm = init.cterm
		end
	end

	if init.guisp then
		local has_underline = underlines[init.gui]
		if type(init.gui) == "table" then
			for _, attr in ipairs(init.gui) do
				if underlines[attr] then
					has_underline = true
					break
				end
			end
		end

		assert(has_underline, "guisp can only be used with gui=underline")
		t.guisp = init.guisp
	end

	::done::
	return t
end

return HLGroup

local option = require("option")
local strings = require("strings")

local LINE_LEN = 78

local Theme = {}

setmetatable(Theme, {
	__call = function(cls, ...)
		return cls:new(...)
	end,
	__tostring = function(__self)
		return __self:to_vim()
	end,
	__index = function(_, k)
		return rawget(Theme, k)
	end,
})

function Theme:new(init)
	local t = init
	setmetatable(t, getmetatable(self))
	return t
end

function Theme:to_vim()
	local buf = {}
	for _, v in ipairs(self) do
		table.insert(buf, tostring(v))
	end
	return table.concat(buf, "\n")
end

function Theme:docs()
	local docs = {
		strings.space_between("*yui.txt*", "A minimal colorscheme for Vim and Neovim", LINE_LEN),
		"",
		"YUI | ユイ",
		"",
	}
	table.insert(docs, string.format("%s", string.rep("=", LINE_LEN)))

	table.insert(docs, strings.space_between("OPTIONS", "*yui-options*", LINE_LEN))
	table.insert(docs, "")
	for i, v in ipairs(self) do
		if option.Is(v) then
			table.insert(docs, v:docs(LINE_LEN))
			if i > 1 then
				table.insert(docs, string.rep("-", LINE_LEN))
			end
		end
	end

	-- Without the additional space, the modeline isn't recognized.
	-- Adding the space in the string literal doesn't work, since Vim/Neovim
	-- will then parse the modeline and fail on the closing quote and parenthesis.
	table.insert(docs, " " .. "vim:tw=78:et:ft=help:norl:")
	return table.concat(docs, "\n")
end

return Theme

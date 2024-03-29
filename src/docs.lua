local s = require("strings")

local DEFAULT_LINE_LEN = 78

local Docs = {}

local header = {
	s.space_between("*yui.txt*", "A minimal colorscheme for Vim and Neovim", DEFAULT_LINE_LEN),
	"",
	"YUI | ユイ",
	"",
}

function Docs:new(o)
	o = o or {
		line_len = 78,
		buf = { table.unpack(header) },
	}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Docs:space_between(left, right)
	return s.space_between(left, right, self.line_len)
end

function Docs:section(title, tag)
	tag = tag or title
	local lines = {
		string.rep("=", DEFAULT_LINE_LEN),
		self:space_between(string.format("%s", title:upper()), string.format("*%s*", tag)),
		"",
	}
	table.insert(self.buf, table.concat(lines, "\n"))
end

function Docs:option(o)
	local title = o.title
	local tag = o.tag or title
	local desc = o.desc
	local example = o.example
	local values = {}
	for _, v in ipairs(o.values) do
		table.insert(values, self:space_between(" * " .. v[1] .. ":", v[2]))
	end

	local lines = {
		string.rep("-", DEFAULT_LINE_LEN),
		self:space_between("", string.format("*%s*", tag)),
		string.format("%s~", title),
		"",
		desc,
		table.concat(values, "\n"),
		"",
		string.format("Example: >\n%s\n<", s.indent(example, " ")),
	}
	table.insert(self.buf, table.concat(lines, "\n"))
end

function Docs:render()
	table.insert(self.buf, "vim:tw=78:ts=8:ft=help:norl:")
	return table.concat(self.buf, "\n")
end

return Docs

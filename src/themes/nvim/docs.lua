--[[
This file has a few utility functions for creating Vim script documentation.
The abstractions are pretty mediocre and in the long run I'd like to use an
entirely different method. Could be writing it all by hand, or generating
the Vim script documentation from some other source (Markdown?).
--]]

local s = require("lib/strings")

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

local docs = Docs:new()

docs:section("OPTIONS")
docs:option {
	title = "g:yui_folds",
	desc = "How folds should be displayed",
	values = {
		{ "fade", "Fade out folds (default)" },
		{ "emphasize", "Make folds more visible" },
	},
	example = "let g:yui_folds = 'fade'",
}

docs:option {
	title = "g:yui_line_numbers",
	desc = "How line numbers should be displayed",
	values = {
		{ "fade", "Fade out line numbers (default)" },
		{ "emphasize", "Make line numbers more visible" },
	},
	example = "let g:yui_line_numbers = 'fade'",
}

docs:option {
	title = "g:yui_emphasized_comments",
	desc = [[
DEPRECATED: Use |yui_comments| instead

Whether to emphasize comments]],
	values = {
		{ "0", "Do not emphasize comments (default)" },
		{ "1", "Emphasize comments" },
	},
	example = "let g:yui_line_numbers = 'fade'",
}

docs:option {
	title = "g:yui_comments",
	desc = "How comments should be displayed",
	values = {
		{ "bg", "Make comments have a background color" },
		{ "emphasize", "Make comments more visible" },
		{ "fade", "Fade out comments" },
		{ "normal", "Do not change comments (default)" },
	},
	example = "let g:yui_comments = 'normal'",
}

docs:option {
	title = "g:yui_lightline",
	desc = [[
DEPRECATED: The lightline initialization is now done through an autoloaded
function. You therefore no longer need to tell the yui theme whether or not
you're using lightline. It's enough to just set the g:lightline.colorscheme
variable to 'yui' (see below).

Whether to use the lightline theme]],
	values = {
		{ "v:true", "Use the lightline theme" },
		{ "v:false", "Do not use the lightline theme (default)" },
	},
	example = [[
let g:yui_lightline = v:true
let g:lightline.colorscheme = 'yui']],
}

return docs

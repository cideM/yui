local option = require("option")
local strings = require("strings")
local And = require("and_or").And
local Cond = require("condition")

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

local required = {
	"fg",
	"fg_muted",
	"fg_dim",
	"bg",
	"menu_fg",
	"menu_bg",
	"statusline_fg",
	"statusline_bg",
	"success_bg",
	"success_fg",
	"info_bg",
	"info_fg",
	"warning_bg",
	"warning_fg",
	"error_bg",
	"error_fg",
	"focus_fg",
	"focus_bg",
}

function Theme:new(options)
	local p = options.palette
	assert(options.name, "name is required")
	assert(p, "palette is required")

	for _, v in ipairs(required) do
		assert(p[v], string.format("palette.%s is required", v))
	end

	local t = {
		name = options.name,
		palette = p,
		colors = {
			"set background=light",
			Cond {
				And {
					"!has('gui_running')",
					"&t_Co < 256",
					"!has('nvim')",
				},
				"finish",
			},

			"hi clear",

			Cond {
				"exists('syntax_on')",
				"syntax reset",
			},

			string.format("let g:colors_name = '%s'", options.name),

			table.unpack(options.colors),
		},
	}

	setmetatable(t, getmetatable(self))
	return t
end

function Theme:to_vim()
	local buf = {}
	for _, v in ipairs(self.colors) do
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
	for i, v in ipairs(self.colors) do
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

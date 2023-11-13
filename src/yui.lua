local colour = require("colour")
local Theme = require("theme")
local Nvim = require("nvim")
local hl = require("hlgroup")
local Deferred = require("deferred")
local ll = require("lightline")
local s = require("strings")
local Docs = require("docs")

local redirections = {
	fg = { "Normal", "guifg" },
	bg = { "Normal", "guibg" },
	foreground = { "Normal", "guifg" },
	background = { "Normal", "guibg" },
}
local redirect = function(get, v)
	if type(v) == "table" and v.link then
		return get(v.link)
	elseif type(v) ~= "table" and redirections[v] then
		return get(table.unpack(redirections[v]))
	end
end
local d = Deferred:new(redirect)

local nvim = Nvim:new(d)
local alacritty = Theme:new(d)
local lightline = Theme:new(d)

local palette = {
	black = "#504944",
	purple = "#2D199F",
	blue = "#1E5571",
	green = "#38551E",
	red = "#A50303",
	yellow = "#605001",
	cyan = "#29574E",
	white = "#f1eded",
	orange = "#bf7c2a",
}

local p = palette

lightline:interpolate(
	[[
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.visual.left = [${lightline_visual_left_1}, ${lightline_normal_outer}]
let s:p.tabline.tabsel = [${lightline_tabline_tabsel}]
let s:p.tabline.middle = [${lightline_tabline_middle}]
let s:p.tabline.left = [${lightline_tabline_left}]
let s:p.replace.left = [${lightline_replace_left_1}, ${lightline_normal_outer}]
let s:p.normal.warning = [${lightline_normal_warning}]
let s:p.normal.right = [${lightline_normal_outermost}, ${lightline_normal_outer}, ${lightline_normal_next_to_middle}]
let s:p.normal.middle = [${lightline_normal_middle}]
let s:p.normal.left = [${lightline_normal_outermost}, ${lightline_normal_outer}, ${lightline_normal_next_to_middle}]
let s:p.normal.error = [${lightline_normal_error}]
let s:p.insert.left = [${lightline_insert_left_1}, ${lightline_normal_outer}]
let s:p.inactive.right = [${lightline_inactive_outermost}, ${lightline_inactive_outer}, ${lightline_inactive_next_to_middle}]
let s:p.inactive.middle = [${lightline_inactive_middle}]
let s:p.inactive.left = [${lightline_inactive_outermost}, ${lightline_inactive_outer}, ${lightline_inactive_next_to_middle}]
let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)
]],
	{
		lightline_normal_middle = ll {
			d:get("StatusLine", "guifg"),
			d:get("StatusLine", "guibg"),
		},
		lightline_normal_outermost = ll {
			d:call("lightline_normal_outer", 1, colour.lighten, 4),
			d:call("lightline_normal_outer", 2, colour.lighten, 4),
		},
		lightline_normal_outer = ll {
			d:call("lightline_normal_next_to_middle", 1, colour.lighten, 4),
			d:call("lightline_normal_next_to_middle", 2, colour.lighten, 4),
		},
		lightline_normal_next_to_middle = ll {
			d:get("lightline_normal_middle", 1),
			d:get("lightline_normal_middle", 2),
		},
		lightline_visual_left_1 = ll { d:get("Visual", "guifg"), d:get("Visual", "guibg") },
		lightline_tabline_tabsel = ll { d:get("TabLineSel", "guifg"), d:get("TabLineSel", "guibg") },
		lightline_tabline_middle = ll { d:get("TabLineFill", "guifg"), d:get("TabLineFill", "guibg") },
		lightline_tabline_left = ll { d:get("TabLineFill", "guifg"), d:get("TabLineFill", "guibg") },
		lightline_replace_left_1 = ll { d:get("DiffDelete", "guibg"), d:get("DiffDelete", "guifg") },
		lightline_normal_warning = ll { d:get("DiffChange", "guibg"), d:get("DiffChange", "guifg") },
		lightline_normal_error = ll { d:get("DiffDelete", "guibg"), d:get("DiffDelete", "guifg") },
		lightline_insert_left_1 = ll { d:get("DiffAdd", "guibg"), d:get("DiffAdd", "guifg") },
		lightline_inactive_outermost = ll {
			d:call("lightline_inactive_outer", 1, colour.lighten, 2),
			d:call("lightline_inactive_outer", 2, colour.lighten, 2),
		},
		lightline_inactive_outer = ll {
			d:call("lightline_inactive_next_to_middle", 1, colour.lighten, 2),
			d:call("lightline_inactive_next_to_middle", 2, colour.lighten, 2),
		},
		lightline_inactive_next_to_middle = ll {
			d:call("lightline_inactive_middle", 1, colour.lighten, 2),
			d:call("lightline_inactive_middle", 2, colour.lighten, 2),
		},
		lightline_inactive_middle = ll {
			d:call("NormalNC", "guifg", colour.lighten, 5),
			d:call("NormalNC", "guibg", colour.lighten, -3),
		},
	}
)

alacritty:interpolate(
	[[
{ 
	"colors": {
		"primary": {
			"foreground": "${alac_primary_fg}",
			"background": "${alac_primary_bg}",
			"dim_foreground": "${alac_primary_dim_fg}",
			"bright_foreground": "${alac_primary_bright_fg}",
		},
		"cursor": {
			"text": "${alac_cursor_fg}",
			"cursor": "${alac_cursor_bg}",
		},
		"vi_mode_cursor": {
			"text": "${alac_vi_cursor_fg}",
			"cursor": "${alac_vi_cursor_bg}",
		},
		"search": {
			"matches": {
				"foreground": "${alac_matches_fg}",
				"background": "${alac_matches_bg}",
			},
			"focused_match": {
				"foreground": "${alac_focused_match_fg}",
				"background": "${alac_focused_match_bg}",
			},
		},
		"hints": {
			"start": {
				"foreground": "${alac_first_hint_char_fg}",
				"background": "${alac_first_hint_char_bg}",
			},
			"end": {
				"foreground": "${alac_chars_after_first_hint_fg}",
				"background": "${alac_chars_after_first_hint_bg}",
			},
		},
		"line_indicator": {
			"foreground": "${alac_line_indicator_fg}",
			"background": "${alac_line_indicator_bg}",
		},
		"footer_bar": {
			"foreground": "${alac_footer_fg}",
			"background": "${alac_footer_bg}",
		},
		"selection": {
			"text": "${alac_selection_fg}",
			"background": "${alac_selection_bg}",
		},
		"normal": {
			"black": "${alac_normal_black}",
			"red": "${alac_normal_red}",
			"green": "${alac_normal_green}",
			"yellow": "${alac_normal_yellow}",
			"blue": "${alac_normal_blue}",
			"magenta": "${alac_normal_magenta}",
			"cyan": "${alac_normal_cyan}",
			"white": "${alac_normal_white}",
		},
		"bright": {
			"black": "${alac_bright_black}",
			"red": "${alac_bright_red}",
			"green": "${alac_bright_green}",
			"yellow": "${alac_bright_yellow}",
			"blue": "${alac_bright_blue}",
			"magenta": "${alac_bright_magenta}",
			"cyan": "${alac_bright_cyan}",
			"white": "${alac_bright_white}",
		},
		"dim": {
			"black": "${alac_dim_black}",
			"red": "${alac_dim_red}",
			"green": "${alac_dim_green}",
			"yellow": "${alac_dim_yellow}",
			"blue": "${alac_dim_blue}",
			"magenta": "${alac_dim_magenta}",
			"cyan": "${alac_dim_cyan}",
			"white": "${alac_dim_white}",
		}
	}
}
]],
	{
		alac_primary_fg = d:get("Normal", "guifg"),
		alac_primary_bg = d:get("Normal", "guibg"),
		alac_primary_dim_fg = d:call("Normal", "guifg", colour.lighten, -5),
		alac_primary_bright_fg = d:call("Normal", "guifg", colour.lighten, 5),
		alac_cursor_fg = p.black,
		alac_cursor_bg = d:call("alac_vi_cursor_bg", colour.lighten, 5),
		alac_vi_cursor_fg = p.black,
		alac_vi_cursor_bg = p.orange,
		alac_matches_fg = d:get("Search", "guifg"),
		alac_matches_bg = d:get("Search", "guibg"),
		alac_focused_match_fg = d:get("IncSearch", "guifg"),
		alac_focused_match_bg = d:get("IncSearch", "guibg"),
		alac_first_hint_char_fg = d:get("DiagnosticInfo", "guibg"),
		alac_first_hint_char_bg = d:get("DiagnosticInfo", "guifg"),
		alac_chars_after_first_hint_fg = d:get("DiagnosticInfo", "guifg"),
		alac_chars_after_first_hint_bg = d:get("DiagnosticInfo", "guibg"),
		alac_line_indicator_fg = d:get("StatusLine", "guifg"),
		alac_line_indicator_bg = d:get("StatusLine", "guibg"),
		alac_footer_fg = d:get("StatusLine", "guifg"),
		alac_footer_bg = d:get("StatusLine", "guibg"),
		alac_selection_fg = d:get("Visual", "guifg"),
		alac_selection_bg = d:get("Visual", "guibg"),
		alac_normal_black = d:get("term_black"),
		alac_normal_red = d:get("term_red"),
		alac_normal_green = d:get("term_green"),
		alac_normal_yellow = d:get("term_yellow"),
		alac_normal_blue = d:get("term_blue"),
		alac_normal_magenta = d:get("term_purple"),
		alac_normal_cyan = d:get("term_cyan"),
		alac_normal_white = d:get("term_white"),
		alac_bright_black = d:get("term_bright_black"),
		alac_bright_red = d:get("term_bright_red"),
		alac_bright_green = d:get("term_bright_green"),
		alac_bright_yellow = d:get("term_bright_yellow"),
		alac_bright_blue = d:get("term_bright_blue"),
		alac_bright_magenta = d:get("term_bright_purple"),
		alac_bright_cyan = d:get("term_bright_cyan"),
		alac_bright_white = d:get("term_bright_white"),
		alac_dim_black = d:call("term_black", colour.lighten, -10),
		alac_dim_red = d:call("term_red", colour.lighten, -10),
		alac_dim_green = d:call("term_green", colour.lighten, -10),
		alac_dim_yellow = d:call("term_yellow", colour.lighten, -10),
		alac_dim_blue = d:call("term_blue", colour.lighten, -10),
		alac_dim_magenta = d:call("term_purple", colour.lighten, -10),
		alac_dim_cyan = d:call("term_cyan", colour.lighten, -10),
		alac_dim_white = d:call("term_white", colour.lighten, -10),
	}
)

nvim:interpolate(
	[[
set background=light

if (!has('gui_running') && &t_Co < 256 && !has('nvim'))
	finish
endif

hi clear

if exists('syntax_on')
	syntax reset
endif

	]],
	{}
)

nvim:add_hlgroups {
	hl { "Normal", guifg = p.black, guibg = p.white },
	hl {
		"NormalNC",
		guifg = d:call("Normal", "guifg", colour.lighten, -2),
		guibg = d:call("Normal", "guibg", colour.lighten, -3),
	},
	hl { "MsgArea", link = "Normal" },
	hl { "Conceal", guifg = d:call("Normal", "guifg", colour.lighten, 5), guibg = "NONE", gui = "NONE" },
	hl { "ToolbarButton", link = "TabLine" },
	hl { "ToolbarLine", link = "TabLineFill" },
	hl { "Cursor", guifg = "bg", guibg = "fg" },
	hl { "CursorLineNr", link = "CursorLine" },
	hl { "CursorLine", guifg = "NONE", guibg = d:call("Normal", "guibg", colour.lighten, -3), gui = "NONE" },
	hl { "lCursor", link = "Cursor" },
	hl { "CursorIM", link = "Cursor" },
	hl { "DiffAdd", guifg = p.green, guibg = colour.lighten(p.green, "AAA") },
	hl { "DiffChange", guifg = p.yellow, guibg = colour.lighten(p.yellow, "AAA") },
	hl { "DiffDelete", guifg = p.red, guibg = colour.lighten(p.red, "AAA"), gui = "NONE" },
	hl { "DiffText", guifg = p.blue, guibg = colour.lighten(p.blue, "AAA") },
	hl { "Directory", guifg = "fg", guibg = "NONE" },
	hl { "ErrorMsg", guifg = d:get("DiffDelete", "guifg"), guibg = "NONE", gui = "bold" },
	hl { "Identifier", guifg = "fg", guibg = "NONE" },
	hl { "Ignore", guifg = "fg", guibg = "NONE" },
	hl { "MatchParen", guibg = "NONE", guifg = "fg", gui = "bold" },
	hl { "ModeMsg", guifg = d:get("DiffText", "guifg"), guibg = d:get("DiffText", "guibg"), gui = "NONE" },
	hl { "MoreMsg", guifg = d:get("DiffText", "guifg"), guibg = d:get("DiffText", "guibg"), gui = "NONE" },
	hl { "WarningMsg", guifg = d:get("DiffChange", "guifg"), guibg = d:get("DiffChange", "guibg"), gui = "NONE" },
	hl { "Whitespace", link = "NonText" },
	hl { "TabLine", guifg = d:get("StatusLineNC", "guifg"), guibg = d:get("StatusLineNC", "guibg"), gui = "NONE" },
	hl { "TabLineSel", link = "StatusLine" },
	hl { "TabLineFill", link = "TabLine" },
	hl { "Search", guifg = p.purple, guibg = colour.lighten(p.purple, "AAA"), gui = "NONE" },
	hl {
		"CurSearch",
		guifg = d:call("Search", "guifg", colour.lighten, -5),
		guibg = d:call("CurSearch", "guifg", colour.lighten, "AA"),
		gui = "bold",
	},
	hl {
		"IncSearch",
		guifg = d:call("Search", "guifg", colour.lighten, -3),
		guibg = d:call("IncSearch", "guifg", colour.lighten, "AA"),
		gui = "bold",
	},
	hl { "SpecialKey", guifg = p.yellow, guibg = colour.lighten(p.yellow, "AAA") },
	hl { "SpellCap", link = "SpellBad" },
	hl { "SpellLocal", link = "SpellBad" },
	hl { "SpellRare", link = "SpellBad" },
	hl { "Type", guifg = "NONE", guibg = "NONE", gui = "italic" },
	hl { "Tooltip", link = "Pmenu" },
	hl { "MsgSeparator", link = "VertSplit" },
	hl { "EndOfBuffer", link = "NonText" },
	hl { "QuickFixLine", link = "Search" },
	hl { "WildMenu", link = "IncSearch" },
	hl { "Boolean", link = "Constant" },
	hl { "Character", link = "Constant" },
	hl { "Conditional", guifg = "fg", guibg = "NONE", gui = "NONE" },
	hl { "Define", link = "PreProc" },
	hl { "Debug", link = "Special" },
	hl { "Delimiter", link = "Special" },
	hl { "Float", link = "Number" },
	hl { "Function", link = "Identifier" },
	hl { "Include", link = "PreProc" },
	hl { "Macro", link = "PreProc" },
	hl { "Number", link = "Constant" },
	hl { "PreCondit", link = "PreProc" },
	hl { "SpecialChar", link = "Special" },
	hl { "SpecialComment", link = "Special" },
	hl { "StorageClass", link = "Type" },
	hl { "String", guifg = "fg", guibg = "NONE", gui = "bold" },
	hl { "Structure", link = "Type" },
	hl { "Tag", link = "Special" },
	hl { "Typedef", link = "Type" },
	hl { "Substitute", link = "IncSearch" },
	hl { "Operator", guifg = "fg", guibg = "NONE" },
	hl { "Repeat", guifg = "fg", guibg = "NONE" },
	hl { "Constant", guifg = "fg", guibg = "NONE", gui = "bold" },
	hl { "jsParensError", guifg = "fg", guibg = "NONE" },
	hl { "Todo", link = "DiffChange" },
	hl { "Error", guifg = p.red, guibg = "bg", gui = "bold" },
	hl { "Exception", guifg = "fg", guibg = "NONE" },
	hl { "Keyword", guifg = "fg", guibg = "NONE" },
	hl { "Label", guifg = "fg", guibg = "NONE" },
	hl { "Special", guifg = "fg", guibg = "NONE" },
	hl { "SpellBad", guifg = "fg", guibg = "NONE", gui = "undercurl", guisp = p.red },
	hl { "Statement", guifg = "fg", guibg = "NONE", gui = "italic" },
	hl { "Underlined", guifg = "fg", guibg = "NONE", gui = "underline" },
	hl { "VertSplit", link = "NonText" },
	hl { "Menu", link = "Pmenu" },
	hl { "Title", guifg = "fg", guibg = "NONE" },
	hl { "NormalFloat", link = "Pmenu" },
	hl { "FloatTitle", guifg = "fg", guibg = d:get("Pmenu", "guibg"), gui = { "underline", "bold" } },
	hl { "FloatBorder", guifg = d:get("Pmenu", "guibg"), guibg = d:get("Pmenu", "guibg") },
	hl {
		"StatusLine",
		guifg = d:call("StatusLine", "guibg", colour.lighten, "-AAA"),
		guibg = d:call("Normal", "guibg", colour.lighten, -14),
		gui = "NONE",
	},
	hl {
		"StatusLineNC",
		guifg = d:call("StatusLineNC", "guibg", colour.lighten, "-AA"),
		guibg = d:call("StatusLine", "guibg", colour.lighten, 6),
		gui = "NONE",
	},
	hl { "ColorColumn", guifg = d:get("Normal", "guifg"), guibg = d:call("Normal", "guibg", colour.lighten, -2) },
	hl { "CursorColumn", link = "CursorLine" },
	hl { "CopilotSuggestion", guifg = d:call("Normal", "guifg", colour.lighten, 15), guibg = "NONE" },
	hl {
		"WinBar",
		guifg = "fg",
		guibg = "NONE",
		gui = "underline",
		guisp = d:call("Normal", "guifg", colour.lighten, 15),
	},
	hl { "NonText", guifg = d:call("Normal", "guibg", colour.lighten, -10), guibg = "NONE" },
	hl {
		"WinBarNC",
		guifg = d:call("Normal", "guifg", colour.lighten, 15),
		guibg = "NONE",
		gui = "underline",
		guisp = d:get("NonText", "guifg"),
	},
	hl { "PmenuExtraSel", link = "PmenuSel" },
	hl { "PmenuSel", guifg = p.purple, guibg = colour.lighten(p.purple, "AAA"), gui = "NONE" },
	hl {
		"Pmenu",
		guifg = d:call("Pmenu", "guibg", colour.lighten, "-aaa"),
		guibg = d:call("Normal", "guibg", colour.lighten, 6),
	},
	hl { "PmenuKind", guifg = d:get("Pmenu", "guifg"), guibg = "NONE", gui = "bold" },
	hl { "PmenuKindSel", guifg = d:get("PmenuSel", "guifg"), guibg = d:get("PmenuSel", "guibg"), gui = "bold" },
	hl { "PmenuExtra", guifg = d:call("Pmenu", "guifg", colour.lighten, 5), guibg = "NONE" },
	hl { "PmenuSbar", guifg = "NONE", guibg = "NONE" },
	hl { "PmenuThumb", guifg = "NONE", guibg = d:call("Pmenu", "guibg", colour.lighten, -10) },
	hl { "PreProc", guifg = "fg", guibg = "NONE" },
	hl { "Question", guifg = "fg", guibg = "NONE" },
	hl { "Visual", guifg = d:get("Search", "guifg"), guibg = d:get("Search", "guibg"), gui = "NONE" },
	hl {
		"VisualNOS",
		guifg = d:call("Visual", "guifg", colour.lighten, 5),
		guibg = d:call("Visual", "guibg", colour.lighten, 5),
	},
	hl { "Scrollbar", guifg = "NONE", guibg = d:call("Normal", "guibg", colour.lighten, -8) },
	hl { "DiagnosticError", link = "DiffDelete" },
	hl { "DiagnosticHint", link = "DiffAdd" },
	hl { "DiagnosticInfo", link = "DiffText" },
	hl { "DiagnosticWarn", link = "DiffChange" },
	hl { "DiagnosticFloatingError", guifg = d:get("DiffDelete", "guifg"), guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticFloatingHint", guifg = d:get("DiffAdd", "guifg"), guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticFloatingInfo", guifg = d:get("DiffText", "guifg"), guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticFloatingWarn", guifg = d:get("DiffChange", "guifg"), guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticUnderlineError", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = p.red },
	hl { "DiagnosticUnderlineHint", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = p.green },
	hl { "DiagnosticUnderlineInfo", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = p.blue },
	hl { "DiagnosticUnderlineWarn", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = p.yellow },
	hl { "DiagnosticSignError", guifg = p.red, guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticSignHint", guifg = p.green, guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticSignInfo", guifg = p.blue, guibg = "NONE", gui = "NONE" },
	hl { "DiagnosticSignWarn", guifg = p.yellow, guibg = "NONE", gui = "NONE" },
	hl { "LspSignatureActiveParameter", link = "Search" },
	hl { "vimCommand", guifg = "fg", guibg = "NONE", gui = "NONE" },
	hl { "vimFilter", guifg = "fg", guibg = "NONE", gui = "bold" },
	hl { "vimGroup", guifg = "fg", guibg = "NONE" },
	hl { "vimHiGui", guifg = "fg", guibg = "NONE" },
	hl { "vimHiKeyList", guifg = "fg", guibg = "NONE" },
	hl { "vimHiGroup", guifg = "fg", guibg = "NONE" },
	hl { "vimHiCTerm", guifg = "fg", guibg = "NONE" },
	hl { "vimHiCTermFgBg", guifg = "fg", guibg = "NONE" },
	hl { "vimHiGuiFgBg", guifg = "fg", guibg = "NONE" },
	hl { "luaFuncKeyword", guifg = "fg", guibg = "NONE", gui = "NONE" },
	hl { "luaFuncName", guifg = "fg", guibg = "NONE", gui = { "underline", "bold" } },
	hl { "luaRepeat", link = "Repeat" },
	hl { "luaCond", link = "Conditional" },
	hl { "luaParens", guifg = "fg", guibg = "NONE", gui = "NONE" },
	hl { "luaSpecialValue", guifg = "fg", guibg = "NONE", gui = "bold" },
	hl { "luaLocal", guifg = "fg", guibg = "NONE" },
	hl { "luaGotoLabel", guifg = "fg", guibg = "NONE", gui = d:get("@label.lua", "gui") },
	hl { "luaBraces", guifg = "fg", guibg = "NONE" },
	hl { "luaStatement", guifg = "fg", guibg = "NONE" },
	hl { "luaBuiltIn", link = "luaSpecialValue" },
	hl { "htmlTagName", guifg = "fg", guibg = "NONE", gui = "NONE" },
	hl { "typescriptParens", guifg = "fg", guibg = "NONE" },
	hl { "typescriptFuncName", link = "luaFuncName" },
	hl { "mkHeading", guifg = "NONE", guibg = "NONE", gui = "underline" },
	hl { "mkItalic", guifg = "NONE", guibg = "NONE", gui = "italic" },
	hl { "markdownBold", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "markdownUrl", guifg = "NONE", guibg = "NONE", gui = "underline" },
	hl { "markdownHeadingDelimiter", guifg = "NONE", guibg = "NONE", gui = "underline" },
	hl { "mkCode", guifg = "fg", guibg = "NONE" },
	hl { "mkdCodeDelimiter", link = "mkCode" },
	hl { "markdownItalic", link = "mkItalic" },
	hl { "markdownLinkText", guifg = "fg", guibg = "NONE" },
	hl { "markdownH1", link = "mkdHeading" },
	hl { "markdownH1Delimiter", link = "markdownHeadingDelimiter" },
	hl { "markdownH2", link = "mkdHeading" },
	hl { "markdownH3", link = "mkdHeading" },
	hl { "markdownH4", link = "mkdHeading" },
	hl { "markdownCodeDelimiter", guifg = "NONE", guibg = "NONE" },
	hl { "markdownBoldDelimiter", guifg = "NONE", guibg = "NONE" },
	hl { "markdownItalicDelimiter", guifg = "NONE", guibg = "NONE" },
	hl { "markdownBoldItalicDelimiter", guifg = "NONE", guibg = "NONE" },
	hl { "markdownLinkDelimiter", guifg = "NONE", guibg = "NONE" },
	hl { "markdownLinkTextDelimiter", guifg = "NONE", guibg = "NONE" },
	hl { "helpBacktick", link = "Constant" },
	hl { "helpCommand", guifg = "fg", guibg = "NONE", gui = "bold" },
	hl { "helpDeprecated", link = "DiffDelete" },
	hl { "helpExample", link = "Pmenu" },
	hl { "helpHeader", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "helpHeadline", guifg = "fg", guibg = "NONE", gui = { "bold" } },
	hl { "helpHyperTextEntry", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "helpHyperTextJump", guifg = "NONE", guibg = "NONE", gui = "underline" },
	hl { "helpNote", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "helpOption", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "helpSectionDelim", guifg = p.fg_dim, guibg = "NONE", gui = "NONE" },
	hl { "helpSpecial", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "helpURL", guifg = "NONE", guibg = "NONE", gui = "underline" },
	hl { "xmlProcessingDelim", guifg = "fg", guibg = "NONE" },
	hl { "xmlTagName", guifg = "NONE", guibg = "NONE", gui = "NONE" },
	hl { "fugitiveStagedSection", guifg = "fg", guibg = "NONE", gui = { "underline", "bold" } },
	hl { "fugitiveUnstagedSection", guifg = "fg", guibg = "NONE", gui = { "underline", "bold" } },
	hl { "diffAdded", link = "DiffAdd" },
	hl { "diffLine", guifg = "fg", guibg = "NONE", gui = { "bold", "underline" } },
	hl { "diffSubname", link = "diffLine" },
	hl { "gitHashAbbrev", guifg = "fg", guibg = "NONE", gui = "underline" },
	hl { "diffChanged", link = "DiffChange" },
	hl { "diffRemoved", link = "DiffDelete" },
	hl { "diffComment", link = "Comment" },
	hl { "GitSignsAdd", guifg = d:call("DiffAdd", "guifg", colour.lighten, 20), guibg = "NONE" },
	hl { "GitSignsAddNr", link = "GitSignsAdd" },
	hl { "GitSignsAddLn", link = "GitSignsAdd" },
	hl { "GitSignsChange", guifg = d:call("DiffChange", "guifg", colour.lighten, 30), guibg = "NONE" },
	hl { "GitSignsChangeNr", link = "DiffChange" },
	hl { "GitSignsChangeLn", link = "DiffChange" },
	hl { "GitSignsDelete", guifg = d:call("DiffDelete", "guifg", colour.lighten, 20), guibg = "NONE" },
	hl { "GitSignsDeleteNr", link = "DiffDelete" },
	hl { "GitSignsDeleteLn", link = "DiffDelete" },
	hl { "IndentBlanklineChar", link = "VertSplit" },
	hl { "Sneak", link = "Visual" },
	hl { "SneakScope", link = "IncSearch" },
	hl { "SneakLabel", link = "Search" },
	hl { "DirvishPathTail", guifg = "NONE", guibg = "NONE", gui = "bold" },
	hl { "DirvishArg", link = "Search" },
	hl { "HlSearchLensNear", link = "StatusLine" },
	hl { "HlSearchLens", link = "StatusLineNC" },
	hl { "HlSearchNear", link = "Search" },
	hl { "ConflictMarkerBegin", link = "DiffAdd" },
	hl { "ConflictMarkerOurs", link = "DiffAdd" },
	hl { "ConflictMarkerTheirs", link = "DiffText" },
	hl { "ConflictMarkerEnd", link = "DiffText" },
	hl { "jsxOpenPunct", guifg = "fg", guibg = "NONE" },
	hl {
		"TreesitterContextBottom",
		guifg = "NONE",
		guibg = "NONE",
		gui = "underline",
		guisp = d:call("DiffText", "guibg", colour.lighten, -10),
	},
	hl {
		"TreesitterContext",
		guifg = d:get("DiffText", "guifg"),
		guibg = d:call("DiffText", "guibg", colour.lighten, 0),
		gui = "NONE",
	},
	hl { "LeapMatch", link = "CurSearch" },
	hl { "LeapLabelPrimary", link = "CurSearch" },
	hl { "LeapLabelSecondary", guifg = d:get("Search", "guifg"), guibg = d:get("Search", "guifg"), gui = "NONE" },
	hl { "LeapLabelSelected", guifg = d:get("Search", "guifg"), guibg = d:get("Search", "guibg"), gui = "NONE" },
	hl { "WhichKeySeperator", guifg = "fg", guibg = "NONE" },
	hl { "WhichKeyFloating", link = "Pmenu" },
	hl { "TelescopeMatching", link = "CurSearch" },
	hl { "TelescopeSelection", link = "Search" },
}

nvim:interpolate(
	[[
if has('nvim')
	let g:terminal_color_0 = '${term_black}'
	let g:terminal_color_1 = '${term_red}'
	let g:terminal_color_2 = '${term_green}'
	let g:terminal_color_3 = '${term_yellow}'
	let g:terminal_color_4 = '${term_blue}'
	let g:terminal_color_5 = '${term_purple}'
	let g:terminal_color_6 = '${term_cyan}'
	let g:terminal_color_7 = '${term_white}'
	let g:terminal_color_8 = '${term_bright_black}'
	let g:terminal_color_9 = '${term_bright_red}'
	let g:terminal_color_10 = '${term_bright_green}'
	let g:terminal_color_11 = '${term_bright_yellow}'
	let g:terminal_color_12 = '${term_bright_blue}'
	let g:terminal_color_13 = '${term_bright_purple}'
	let g:terminal_color_14 = '${term_bright_cyan}'
	let g:terminal_color_15 = '${term_bright_white}'
	${@text_literal}
	${@text_reference}
	${@tag.tsx}
	${@function.lua}
	${@keyword.function.lua}
	${@repeat.lua}
	${@conditional.lua}
	${@function.builtin.lua}
	${@variable.builtin.lua}
	${@method.lua}
	${@label.lua}
else
	${statusline_term}
	${statusline_term_nc}
	let g:terminal_ansi_colors = [
		\ '${term_black}',
		\ '${term_red}',
		\ '${term_green}',
		\ '${term_yellow}',
		\ '${term_blue}',
		\ '${term_purple}',
		\ '${term_cyan}',
		\ '${term_white}',
		\ '${term_bright_black}',
		\ '${term_bright_red}',
		\ '${term_bright_green}',
		\ '${term_bright_yellow}',
		\ '${term_bright_blue}',
		\ '${term_bright_purple}',
		\ '${term_bright_cyan}',
		\ '${term_bright_white}']
endif
]],
	{
		term_black = p.black,
		term_red = p.red,
		term_green = p.green,
		term_yellow = p.yellow,
		term_blue = p.blue,
		term_purple = p.purple,
		term_cyan = p.cyan,
		term_white = colour.lighten(p.black, "aa"),
		term_bright_black = colour.lighten(p.black, 10),
		term_bright_red = colour.lighten(p.red, 10),
		term_bright_green = colour.lighten(p.green, 10),
		term_bright_yellow = colour.lighten(p.yellow, 10),
		term_bright_blue = colour.lighten(p.blue, 10),
		term_bright_purple = colour.lighten(p.purple, 10),
		term_bright_cyan = colour.lighten(p.cyan, 10),
		term_bright_white = d:call("term_bright_black", colour.lighten, "aa"),
		["@text_literal"] = hl { "@text.literal", link = "helpExample" },
		["@text_reference"] = hl { "@text.reference", link = "helpOption" },
		["@tag.tsx"] = hl { "@tag.tsx", guifg = "fg", guibg = "NONE" },
		["@function.lua"] = hl { "@function.lua", link = "luaFuncName" },
		["@keyword.function.lua"] = hl { "@keyword.function.lua", link = "luaFuncKeyword" },
		["@repeat.lua"] = hl { "@repeat.lua", link = "luaRepeat" },
		["@conditional.lua"] = hl { "@conditional.lua", link = "luaCond" },
		["@function.builtin.lua"] = hl { "@function.builtin.lua", link = "luaSpecialValue" },
		["@variable.builtin.lua"] = hl { "@variable.builtin.lua", link = "luaSpecialValue" },
		["@method.lua"] = hl { "@method.lua", link = "@function.lua" },
		["@label.lua"] = hl { "@label.lua", guifg = "fg", guibg = "NONE", gui = { "bold", "underline" } },
		statusline_term = hl { "StatusLineTerm", link = "StatusLine" },
		statusline_term_nc = hl { "StatusLineTermNC", link = "StatusLineNC" },
	}
)

nvim:interpolate(
	[[

let s:yui_folds_value = get(g:, 'yui_folds', 'fade')
if s:yui_folds_value ==? 'fade'
	${fold_column_fade}
	${folded_fade}
elseif s:yui_folds_value ==? 'emphasize'
	${fold_column_emphasize}
	${folded_emphasize}
endif
	]],
	{
		fold_column_fade = hl { "FoldColumn", guifg = d:call("Normal", "guifg", colour.lighten, 40), guibg = "NONE" },
		folded_fade = hl { "Folded", link = "FoldColumn" },
		fold_column_emphasize = hl {
			"FoldColumn",
			guifg = d:call("Normal", "guifg", colour.lighten, -5),
			guibg = d:call("Normal", "guibg", colour.lighten, -5),
		},
		folded_emphasize = hl { "Folded", link = "FoldColumn" },
	}
)

nvim:interpolate(
	[[

let s:yui_line_numbers_value = get(g:, 'yui_line_numbers', 'fade')
if s:yui_line_numbers_value ==? 'fade'
	${sign_column_fade}
	${line_nr_fade}
elseif s:yui_line_numbers_value ==? 'emphasize'
	${sign_column_emphasize}
	${line_nr_emphasize}
endif
	]],
	{
		sign_column_fade = hl {
			"SignColumn",
			guifg = d:get("fold_column_fade", "guifg"),
			guibg = d:get("fold_column_fade", "guibg"),
		},
		line_nr_fade = hl { "LineNr", link = "SignColumn" },
		sign_column_emphasize = hl {
			"SignColumn",
			guifg = d:get("fold_column_emphasize", "guifg"),
			guibg = d:get("fold_column_emphasize", "guibg"),
		},
		line_nr_emphasize = hl { "LineNr", link = "SignColumn" },
	}
)

nvim:interpolate(
	[[

let s:yui_emphasized_comments_value = get(g:, 'yui_emphasized_comments', 0)
if s:yui_emphasized_comments_value ==? 1
	${comments_legacy_emphasize}
elseif s:yui_emphasized_comments_value ==? 0
	${comments_legacy_fade}
endif
	]],
	{
		comments_legacy_emphasize = hl {
			"Comment",
			guifg = p.purple,
			guibg = "NONE",
		},
		comments_legacy_fade = hl {
			"Comment",
			guifg = d:call("Normal", "guifg", colour.lighten, 15),
			guibg = "NONE",
		},
	}
)

nvim:interpolate(
	[[

let s:yui_comments_value = get(g:, 'yui_comments', 'normal')
if s:yui_comments_value ==? 'normal'
	${comments_normal}
elseif s:yui_comments_value ==? 'fade'
	${comments_fade}
elseif s:yui_comments_value ==? 'emphasize'
	${comments_emphasize}
elseif s:yui_comments_value ==? 'bg'
	${comments_bg}
endif
	]],
	{
		comments_normal = hl { "Comment", guifg = "fg", guibg = "NONE", gui = "italic" },
		comments_fade = hl {
			"Comment",
			guifg = d:get("fold_column_fade", "guifg"),
			guibg = d:get("fold_column_fade", "guibg"),
			gui = "italic",
		},
		comments_emphasize = hl { "Comment", guifg = p.purple, guibg = "NONE", gui = "NONE" },
		comments_bg = hl {
			"Comment",
			guifg = "NONE",
			guibg = d:call("Normal", "guibg", colour.lighten, -5),
			gui = "NONE",
		},
	}
)

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

return {
	theme = nvim:render(),
	alacritty = alacritty:render(),
	lightline = lightline:render(),
	docs = docs:render(),
}

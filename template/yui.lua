local M = {}

local theme = require("theme")
local hsluv = require("hsluv")

-- http://blog.presentandcorrect.com/rams-palettes
-- https://news.ycombinator.com/item?id=26318379
local rams = {
	dr01 = {
		light_blue = "#aab7bf",
		brown = "#736356",
		white = "#bfb1a8",
		red = "#ad1d1d",
		black = "#261201",
	},
	dr03 = {
		orange = "#bf7c2a",
		taupe = "#c09c6f",
		dark_gray = "#5f503e",
		light_gray = "#9c9c9c",
		white = "#e1e4e1",
	},
	dr04 = {
		olive = "#84764b",
		green = "#b7b183",
		black = "#372e2d",
		light_gray = "#bcb3a6",
		white = "#dbd7d3",
	},
	dr06 = {
		tangerine = "#ed8008",
		orange = "#ed3f1c",
		red = "#bf1b1b",
		green = "#736b1e",
		white = "#d9d2c6",
	},
}

local old_yui_colors = {
	white = "#efeae5",
	purple = "#dcd7f9",
}

local palette = {
	blue = rams.dr01.light_blue,
	green = rams.dr04.green,
	red = rams.dr01.red,
	yellow = rams.dr03.orange,
	black = rams.dr03.dark_gray,
	white = old_yui_colors.white,
	accent = old_yui_colors.purple,
	alternative_accent = rams.dr06.orange,
}

local function lightness(color, amount)
	local color_hsluv = hsluv.hex_to_hsluv(color)
	color_hsluv[3] = color_hsluv[3] + amount
	return hsluv.hsluv_to_hex(color_hsluv)
end

local c = {
	accent1 = lightness(palette.accent, -65),
	accent2 = lightness(palette.accent, -50),
	accent3 = lightness(palette.accent, -35),
	accent4 = lightness(palette.accent, -15),
	accent5 = lightness(palette.accent, 0),
	black1 = lightness(palette.black, -10),
	black2 = lightness(palette.black, 0),
	black3 = lightness(palette.black, 7),
	black4 = lightness(palette.black, 14),
	dark_blue = lightness(palette.blue, -40),
	dark_green = lightness(palette.green, -40),
	dark_red = lightness(palette.red, -30),
	dark_yellow = lightness(palette.yellow, -20),
	light_blue = lightness(palette.blue, 15),
	light_green = lightness(palette.green, 15),
	light_red = lightness(palette.red, 40),
	light_yellow = lightness(palette.yellow, 38),
	alternative_accent = lightness(palette.alternative_accent, 0),
	white1 = lightness(palette.white, -12),
	white2 = lightness(palette.white, -7),
	white3 = lightness(palette.white, -2),
	white4 = lightness(palette.white, 3),
	white5 = lightness(palette.white, 6),
}

M.groups = {

	{
		"UI & Syntax",
		{ name = "Normal", guifg = c.black2, guibg = c.white4 },
		{ name = "NormalNC", link = "Normal" },
		{ name = "MsgArea", link = "Normal" },
		{ name = "ColorColumn", guifg = "fg", guibg = c.white3 },
		{ name = "Conceal", guifg = c.white1, guibg = "NONE" },
		{ name = "CursorColumn", guifg = "NONE", guibg = c.white5 },
		{ name = "Cursor", guifg = "bg", guibg = "fg" },
		{ name = "CursorIM", guifg = "NONE", guibg = "fg" },
		{ name = "CursorLine", guifg = "fg", guibg = c.white5 },
		{ name = "CursorLineNr", guifg = "fg", guibg = c.white5 },
		{ name = "DiffAdd", guifg = c.dark_green, guibg = c.light_green },
		{ name = "DiffChange", guifg = c.dark_yellow, guibg = c.light_yellow },
		{ name = "DiffDelete", guifg = c.dark_red, guibg = c.light_red, gui = "NONE" },
		{ name = "DiffText", guifg = c.dark_blue, guibg = c.light_blue },
		{ name = "Directory", guifg = "fg", guibg = "NONE" },
		{ name = "Error", link = "DiffDelete" },
		{ name = "ErrorMessage", link = "DiffDelete" },
		{ name = "ErrorMsg", link = "DiffDelete" },
		{ name = "Identifier", guifg = "fg", guibg = "NONE" },
		{ name = "Ignore", guifg = "fg", guibg = "NONE" },
		{ name = "IncSearch", guifg = c.accent5, guibg = c.accent2 },
		{ name = "InfoMsg", guifg = c.accent2, guibg = c.accent5 },
		{ name = "MatchParen", guifg = "NONE", guibg = c.white2 },
		{ name = "TabLineSel", guifg = "fg", guibg = c.white2 },
		{ name = "TabLine", link = "Pmenu" },
		{ name = "TabLineFill", link = "StatusLineNC" },
		{ name = "ModeMsg", guifg = "fg", guibg = "NONE" },
		{ name = "MoreMsg", guifg = "fg", guibg = "NONE" },
		{ name = "NonText", guifg = "fg", guibg = "NONE" },
		{ name = "Pmenu", guifg = "NONE", guibg = c.white3 },
		{ name = "PmenuThumb", guifg = "NONE", guibg = "fg" },
		{ name = "PreProc", guifg = "fg", guibg = "NONE" },
		{ name = "Question", guifg = "fg", guibg = "NONE" },
		{ name = "Search", guifg = c.accent2, guibg = c.accent5 },
		{ name = "CurSearch", guifg = c.accent5, guibg = c.accent3 },
		{ name = "Visual", guifg = c.accent1, guibg = c.accent4 },
		{ name = "Special", guifg = "fg", guibg = "NONE" },
		{ name = "SpecialKey", guifg = "fg", guibg = "NONE" },
		{ name = "SpellBad", link = "DiffDelete" },
		{ name = "SpellCap", guifg = "NONE", guibg = "NONE", guisp = c.light_red, gui = "undercurl" },
		{ name = "SpellLocal", guifg = "fg", guibg = "NONE" },
		{ name = "SpellRare", guifg = "fg", guibg = "NONE" },
		{ name = "Statement", guifg = "fg", guibg = "NONE", gui = "italic" },
		{ name = "StatusLine", guifg = c.white2, guibg = c.black1, gui = "reverse" },
		{ name = "StatusLineNC", guifg = c.white3, guibg = c.black2 },
		{ name = "Terminal", guifg = "fg", guibg = "bg" },
		{ name = "Todo", link = "WarningMsg" },
		{ name = "ToolbarButton", guifg = "fg", guibg = "NONE" },
		{ name = "ToolbarLine", guifg = "NONE", guibg = "NONE" },
		{ name = "Type", guifg = "NONE", guibg = "NONE", gui = "italic" },
		{ name = "Underlined", guifg = "fg", guibg = "NONE", gui = "underline" },
		{ name = "VertSplit", guifg = c.white1, guibg = "NONE" },
		{ name = "VisualNOS", guifg = "NONE", guibg = c.white5 },
		{ name = "WarningMsg", link = "DiffChange" },
		{ name = "Whitespace", guifg = c.black4, guibg = "NONE" },
		{ name = "Tooltip", guifg = "fg", guibg = c.white3 },
		{ name = "Menu", guifg = "fg", guibg = c.white3 },
		{ name = "Scrollbar", guifg = "NONE", guibg = c.white3 },
		{ name = "Title", guifg = "fg", guibg = "NONE" },
		{ name = "NormalNC", link = "Normal" },
		{ name = "WinBar", link = "TabLineSel" },
		{ name = "WinBarNC", link = "TabLine" },
		{ name = "MsgSeparator", link = "VertSplit" },
		{ name = "EndOfBuffer", link = "NonText" },
		{ name = "QuickFixLine", link = "Search" },
		{ name = "PmenuSel", link = "WildMenu" },
		{ name = "StatusLineTerm", link = "StatusLine" },
		{ name = "StatusLineTermNC", link = "StatusLineNC" },
		{ name = "lCursor", link = "Cursor" },
		{ name = "PmenuSbar", link = "Pmenu" },
		{ name = "WildMenu", link = "Visual" },
		{ name = "Boolean", link = "Constant" },
		{ name = "Character", link = "Constant" },
		{ name = "Conditional", link = "Statement" },
		{ name = "Define", link = "PreProc" },
		{ name = "Debug", link = "Special" },
		{ name = "Delimiter", link = "Special" },
		{ name = "Float", link = "Number" },
		{ name = "Function", link = "Identifier" },
		{ name = "Include", link = "PreProc" },
		{ name = "Macro", link = "PreProc" },
		{ name = "Number", link = "Constant" },
		{ name = "PreCondit", link = "PreProc" },
		{ name = "SpecialChar", link = "Special" },
		{ name = "SpecialComment", link = "Special" },
		{ name = "StorageClass", link = "Type" },
		{ name = "String", link = "Constant" },
		{ name = "Structure", link = "Type" },
		{ name = "Tag", link = "Special" },
		{ name = "Typedef", link = "Type" },
		{ name = "Substitute", link = "IncSearch" },
		{ name = "Operator", guifg = "fg", guibg = "NONE" },
		{ name = "Repeat", guifg = "fg", guibg = "NONE" },
		{ name = "Constant", guifg = c.black1, guibg = "NONE" },
		{ name = "jsParensError", guifg = "fg", guibg = "NONE" },
		{ name = "Exception", guifg = "fg", guibg = "NONE" },
		{ name = "Keyword", guifg = "fg", guibg = "NONE" },
		{ name = "Label", guifg = "fg", guibg = "NONE" },
	},

	{
		"Floating Windows",
		{ name = "NormalFloat", guifg = "fg", guibg = c.white3 },
		{ name = "FloatTitle", guifg = "fg", guibg = c.white3, gui = "bold" },
		{ name = "FloatBorder", guifg = "fg", guibg = c.white3 },
	},

	{
		"Diagnostic",
		{ name = "DiagnosticError", link = "Error" },
		{ name = "DiagnosticHint", guifg = c.black2, guibg = "NONE" },
		{ name = "DiagnosticInfo", link = "DiffText" },
		{ name = "DiagnosticWarn", link = "WarningMsg" },
		{ name = "DiagnosticFloatingError", guifg = "NONE", guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticFloatingHint", guifg = "NONE", guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticFloatingInfo", guifg = "NONE", guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticFloatingWarn", guifg = "NONE", guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticUnderlineError", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = c.dark_red },
		{ name = "DiagnosticUnderlineHint", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = c.black2 },
		{ name = "DiagnosticUnderlineInfo", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = c.dark_blue },
		{ name = "DiagnosticUnderlineWarn", guifg = "NONE", guibg = "NONE", gui = "undercurl", guisp = c.dark_yellow },
		{ name = "DiagnosticSignError", guifg = c.dark_red, guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticSignHint", guifg = c.black2, guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticSignInfo", guifg = c.dark_blue, guibg = "NONE", gui = "NONE" },
		{ name = "DiagnosticSignWarn", guifg = c.dark_yellow, guibg = "NONE", gui = "NONE" },
	},

	{ "LSP", { name = "LspSignatureActiveParameter", link = "Search" } },

	{
		"Vim Script",
		{ name = "vimGroup", link = "Normal" },
		{ name = "vimHiGui", link = "Normal" },
		{ name = "vimHiKeyList", link = "Normal" },
		{ name = "vimHiGroup", link = "Normal" },
		{ name = "vimHiCTerm", link = "Normal" },
		{ name = "vimHiCTermFgBg", link = "Normal" },
		{ name = "vimHiGuiFgBg", link = "Normal" },
	},

	{
		"Typescript",
		{ name = "typescriptParens", guifg = "fg", guibg = "NONE" },
	},

	{
		"Markdown",
		{ name = "mkHeading", guifg = "NONE", guibg = "NONE", gui = "underline" },
		{ name = "mkItalic", guifg = "NONE", guibg = "NONE", gui = "italic" },
		{ name = "markdownBold", guifg = "NONE", guibg = "NONE", gui = "bold" },
		{ name = "markdownUrl", guifg = "NONE", guibg = "NONE", gui = "underline" },
		{ name = "markdownUrl", guifg = "NONE", guibg = "NONE", gui = "underline" },
		{ name = "markdownHeadingDelimiter", guifg = "NONE", guibg = "NONE", gui = "underline" },
		{ name = "mkCode", guifg = "fg", guibg = "NONE" },
		{ name = "mkdCodeDelimiter", link = "mkCode" },
		{ name = "markdownItalic", link = "mkItalic" },
		{ name = "markdownLinkText", guifg = "fg", guibg = "NONE" },
		{ name = "markdownH1", link = "mkdHeading" },
		{ name = "markdownH1Delimiter", link = "markdownHeadingDelimiter" },
		{ name = "markdownH2", link = "mkdHeading" },
		{ name = "markdownH3", link = "mkdHeading" },
		{ name = "markdownH4", link = "mkdHeading" },
		{ name = "markdownCodeDelimiter", guifg = "NONE", guibg = "NONE" },
		{ name = "markdownBoldDelimiter", guifg = "NONE", guibg = "NONE" },
		{ name = "markdownItalicDelimiter", guifg = "NONE", guibg = "NONE" },
		{ name = "markdownBoldItalicDelimiter", guifg = "NONE", guibg = "NONE" },
		{ name = "markdownLinkDelimiter", guifg = "NONE", guibg = "NONE" },
		{ name = "markdownLinkTextDelimiter", guifg = "NONE", guibg = "NONE" },
	},

	{
		"Help Text",
		{ name = "helpBacktick", link = "Constant" },
		{ name = "helpCommand", link = "Constant" },
		{ name = "helpDeprecated", link = "Error" },
		{ name = "helpExample", guifg = c.black1, guibg = c.white3, gui = "NONE" },
		{ name = "helpHeader", guifg = "NONE", guibg = "NONE", gui = "bold" },
		{ name = "helpHeadline", guifg = c.black1, guibg = "NONE", gui = { "bold" } },
		{ name = "helpHyperTextEntry", guifg = "NONE", guibg = "NONE", gui = "underline" },
		{ name = "helpHyperTextJump", guifg = "NONE", guibg = "NONE", gui = "underline" },
		{ name = "helpNote", guifg = "NONE", guibg = "NONE", gui = "bold" },
		{ name = "helpOption", guifg = "NONE", guibg = "NONE", gui = "bold" },
		{ name = "helpSectionDelim", guifg = c.black4, guibg = "NONE", gui = "NONE" },
		{ name = "helpSpecial", guifg = "NONE", guibg = "NONE", gui = "bold" },
		{ name = "helpURL", guifg = "NONE", guibg = "NONE", gui = "underline" },
	},

	{
		"Help Text TS",
		{ name = "@text.literal", link = "helpExample" },
		{ name = "@text.reference", link = "helpOption" },
	},

	{
		"XML",
		{ name = "xmlProcessingDelim", link = "Normal" },
		{ name = "xmlTagName", guifg = "NONE", guibg = "NONE", gui = "NONE" },
	},

	{
		"fugitive",
		{ name = "fugitiveStagedSection", guifg = "fg", guibg = "NONE", gui = { "underline", "bold" } },
		{ name = "fugitiveUnstagedSection", guifg = "fg", guibg = "NONE", gui = { "underline", "bold" } },
		{ name = "diffAdded", link = "DiffAdd" },
		{ name = "diffLine", guifg = "fg", guibg = "NONE", gui = "bold" },
		{ name = "gitHashAbbrev", guifg = "fg", guibg = "NONE", gui = "underline" },
		{ name = "diffChanged", link = "DiffChange" },
		{ name = "diffRemoved", link = "DiffDelete" },
		{ name = "diffComment", link = "Comment" },
		{ name = "diffSubname", guifg = "fg", guibg = "NONE", gui = "bold" },
	},

	{
		"Git Signs",
		{ name = "GitSignsAdd", link = "DiffAdd" },
		{ name = "GitSignsAddNr", link = "DiffAdd" },
		{ name = "GitSignsAddLn", link = "DiffAdd" },
		{ name = "GitSignsChange", link = "DiffChange" },
		{ name = "GitSignsChangeNr", link = "DiffChange" },
		{ name = "GitSignsChangeLn", link = "DiffChange" },
		{ name = "GitSignsDelete", link = "DiffDelete" },
		{ name = "GitSignsDeleteNr", link = "DiffDelete" },
		{ name = "GitSignsDeleteLn", link = "DiffDelete" },
	},

	{ "Indent Blank Line", { name = "IndentBlanklineChar", link = "VertSplit" } },
	{
		"Sneak",
		{ name = "Sneak", link = "Visual" },
		{ name = "SneakScope", link = "IncSearch" },
		{ name = "SneakLabel", link = "Search" },
	},

	{
		"Dirvish",
		{ name = "DirvishPathTail", guifg = "NONE", guibg = "NONE", gui = "bold" },
		{ name = "DirvishArg", link = "Search" },
	},

	{
		"HL Search Lens",
		{ name = "HlSearchLensNear", link = "StatusLine" },
		{ name = "HlSearchLens", link = "StatusLineNC" },
		{ name = "HlSearchNear", link = "Search" },
	},

	{
		"Conflict Marker",
		{ name = "ConflictMarkerBegin", link = "DiffAdd" },
		{ name = "ConflictMarkerOurs", link = "DiffAdd" },
		{ name = "ConflictMarkerTheirs", link = "DiffText" },
		{ name = "ConflictMarkerEnd", link = "DiffText" },
	},

	{
		"Treesitter Context",
		{ name = "TreesitterContextBottom", gui = "underline" },
		{ name = "TreesitterContext", link = "Pmenu" },
	},

	{
		"Which Key",
		{ name = "WhichKeySeperator", guifg = "fg", guibg = "NONE" },
		{ name = "WhichKeyFloating", link = "Pmenu" },
	},

	{
		"Leap",
		{ name = "LeapMatch", guifg = c.dark_blue, guibg = c.light_blue, gui = "none" },
		{ name = "LeapLabelPrimary", guifg = "#ffffff", guibg = c.alternative_accent, gui = "bold" },
		{ name = "LeapLabelSecondary", guifg = c.light_yellow, guibg = c.dark_yellow, gui = "none" },
		{ name = "LeapLabelSelected", guifg = c.dark_red, guibg = c.light_red, gui = "none" },
	},

	{
		"Telescope",
		{ name = "TelescopeMatching", guifg = c.accent5, guibg = c.accent3, gui = "NONE" },
		{ name = "TelescopeSelection", guifg = c.accent2, guibg = c.accent5, gui = "NONE" },
	}
}

local lightline = {
	normal = {
		left = { { c.light_green, c.dark_green }, { c.white3, c.black4 } },
		right = { { c.white3, c.black2 }, { c.white3, c.black4 }, { c.white3, c.black4 } },
		middle = { { c.black2, c.white2 } },
		error = { { c.dark_red, c.light_red } },
		warning = { { c.light_yellow, c.dark_yellow } },
	},
	insert = {
		left = { { c.light_blue, c.dark_blue }, { c.white3, c.black4 } },
	},
	visual = {
		left = { { c.accent5, c.accent2 }, { c.white3, c.black4 } },
	},
	replace = {
		left = { { c.white5, c.alternative_accent }, { c.white3, c.black4 } },
	},
	inactive = {
		right = { { c.black4, c.white1 }, { c.black3, c.white1 }, { c.black4, c.white1 } },
		middle = { { c.black4, c.white2 } },
	},
	tabline = {
		middle = { { c.black2, c.white4 } },
	},
}
lightline.inactive.left = { table.unpack(lightline.inactive.right, 2) }
lightline.tabline.left = lightline.inactive.middle
lightline.tabline.tabsel = { table.unpack(lightline.normal.left, 2) }

M.option_groups = {
	{
		name = "yui_folds",
		description = [[
How folds should be displayed]],
		default = "'fade'",
		cases = {
			["'emphasize'"] = {
				description = [[
Make folds more visible]],
				groups = {
					{ name = "FoldColumn", guifg = c.black3, guibg = c.white2 },
					{ name = "Folded", guifg = c.black3, guibg = c.white2 },
				},
			},
			["'fade'"] = {
				description = [[
Fade out folds]],
				groups = {
					{ name = "FoldColumn", guifg = c.black4, guibg = "NONE" },
					{ name = "Folded", guifg = c.black4, guibg = "NONE" },
				},
			},
		},
	},
	{
		name = "yui_line_numbers",
		default = "'fade'",
		description = [[
How line numbers should be displayed]],
		cases = {
			["'emphasize'"] = {
				description = [[
Make line numbers more visible]],
				groups = {
					{ name = "SignColumn", guifg = c.black3, guibg = c.white2 },
					{ name = "LineNr", guifg = c.black3, guibg = c.white2 },
				},
			},
			["'fade'"] = {
				description = [[
Fade out line numbers]],
				groups = {
					{ name = "SignColumn", guifg = "fg", guibg = "bg" },
					{ name = "LineNr", guifg = c.black4, guibg = "NONE" },
				},
			},
		},
	},
	-- This has to come before yui_comments, so that yui_comments can override it.
	{
		name = "yui_emphasized_comments",
		default = "0",
		deprecated = [[
Use |yui_comments| instead]],
		description = [[
Whether to emphasize comments]],
		cases = {
			[1] = {
				description = [[
Emphasize comments]],
				groups = {
					{ name = "Comment", guifg = c.alternative_accent, guibg = "NONE", gui = "italic" },
				},
			},
			[0] = {
				description = [[
Do not emphasize comments]],
				groups = {
					{ name = "Comment", guifg = c.black3, guibg = "NONE", gui = "italic" },
				},
			},
		},
	},
	{
		name = "yui_comments",
		default = "'normal'",
		description = [[
How comments should be displayed]],
		cases = {
			["'emphasize'"] = {
				description = [[
Emphasize comments]],
				groups = {
					{ name = "Comment", guifg = c.alternative_accent, guibg = "NONE", gui = "italic" },
				},
			},
			["'fade'"] = {
				description = [[
Fade out comments]],
				groups = {
					{ name = "Comment", guifg = c.black3, guibg = "NONE", gui = "italic" },
				},
			},
			["'normal'"] = {
				description = [[
Do not emphasize comments]],
				groups = {
					{ name = "Comment", guifg = c.black3, guibg = "NONE", gui = "italic" },
				},
			},
			["'bg'"] = {
				description = [[
Make comments have a background color]],
				groups = {
					{ name = "Comment", guifg = "fg", guibg = c.white3, gui = "NONE" },
				},
			},
		},
	},
	{
		name = "yui_lightline",
		default = "v:false",
		example = [[
  let g:yui_lightline = v:true
  let g:lightline.colorscheme = 'yui']],
		description = [[
Whether to use the lightline theme]],
		cases = {
			["v:true"] = {
				description = [[
Use the lightline theme]],
				groups = { table.unpack(theme.make_lightline(lightline)) },
			},
		},
	},
}

M.term_colors = {
	c.black2,
	c.dark_red,
	c.dark_green,
	c.dark_yellow,
	"#00588f",
	c.accent2,
	c.dark_blue,
	c.white4,
	c.black2,
	c.dark_red,
	c.dark_green,
	c.dark_yellow,
	"#00588f",
	c.accent3,
	c.dark_blue,
	c.white4,
}

return M

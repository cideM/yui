local Theme = require("theme")
local colour = require("colour")
local Lightline = require("lightline")
local Cond = require("condition")
local And = require("and_or").And
local HLGroup = require("hlgroup")
local TerminalColors = require("terminal_colors")
local ThemeOption = require("option").ThemeOption

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

local c = {
	accent1 = colour.lightness(palette.accent, -65),
	accent2 = colour.lightness(palette.accent, -50),
	accent3 = colour.lightness(palette.accent, -35),
	accent4 = colour.lightness(palette.accent, -15),
	accent5 = colour.lightness(palette.accent, 0),
	black1 = colour.lightness(palette.black, -10),
	black2 = colour.lightness(palette.black, 0),
	black3 = colour.lightness(palette.black, 7),
	black4 = colour.lightness(palette.black, 14),
	dark_blue = colour.lightness(palette.blue, -40),
	dark_green = colour.lightness(palette.green, -40),
	dark_red = colour.lightness(palette.red, -30),
	dark_yellow = colour.lightness(palette.yellow, -20),
	light_blue = colour.lightness(palette.blue, 15),
	light_green = colour.lightness(palette.green, 15),
	light_red = colour.lightness(palette.red, 40),
	light_yellow = colour.lightness(palette.yellow, 38),
	alternative_accent = colour.lightness(palette.alternative_accent, 0),
	white1 = colour.lightness(palette.white, -12),
	white2 = colour.lightness(palette.white, -7),
	white3 = colour.lightness(palette.white, -2),
	white4 = colour.lightness(palette.white, 3),
	white5 = colour.lightness(palette.white, 6),
}

local theme = Theme {
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

	"let g:colors_name = 'yui'",

	[[" Terminal Colors ]],
	TerminalColors {
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
	},

	[[" UI & Syntax]],
	HLGroup { name = "Normal", guifg = c.black2, guibg = c.white4 },
	HLGroup { name = "NormalNC", link = "Normal" },
	HLGroup { name = "MsgArea", link = "Normal" },
	HLGroup { name = "ColorColumn", guifg = "fg", guibg = c.white3 },
	HLGroup { name = "Conceal", guifg = c.white1, guibg = "NONE" },
	HLGroup { name = "CursorColumn", guifg = "NONE", guibg = c.white5 },
	HLGroup { name = "Cursor", guifg = "bg", guibg = "fg" },
	HLGroup { name = "CursorIM", guifg = "NONE", guibg = "fg" },
	HLGroup { name = "CursorLine", guifg = "fg", guibg = c.white5, gui = "NONE" },
	HLGroup { name = "CursorLineNr", guifg = "fg", guibg = c.white5, gui = "NONE" },
	HLGroup { name = "DiffAdd", guifg = c.dark_green, guibg = c.light_green },
	HLGroup { name = "DiffChange", guifg = c.dark_yellow, guibg = c.light_yellow },
	HLGroup { name = "DiffDelete", guifg = c.dark_red, guibg = c.light_red, gui = "NONE" },
	HLGroup { name = "DiffText", guifg = c.dark_blue, guibg = c.light_blue },
	HLGroup { name = "Directory", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Error", link = "DiffDelete" },
	HLGroup { name = "ErrorMessage", link = "DiffDelete" },
	HLGroup { name = "ErrorMsg", link = "DiffDelete" },
	HLGroup { name = "Identifier", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Ignore", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "IncSearch", guifg = c.accent5, guibg = c.accent2 },
	HLGroup { name = "InfoMsg", guifg = c.accent2, guibg = c.accent5 },
	HLGroup { name = "MatchParen", guifg = "NONE", guibg = c.white2 },
	HLGroup { name = "TabLineSel", guifg = "fg", guibg = c.white2 },
	HLGroup { name = "TabLine", link = "Pmenu" },
	HLGroup { name = "TabLineFill", link = "StatusLineNC" },
	HLGroup { name = "ModeMsg", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "MoreMsg", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "NonText", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Pmenu", guifg = "NONE", guibg = c.white3 },
	HLGroup { name = "PmenuThumb", guifg = "NONE", guibg = "fg" },
	HLGroup { name = "PreProc", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Question", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Search", guifg = c.accent2, guibg = c.accent5 },
	HLGroup { name = "CurSearch", guifg = c.accent5, guibg = c.accent3 },
	HLGroup { name = "Visual", guifg = c.accent1, guibg = c.accent4 },
	HLGroup { name = "Special", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "SpecialKey", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "SpellBad", link = "DiffDelete" },
	HLGroup {
		name = "SpellCap",
		guifg = "NONE",
		guibg = "NONE",
		guisp = c.light_red,
		gui = "undercurl",
	},
	HLGroup { name = "SpellLocal", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "SpellRare", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Statement", guifg = "fg", guibg = "NONE", gui = "italic" },
	HLGroup { name = "StatusLine", guifg = c.white2, guibg = c.black1, gui = "reverse" },
	HLGroup { name = "StatusLineNC", guifg = c.white3, guibg = c.black2 },
	HLGroup { name = "Terminal", guifg = "fg", guibg = "bg" },
	HLGroup { name = "Todo", link = "WarningMsg" },
	HLGroup { name = "ToolbarButton", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "ToolbarLine", guifg = "NONE", guibg = "NONE" },
	HLGroup { name = "Type", guifg = "NONE", guibg = "NONE", gui = "italic" },
	HLGroup { name = "Underlined", guifg = "fg", guibg = "NONE", gui = "underline" },
	HLGroup { name = "VertSplit", guifg = c.white1, guibg = "NONE", gui = "NONE" },
	HLGroup { name = "VisualNOS", guifg = "NONE", guibg = c.white5 },
	HLGroup { name = "WarningMsg", link = "DiffChange" },
	HLGroup { name = "Whitespace", guifg = c.black4, guibg = "NONE" },
	HLGroup { name = "Tooltip", guifg = "fg", guibg = c.white3 },
	HLGroup { name = "Menu", guifg = "fg", guibg = c.white3 },
	HLGroup { name = "Scrollbar", guifg = "NONE", guibg = c.white3 },
	HLGroup { name = "Title", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "NormalNC", link = "Normal" },
	HLGroup { name = "WinBar", link = "TabLineSel" },
	HLGroup { name = "WinBarNC", link = "TabLine" },
	HLGroup { name = "MsgSeparator", link = "VertSplit" },
	HLGroup { name = "EndOfBuffer", link = "NonText" },
	HLGroup { name = "QuickFixLine", link = "Search" },
	HLGroup { name = "PmenuSel", link = "WildMenu" },
	HLGroup { name = "StatusLineTerm", link = "StatusLine" },
	HLGroup { name = "StatusLineTermNC", link = "StatusLineNC" },
	HLGroup { name = "lCursor", link = "Cursor" },
	HLGroup { name = "PmenuSbar", link = "Pmenu" },
	HLGroup { name = "WildMenu", link = "Visual" },
	HLGroup { name = "Boolean", link = "Constant" },
	HLGroup { name = "Character", link = "Constant" },
	HLGroup { name = "Conditional", link = "Statement" },
	HLGroup { name = "Define", link = "PreProc" },
	HLGroup { name = "Debug", link = "Special" },
	HLGroup { name = "Delimiter", link = "Special" },
	HLGroup { name = "Float", link = "Number" },
	HLGroup { name = "Function", link = "Identifier" },
	HLGroup { name = "Include", link = "PreProc" },
	HLGroup { name = "Macro", link = "PreProc" },
	HLGroup { name = "Number", link = "Constant" },
	HLGroup { name = "PreCondit", link = "PreProc" },
	HLGroup { name = "SpecialChar", link = "Special" },
	HLGroup { name = "SpecialComment", link = "Special" },
	HLGroup { name = "StorageClass", link = "Type" },
	HLGroup { name = "String", link = "Constant" },
	HLGroup { name = "Structure", link = "Type" },
	HLGroup { name = "Tag", link = "Special" },
	HLGroup { name = "Typedef", link = "Type" },
	HLGroup { name = "Substitute", link = "IncSearch" },
	HLGroup { name = "Operator", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Repeat", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Constant", guifg = c.black1, guibg = "NONE" },
	HLGroup { name = "jsParensError", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Exception", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Keyword", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "Label", guifg = "fg", guibg = "NONE" },
	"",

	[[" Floating Windows]],
	HLGroup { name = "NormalFloat", guifg = "fg", guibg = c.white3 },
	HLGroup { name = "FloatTitle", guifg = "fg", guibg = c.white3, gui = "bold" },
	HLGroup { name = "FloatBorder", guifg = "fg", guibg = c.white3 },
	"",

	[[" Diagnostic]],
	HLGroup { name = "DiagnosticError", link = "Error" },
	HLGroup { name = "DiagnosticHint", guifg = c.black2, guibg = "NONE" },
	HLGroup { name = "DiagnosticInfo", link = "DiffText" },
	HLGroup { name = "DiagnosticWarn", link = "WarningMsg" },
	HLGroup {
		name = "DiagnosticFloatingError",
		guifg = "NONE",
		guibg = "NONE",
		gui = "NONE",
	},
	HLGroup { name = "DiagnosticFloatingHint", guifg = "NONE", guibg = "NONE", gui = "NONE" },
	HLGroup { name = "DiagnosticFloatingInfo", guifg = "NONE", guibg = "NONE", gui = "NONE" },
	HLGroup { name = "DiagnosticFloatingWarn", guifg = "NONE", guibg = "NONE", gui = "NONE" },
	HLGroup {
		name = "DiagnosticUnderlineError",
		guifg = "NONE",
		guibg = "NONE",
		gui = "undercurl",
		guisp = c.dark_red,
	},
	HLGroup {
		name = "DiagnosticUnderlineHint",
		guifg = "NONE",
		guibg = "NONE",
		gui = "undercurl",
		guisp = c.black2,
	},
	HLGroup {
		name = "DiagnosticUnderlineInfo",
		guifg = "NONE",
		guibg = "NONE",
		gui = "undercurl",
		guisp = c.dark_blue,
	},
	HLGroup {
		name = "DiagnosticUnderlineWarn",
		guifg = "NONE",
		guibg = "NONE",
		gui = "undercurl",
		guisp = c.dark_yellow,
	},
	HLGroup {
		name = "DiagnosticSignError",
		guifg = c.dark_red,
		guibg = "NONE",
		gui = "NONE",
	},
	HLGroup { name = "DiagnosticSignHint", guifg = c.black2, guibg = "NONE", gui = "NONE" },
	HLGroup {
		name = "DiagnosticSignInfo",
		guifg = c.dark_blue,
		guibg = "NONE",
		gui = "NONE",
	},
	HLGroup {
		name = "DiagnosticSignWarn",
		guifg = c.dark_yellow,
		guibg = "NONE",
		gui = "NONE",
	},
	"",

	[[" LSP]],
	HLGroup { name = "LspSignatureActiveParameter", link = "Search" },
	"",

	[[" Vim Script]],
	HLGroup { name = "vimGroup", link = "Normal" },
	HLGroup { name = "vimHiGui", link = "Normal" },
	HLGroup { name = "vimHiKeyList", link = "Normal" },
	HLGroup { name = "vimHiGroup", link = "Normal" },
	HLGroup { name = "vimHiCTerm", link = "Normal" },
	HLGroup { name = "vimHiCTermFgBg", link = "Normal" },
	HLGroup { name = "vimHiGuiFgBg", link = "Normal" },
	"",

	[[" Typescript]],
	HLGroup { name = "typescriptParens", guifg = "fg", guibg = "NONE" },
	"",

	[[" Markdown]],
	HLGroup { name = "mkHeading", guifg = "NONE", guibg = "NONE", gui = "underline" },
	HLGroup { name = "mkItalic", guifg = "NONE", guibg = "NONE", gui = "italic" },
	HLGroup { name = "markdownBold", guifg = "NONE", guibg = "NONE", gui = "bold" },
	HLGroup { name = "markdownUrl", guifg = "NONE", guibg = "NONE", gui = "underline" },
	HLGroup { name = "markdownUrl", guifg = "NONE", guibg = "NONE", gui = "underline" },
	HLGroup {
		name = "markdownHeadingDelimiter",
		guifg = "NONE",
		guibg = "NONE",
		gui = "underline",
	},
	HLGroup { name = "mkCode", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "mkdCodeDelimiter", link = "mkCode" },
	HLGroup { name = "markdownItalic", link = "mkItalic" },
	HLGroup { name = "markdownLinkText", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "markdownH1", link = "mkdHeading" },
	HLGroup { name = "markdownH1Delimiter", link = "markdownHeadingDelimiter" },
	HLGroup { name = "markdownH2", link = "mkdHeading" },
	HLGroup { name = "markdownH3", link = "mkdHeading" },
	HLGroup { name = "markdownH4", link = "mkdHeading" },
	HLGroup { name = "markdownCodeDelimiter", guifg = "NONE", guibg = "NONE" },
	HLGroup { name = "markdownBoldDelimiter", guifg = "NONE", guibg = "NONE" },
	HLGroup { name = "markdownItalicDelimiter", guifg = "NONE", guibg = "NONE" },
	HLGroup { name = "markdownBoldItalicDelimiter", guifg = "NONE", guibg = "NONE" },
	HLGroup { name = "markdownLinkDelimiter", guifg = "NONE", guibg = "NONE" },
	HLGroup { name = "markdownLinkTextDelimiter", guifg = "NONE", guibg = "NONE" },
	"",

	[["  Help Text]],
	HLGroup { name = "helpBacktick", link = "Constant" },
	HLGroup { name = "helpCommand", link = "Constant" },
	HLGroup { name = "helpDeprecated", link = "Error" },
	HLGroup { name = "helpExample", guifg = c.black1, guibg = c.white3, gui = "NONE" },
	HLGroup { name = "helpHeader", guifg = "NONE", guibg = "NONE", gui = "bold" },
	HLGroup { name = "helpHeadline", guifg = c.black1, guibg = "NONE", gui = { "bold" } },
	HLGroup {
		name = "helpHyperTextEntry",
		guifg = "NONE",
		guibg = "NONE",
		gui = "underline",
	},
	HLGroup { name = "helpHyperTextJump", guifg = "NONE", guibg = "NONE", gui = "underline" },
	HLGroup { name = "helpNote", guifg = "NONE", guibg = "NONE", gui = "bold" },
	HLGroup { name = "helpOption", guifg = "NONE", guibg = "NONE", gui = "bold" },
	HLGroup { name = "helpSectionDelim", guifg = c.black4, guibg = "NONE", gui = "NONE" },
	HLGroup { name = "helpSpecial", guifg = "NONE", guibg = "NONE", gui = "bold" },
	HLGroup { name = "helpURL", guifg = "NONE", guibg = "NONE", gui = "underline" },
	"",

	Cond {
		"has('nvim')",
		string.format(
			[[" Help Text TS
%s
%s]],
			HLGroup { name = "@text.literal", link = "helpExample" },
			HLGroup { name = "@text.reference", link = "helpOption" }
		),
	},
	"",

	[[" XML]],
	HLGroup { name = "xmlProcessingDelim", link = "Normal" },
	HLGroup { name = "xmlTagName", guifg = "NONE", guibg = "NONE", gui = "NONE" },
	"",

	[[" fugitive]],
	HLGroup {
		name = "fugitiveStagedSection",
		guifg = "fg",
		guibg = "NONE",
		gui = { "underline", "bold" },
	},
	HLGroup {
		name = "fugitiveUnstagedSection",
		guifg = "fg",
		guibg = "NONE",
		gui = { "underline", "bold" },
	},
	HLGroup { name = "diffAdded", link = "DiffAdd" },
	HLGroup { name = "diffLine", guifg = "fg", guibg = "NONE", gui = "bold" },
	HLGroup { name = "gitHashAbbrev", guifg = "fg", guibg = "NONE", gui = "underline" },
	HLGroup { name = "diffChanged", link = "DiffChange" },
	HLGroup { name = "diffRemoved", link = "DiffDelete" },
	HLGroup { name = "diffComment", link = "Comment" },
	HLGroup { name = "diffSubname", guifg = "fg", guibg = "NONE", gui = "bold" },
	"",

	[[" Git Signs]],
	HLGroup { name = "GitSignsAdd", link = "DiffAdd" },
	HLGroup { name = "GitSignsAddNr", link = "DiffAdd" },
	HLGroup { name = "GitSignsAddLn", link = "DiffAdd" },
	HLGroup { name = "GitSignsChange", link = "DiffChange" },
	HLGroup { name = "GitSignsChangeNr", link = "DiffChange" },
	HLGroup { name = "GitSignsChangeLn", link = "DiffChange" },
	HLGroup { name = "GitSignsDelete", link = "DiffDelete" },
	HLGroup { name = "GitSignsDeleteNr", link = "DiffDelete" },
	HLGroup { name = "GitSignsDeleteLn", link = "DiffDelete" },
	"",

	[[" Indent Blank Line]],
	HLGroup { name = "IndentBlanklineChar", link = "VertSplit" },
	"",

	[[" Sneak]],
	HLGroup { name = "Sneak", link = "Visual" },
	HLGroup { name = "SneakScope", link = "IncSearch" },
	HLGroup { name = "SneakLabel", link = "Search" },
	"",

	[[" Dirvish]],
	HLGroup { name = "DirvishPathTail", guifg = "NONE", guibg = "NONE", gui = "bold" },
	HLGroup { name = "DirvishArg", link = "Search" },
	"",

	[[" HL Search Lens]],
	HLGroup { name = "HlSearchLensNear", link = "StatusLine" },
	HLGroup { name = "HlSearchLens", link = "StatusLineNC" },
	HLGroup { name = "HlSearchNear", link = "Search" },
	"",

	[[" Conflict Marker]],
	HLGroup { name = "ConflictMarkerBegin", link = "DiffAdd" },
	HLGroup { name = "ConflictMarkerOurs", link = "DiffAdd" },
	HLGroup { name = "ConflictMarkerTheirs", link = "DiffText" },
	HLGroup { name = "ConflictMarkerEnd", link = "DiffText" },
	"",

	[[" Treesitter Context]],
	HLGroup { name = "TreesitterContextBottom", gui = "underline" },
	HLGroup { name = "TreesitterContext", link = "Pmenu" },
	"",

	[[" Which Key]],
	HLGroup { name = "WhichKeySeperator", guifg = "fg", guibg = "NONE" },
	HLGroup { name = "WhichKeyFloating", link = "Pmenu" },
	"",

	[[" Leap]],
	HLGroup { name = "LeapMatch", guifg = c.dark_blue, guibg = c.light_blue, gui = "NONE" },
	HLGroup {
		name = "LeapLabelPrimary",
		guifg = "#ffffff",
		guibg = c.alternative_accent,
		gui = "bold",
	},
	HLGroup {
		name = "LeapLabelSecondary",
		guifg = c.light_yellow,
		guibg = c.dark_yellow,
		gui = "NONE",
	},
	HLGroup {
		name = "LeapLabelSelected",
		guifg = c.dark_red,
		guibg = c.light_red,
		gui = "NONE",
	},
	"",

	[[" Telescope]],
	HLGroup {
		name = "TelescopeMatching",
		guifg = c.accent5,
		guibg = c.accent3,
		gui = "NONE",
	},
	HLGroup {
		name = "TelescopeSelection",
		guifg = c.accent2,
		guibg = c.accent5,
		gui = "NONE",
	},
	"",
	ThemeOption {
		name = "yui_folds",
		description = "How folds should be displayed",
		default = "'fade'",
		cases = {
			["'emphasize'"] = {
				description = "Make folds more visible",
				groups = {
					HLGroup { name = "FoldColumn", guifg = c.black3, guibg = c.white2 },
					HLGroup { name = "Folded", guifg = c.black3, guibg = c.white2 },
				},
			},
			["'fade'"] = {
				description = "Fade out folds",
				groups = {
					HLGroup { name = "FoldColumn", guifg = c.black4, guibg = "NONE" },
					HLGroup { name = "Folded", guifg = c.black4, guibg = "NONE" },
				},
			},
		},
	},
	ThemeOption {
		name = "yui_line_numbers",
		default = "'fade'",
		description = "How line numbers should be displayed",
		cases = {
			["'emphasize'"] = {
				description = "Make line numbers more visible",
				groups = {
					HLGroup { name = "SignColumn", guifg = c.black3, guibg = c.white2 },
					HLGroup { name = "LineNr", guifg = c.black3, guibg = c.white2 },
				},
			},
			["'fade'"] = {
				description = "Fade out line numbers",
				groups = {
					HLGroup { name = "SignColumn", guifg = "fg", guibg = "bg" },
					HLGroup { name = "LineNr", guifg = c.black4, guibg = "NONE" },
				},
			},
		},
	},
	-- This has to come before yui_comments, so that yui_comments can override it.
	ThemeOption {
		name = "yui_emphasized_comments",
		default = 0,
		deprecated = "Use |yui_comments| instead",
		description = "Whether to emphasize comments",
		cases = {
			[1] = {
				description = "Emphasize comments",
				groups = {
					HLGroup {
						name = "Comment",
						guifg = c.alternative_accent,
						guibg = "NONE",
						gui = "italic",
					},
				},
			},
			[0] = {
				description = "Do not emphasize comments",
				groups = {
					HLGroup { name = "Comment", guifg = c.black3, guibg = "NONE", gui = "italic" },
				},
			},
		},
	},
	ThemeOption {
		name = "yui_comments",
		default = "'normal'",
		description = "How comments should be displayed",
		cases = {
			["'emphasize'"] = {
				description = "Emphasize comments",
				groups = {
					HLGroup {
						name = "Comment",
						guifg = c.alternative_accent,
						guibg = "NONE",
						gui = "italic",
					},
				},
			},
			["'fade'"] = {
				description = "Fade out comments",
				groups = {
					HLGroup { name = "Comment", guifg = c.black3, guibg = "NONE", gui = "italic" },
				},
			},
			["'normal'"] = {
				description = "Do not emphasize comments",
				groups = {
					HLGroup { name = "Comment", guifg = c.black3, guibg = "NONE", gui = "italic" },
				},
			},
			["'bg'"] = {
				description = "Make comments have a background color",
				groups = {
					HLGroup { name = "Comment", guifg = "fg", guibg = c.white3, gui = "NONE" },
				},
			},
		},
	},
	ThemeOption {
		name = "yui_lightline",
		default = "v:false",
    deprecated = [[
The lightline initialization is now done through
an autoloaded function. You therefore no longer
need to tell the yui theme whether or not you're
using lightline]],
		example = [[
  let g:yui_lightline = v:true
  let g:lightline.colorscheme = 'yui']],
		description = "Whether to use the lightline theme",
		cases = {},
	},
}

local lightline = Lightline {
	fg = c.black1,
	bg = c.white2,
	normal = {
		bg = c.light_green,
		fg = c.dark_green,
	},
	insert = {
		bg = c.light_blue,
		fg = c.dark_blue,
	},
	visual = {
		bg = c.accent5,
		fg = c.accent2,
	},
	replace = {
		bg = c.white5,
		fg = c.alternative_accent,
	},
	error = {
		bg = c.light_red,
		fg = c.dark_red,
	},
	warning = {
		bg = c.light_yellow,
		fg = c.dark_yellow,
	},
}

return {
	theme = theme,
	lightline = lightline,
}

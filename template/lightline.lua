local colour = require("colour")
local lighten = colour.lightness

local Lightline = {}

setmetatable(Lightline, {
	__call = function(_, ...)
		return Lightline:new(...)
	end,
	__tostring = function(__self)
		return __self:to_vim()
	end,
	__index = function(_, k)
		return rawget(Lightline, k)
	end,
})

function Lightline:new(config)
	local bg = config.bg
	local fg = config.fg

	local bg_shades = {}
	local fg_shades = {}

	for i, factor in ipairs { 5, 0, -5 } do
		bg_shades[i] = lighten(bg, factor)
		fg_shades[i] = lighten(fg, factor)
	end

	-- higher index = darker, meaning lightline components towards the side of the
	-- statusline should use higher indexes
	local bg_shades_inactive = {
		bg_shades[1],
		bg_shades[1],
		bg_shades[1],
	}

	local fg_shades_inactive = {
		lighten(fg_shades[1], 15),
		lighten(fg_shades[1], 15),
		lighten(fg_shades[1], 15),
	}

	local t = {
		bg_shades = bg_shades,
		fg_shades = fg_shades,
		bg_shades_inactive = bg_shades_inactive,
		fg_shades_inactive = fg_shades_inactive,
		insert = {
			fg = config.insert.fg,
			bg = config.insert.bg,
		},
		normal = {
			fg = config.normal.fg,
			bg = config.normal.bg,
		},
		visual = {
			fg = config.visual.fg,
			bg = config.visual.bg,
		},
		replace = {
			fg = config.replace.fg,
			bg = config.replace.bg,
		},
		error = {
			fg = config.error.fg,
			bg = config.error.bg,
		},
		warning = {
			fg = config.warning.fg,
			bg = config.warning.bg,
		},
	}

	setmetatable(t, getmetatable(self))
	return t
end

function Lightline:to_vim()
	local out = {
		"let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}",
	}

	local config = self:config()

	-- We want to iterate over keys in a table in a predictable and stable order
	-- to avoid Git diffs due to random key order when iterating over a table.
	local config_keys = {}
	for k in pairs(config) do
		table.insert(config_keys, k)
	end

	table.sort(config_keys, function(a, b)
		return a > b
	end)

	for _, mode in ipairs(config_keys) do
		local part = config[mode]

		local names = {}
		for name in pairs(part) do
			table.insert(names, name)
		end

		-- Sort the names so that the lightline colors are defined in a predictable order
		-- to avoid Git diffs due to random key order when iterating over a table.
		table.sort(names, function(a, b)
			return a > b
		end)

		for _, name in ipairs(names) do
			local loop_buf = {}
			local lightline_groups = part[name]

			for _, colors in ipairs(lightline_groups) do
				local fg, bg, style = table.unpack(colors)
				local fg_code, bg_code = colour.hex_to_256(fg), colour.hex_to_256(bg)

				local line
				if style ~= nil then
					line =
						-- let s:p.{mode}.{where} = [ [ {guifg}, {guibg}, {ctermfg}, {ctermbg} ], ... ]
						string.format("['%s', '%s', %d, %d, '%s']", fg, bg, fg_code, bg_code, style)
				else
					line = string.format("['%s', '%s', %d, %d]", fg, bg, fg_code, bg_code)
				end

				table.insert(loop_buf, line)
			end

			local line = table.concat(loop_buf, ", ")
			table.insert(out, string.format("let s:p.%s.%s = [%s]", mode, name, line))
		end
	end

	table.insert(out, "let g:lightline#colorscheme#yui#palette = lightline#colorscheme#fill(s:p)")

	return table.concat(out, "\n")
end

function Lightline:config()
	local fg_shades = self.fg_shades
	local bg_shades = self.bg_shades
	local fg_shades_inactive = self.fg_shades_inactive
	local bg_shades_inactive = self.bg_shades_inactive

	local config = {
		normal = {
			left = {
				{ self.normal.fg, self.normal.bg },
				{ fg_shades[2], bg_shades[2] },
			},
			right = {
				{ fg_shades[3], bg_shades[3] },
				{ fg_shades[3], bg_shades[3] },
				{ fg_shades[2], bg_shades[2] },
			},
			middle = { { fg_shades[1], bg_shades[1] } },
			error = { { self.error.fg, self.error.bg } },
			warning = { { self.warning.fg, self.warning.bg } },
		},
		insert = {
			left = {
				{ self.insert.fg, self.insert.bg },
				{ fg_shades[2], bg_shades[2] },
			},
		},
		visual = {
			left = { { self.visual.fg, self.visual.bg }, { fg_shades[2], bg_shades[2] } },
		},
		replace = {
			left = {
				{ self.replace.fg, self.replace.bg },
				{ fg_shades[2], bg_shades[2] },
			},
		},
		inactive = {
			right = {
				{ fg_shades_inactive[3], bg_shades_inactive[3] },
				{ fg_shades_inactive[3], bg_shades_inactive[3] },
				{ fg_shades_inactive[2], bg_shades_inactive[2] },
			},
			middle = { { fg_shades_inactive[1], bg_shades_inactive[1] } },
		},
		tabline = {
			middle = { { fg_shades[1], bg_shades[1] } },
		},
	}

	config.inactive.left = { table.unpack(config.inactive.right, 2) }
	config.tabline.left = config.inactive.middle
	config.tabline.tabsel = { table.unpack(config.normal.left, 2) }

	return config
end

return Lightline

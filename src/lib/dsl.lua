local color = require "color"
local fold = require("lib/table").fold
local merge = require("lib/table").merge

local M = {}

M.hlgroup_type = "hlgroup"

M.hlgroup = function(t)
	return merge({ __type = M.hlgroup_type }, t)
end

M.flatten_hlgroup = function(_, v)
	return M.render_hlgroup(v)
end

M.render_hlgroup = function(t)
	local name = t.name

	-- special colors that can be used for guifg and guibg
	local special_colors = {
		fg = true,
		bg = true,
		foreground = true,
		background = true,
		NONE = true,
	}

	local buf = {}

	table.insert(buf, "hi " .. name)

	-- Each value in an HLGroup can be either something resolvable
	-- or a final value (mostly strings and numbers, except 'gui', which is a table)
	-- If it's resolvable, we keep resolving until we get a final value

	if t.guifg then
		local v = t.guifg
		if special_colors[v] then
			table.insert(buf, string.format("guifg=%s ctermfg=%s", v, v))
		else
			table.insert(
				buf,
				string.format("guifg=%s ctermfg=%d", v, color.hex_to_256(v))
			)
		end
	end

	if t.guibg then
		local v = t.guibg
		if special_colors[v] then
			table.insert(buf, string.format("guibg=%s ctermbg=%s", v, v))
		else
			table.insert(
				buf,
				string.format("guibg=%s ctermbg=%d", v, color.hex_to_256(v))
			)
		end
	end

	if t.guisp then
		local v = t.guisp
		table.insert(buf, "guisp=" .. v)
	end

	if t.gui then
		local v = t.gui
		if type(v) == "string" then
			v = { v }
		end
		table.insert(buf, "gui=" .. table.concat(v, ","))
		if not t.cterm then
			table.insert(buf, "cterm=" .. table.concat(v, ","))
		end
	end

	if t.cterm then
		local v = t.cterm
		table.insert(buf, "cterm=" .. table.concat(v, ","))
	end

	return table.concat(buf, " ")
end

M.link_type = "link"

M.link = function(from, to)
	return { __type = M.link_type, name = from, to = to }
end

M.render_link = function(t)
	return string.format("hi! link %s %s", t.name, t.to)
end

M.flatten_link = function(t, v)
	assert(t[v.to], "link target does not exist: " .. v.to)
	-- look up the name of the target hlgroup or link
	return M.render_link(merge(v, { to = t[v.to].name }))
end

M.lightline_type = "lightline"

M.lightline = function(colors)
	local fg, bg, gui = table.unpack(colors)
	return { __type = M.lightline_type, fg = fg, bg = bg, gui = gui }
end

M.flatten_lightline = function(_, v)
	local fg, bg, gui = v.fg, v.bg, v.gui
	local ctermfg = fg:sub(1, 1) == "#" and color.hex_to_256(fg) or fg
	local ctermbg = bg:sub(1, 1) == "#" and color.hex_to_256(bg) or bg

	local values = {}
	for _, color_value in ipairs { fg, bg, ctermfg, ctermbg, gui } do
		if not color_value then
			goto continue
		end
		if type(color_value) == "number" then
			table.insert(values, color_value)
		else
			table.insert(values, string.format("'%s'", color_value))
		end
		::continue::
	end

	-- From lightline docs
	-- let s:p.{mode}.{where} = [ [ {guifg}, {guibg}, {ctermfg}, {ctermbg} ], ... ]
	return string.format("[%s]", table.concat(values, ", "))
end

M.get_type = "get"

M.get = function(path)
	return { __type = M.get_type, path = path }
end

M.flatten_get = function(t, v)
	local target = t
	for _, key in ipairs(v.path) do
		target = target[key]
		if not target then
			error(
				"key not found: " .. key .. " in " .. table.concat(v.path, ".")
			)
		end
		if target.__type == M.link_type then -- follow links
			target = t[target.to]
		end
	end
	return target
end

M.contrast_type = "contrast"

M.darker_contrast = function(value, ratio, base)
	base = base or value
	return {
		__type = M.contrast_type,
		ratio = ratio,
		value = value,
		against = base,
		delta = -0.05,
	}
end

M.brighter_contrast = function(value, ratio, base)
	base = base or value
	return {
		__type = M.contrast_type,
		ratio = ratio,
		value = value,
		against = base,
		delta = 0.05,
	}
end

M.flatten_contrast = function(_, v)
	return color.find_color_with_ratio(v.value, v.ratio, v.against, v.delta)
end

M.default_mapping = {
	[M.get_type] = M.flatten_get,
	[M.link_type] = M.flatten_link,
	[M.hlgroup_type] = M.flatten_hlgroup,
	[M.contrast_type] = M.flatten_contrast,
	[M.lightline_type] = M.flatten_lightline,
}

M.flatten = function(t, mapping)
	mapping = mapping
		or {
			[M.get_type] = M.flatten_get,
			[M.link_type] = M.flatten_link,
			[M.hlgroup_type] = M.flatten_hlgroup,
			[M.contrast_type] = M.flatten_contrast,
			[M.lightline_type] = M.flatten_lightline,
		}
	local foldfn
	foldfn = function(node, sub_forest_results)
		if type(node) == "table" and mapping[node.__type] then
			return fold(foldfn, mapping[node.__type](t, sub_forest_results))
		end
		return type(node) == "table" and sub_forest_results or node
	end
	return fold(foldfn, t)
end

return M

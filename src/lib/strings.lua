local M = {}

M.interpolate = function(s, tab)
	local out = s:gsub("($%b{})", function(w)
		local value = tab[w:sub(3, -2)]
		if not value then
			error("interpolate: interpolate key does not exist: " .. w:sub(3, -2))
		end
		return tostring(value)
	end)
	return out
end

M.space_between = function(left, right, max)
	max = max or 78
	assert(#left + #right <= max, "left and right are too long")
	local space = max - #left - #right
	return left .. string.rep(" ", space) .. right
end

M.indent = function(s, prefix)
	prefix = prefix or " "
	local out = {}
	for line in s:gmatch("[^\n]+") do
		table.insert(out, prefix .. line)
	end
	return table.concat(out, "\n")
end

return M
